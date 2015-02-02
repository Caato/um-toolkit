//
// Copyright by Caato, 2/20/13.
//
//


#import "UIViewController+UM.h"


@implementation UIViewController (UM)

- (UIPopoverController*)showAsPopOverFromPoint:(CGPoint)point inView:(UIView*)view permittedArrowDirections: (UIPopoverArrowDirection)directions {
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    UINavigationController* navController = [[UINavigationController alloc] initWithRootViewController:self];
    UIPopoverController* controller = [[UIPopoverController alloc] initWithContentViewController:navController];
    [controller presentPopoverFromRect:CGRectMake(point.x, point.y, 1, 1) inView:view permittedArrowDirections:directions animated:YES];
    navController.navigationBar.translucent = NO;
    navController.edgesForExtendedLayout = UIRectEdgeNone;
    return controller;
}

@end