#import "NSObject+UM.h"


@implementation NSObject (UM)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)seconds {
    dispatch_time_t dispatchDelay = dispatch_time(DISPATCH_TIME_NOW, (int64_t) (seconds * NSEC_PER_SEC));
    dispatch_after(dispatchDelay, dispatch_get_main_queue(), block);
}

@end
