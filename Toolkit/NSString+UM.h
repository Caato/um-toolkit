//
// Created by Caato on 8/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@interface NSString (UM)

+(NSString *)stringWithData:(NSData *)data encoding:(NSStringEncoding)encoding;

- (NSString *)trimmedVersion;

- (BOOL)isEqualToStringIgnoreCase:(NSString *)other;

- (Boolean)isEmpty;


@end