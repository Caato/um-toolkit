//
// Copyright by Caato, 2/20/13.
//
//


#import <Foundation/Foundation.h>

@interface UIViewController (UM)
- (UIPopoverController*)showAsPopOverFromPoint:(CGPoint)point inView:(UIView*)view permittedArrowDirections:(UIPopoverArrowDirection)directions;
@end