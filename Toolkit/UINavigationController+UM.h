//
// Copyright by Caato, 2/18/13.
//
//


#import <Foundation/Foundation.h>

@interface UINavigationController (UM)
+ (id)doneButtonNavigationControllerWithRootViewController:(UIViewController*)controller;

- (id)initDoneButtonNavigationControllerWithRootViewController:(UIViewController*)controller;

- (id)initDoneButtonNavigationControllerWithRootViewController:(UIViewController*)controller target:(id)target selector:(SEL)selector;
@end