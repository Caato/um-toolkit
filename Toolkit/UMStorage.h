//
// Copyright by Caato, 2/15/13.
//
//


#import <Foundation/Foundation.h>

@class UMStorageAddress;


@interface UMStorage : NSObject

@property(nonatomic, copy) NSString* tmpPath;

+ (UMStorage*)instance;

- (NSError*)synchronouslyDownloadFromStorageAddress:(UMStorageAddress*)storageAddress progressDelegate:(UIProgressView*)delegate;

- (NSString*)selectPath:(NSString*)path;
@end