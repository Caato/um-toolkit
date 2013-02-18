//
// Copyright by Caato, 2/18/13.
//
//


#import <Foundation/Foundation.h>


@interface UMStorageAddress : NSObject


@property(nonatomic, copy) NSString* username;
@property(nonatomic, copy) NSString* password;
@property(nonatomic, copy) NSString* urlString;

- (id)initWithUrlString:(NSString*)urlString password:(NSString*)password username:(NSString*)username;

+ (id)addressWithUrlString:(NSString*)urlString username:(NSString*)username password:(NSString*)password;


@end