#import "NSObject+UM.h"


@implementation NSObject (UM)

- (void)performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)seconds {
    dispatch_time_t dispatchDelay = dispatch_time(DISPATCH_TIME_NOW, (int64_t) (seconds * NSEC_PER_SEC));
    dispatch_after(dispatchDelay, dispatch_get_main_queue(), block);
}

//- (void) performSelector: (SEL) sel WithBOOL: (BOOL) b {
//    NSInvocation *inv = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:sel]];
//    [inv setSelector:sel];
//    [inv setTarget:self];
//    [inv setArgument:&b atIndex:2]; //arguments 0 and 1 are self and _cmd respectively, automatically set by NSInvocation
//    [inv invoke];
//}

@end
