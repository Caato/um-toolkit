//
// Copyright by Caato, 2/18/13.
//
//


#import "UINavigationController+UM.h"


@implementation UINavigationController (UM)


+ (id)doneButtonNavigationControllerWithRootViewController:(UIViewController*) controller {
    return [[self alloc] initDoneButtonNavigationControllerWithRootViewController:controller];
}

- (id)initDoneButtonNavigationControllerWithRootViewController:(UIViewController*) controller {
    if (self = [self init]) {
        [self pushViewController:controller animated:NO];
        controller.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(close)];
    }
    return self;
}

- (void)close {
    [self.presentingViewController dismissModalViewControllerAnimated:YES];
}


@end