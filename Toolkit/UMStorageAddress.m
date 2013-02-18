//
// Copyright by Caato, 2/18/13.
//
//


#import "UMStorageAddress.h"


@implementation UMStorageAddress {
@private
    NSString* _urlString;
    NSString* _password;
    NSString* _username;
}
@synthesize urlString = _urlString;
@synthesize password = _password;
@synthesize username = _username;

- (id)initWithUrlString:(NSString*)urlString password:(NSString*)password username:(NSString*)username {
    self = [super init];
    if (self) {
        _urlString = urlString;
        _password = password;
        _username = username;
    }

    return self;
}

+ (id)addressWithUrlString:(NSString*)urlString username:(NSString*)username password:(NSString*)password {
    return [[self alloc] initWithUrlString:urlString password:password username:username];
}


@end