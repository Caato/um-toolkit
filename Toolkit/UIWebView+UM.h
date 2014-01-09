//
// Copyright by Caato, 2/6/13.
//
//


#import <Foundation/Foundation.h>

@interface UIWebView (UM)
-(NSURLRequest *)loadRequestWithRelativeFileURLString:(NSString *)urlString;

- (NSURLRequest*)loadRequestWithAbsoluteURLString:(NSString*)urlString;


- (NSURLRequest*)loadRequestWithAbsoluteFileURLString:(NSString*)urlString;
@end