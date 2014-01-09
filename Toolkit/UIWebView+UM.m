//
// Copyright by Caato, 2/6/13.
//
//


#import "UIWebView+UM.h"


@implementation UIWebView (UM)


- (NSURLRequest*)loadRequestWithRelativeFileURLString: (NSString*) urlString {
    NSString* path = [[NSBundle mainBundle] pathForResource:urlString ofType:nil];
    NSURL* url = [NSURL fileURLWithPath:path];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self loadRequest:request];
    return request;
}

- (NSURLRequest*)loadRequestWithAbsoluteURLString: (NSString*) urlString {
    NSURL* url = [NSURL URLWithString:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self loadRequest:request];
    return request;
}

- (NSURLRequest*)loadRequestWithAbsoluteFileURLString: (NSString*) urlString {
    NSURL* url = [NSURL fileURLWithPath:urlString];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    [self loadRequest:request];
    return request;
}

@end