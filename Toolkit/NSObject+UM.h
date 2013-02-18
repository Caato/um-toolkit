
#import <Foundation/Foundation.h>

@interface NSObject (UM)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)seconds;

@end

