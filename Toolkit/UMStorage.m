//
// Copyright by Caato, 2/15/13.
//
//


#import "UMStorage.h"
#import "ASIHTTPRequest.h"
#import "UMUtils.h"
#import "SSZipArchive.h"
#import "UMStorageAddress.h"


@implementation UMStorage {

}

+ (UMStorage*)instance {
    static UMStorage* _instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }
    return _instance;
}

- (id)init {
    self = [super init];
    if (self) {
        self.tmpPath = [[UMUtils cachesDirectory] stringByAppendingPathComponent:@"tmp.zip"];
    }
    return self;
}

- (NSError*)synchronouslyDownloadFromStorageAddress:(UMStorageAddress*)storageAddress progressDelegate:(UIProgressView*)delegate {

    NSURL* url = [NSURL URLWithString:storageAddress.urlString];
    ASIHTTPRequest* request = [ASIHTTPRequest requestWithURL:url];

    [request setDownloadDestinationPath:self.tmpPath];
    [request setDownloadProgressDelegate:delegate];

    if (storageAddress.username != nil && storageAddress.password != nil) {
        [request addBasicAuthenticationHeaderWithUsername:storageAddress.username andPassword:storageAddress.password];
    }

    [request startSynchronous];
    NSError *error = [request error];

    if (!error) {
        return [self unzipToCache];
    }
    else return error;
}

- (NSError*)unzipToCache {
    NSError* unzipError = nil;
    NSString* unzipPath = [UMUtils documentsDirectory];
    [SSZipArchive unzipFileAtPath:self.tmpPath toDestination:unzipPath overwrite:YES password:nil error:&unzipError];
    return unzipError;
}

- (NSString*)selectPath: (NSString*) path {
    NSString* documentsPath = [[UMUtils documentsDirectory] stringByAppendingPathComponent:path];

    if ([UMUtils isFileExisting:documentsPath]) {
        NSLog(@"using documents path");
        path = documentsPath;
    }
    else {
        NSLog(@"falling back to app path");
        path =  [UMUtils makeBundlePath:path];
    }
    // NSLog(@"%@", path);
    return path;
}


@end