//
// Copyright by Caato, 2/14/13.
//
//


#import "UITableView+UM.h"


@implementation UITableView (UM)

- (void) deselectRowLaterAtIndexPath:(NSIndexPath*) indexPath {
    [self performSelector:@selector(deselectIndexPath:) withObject:indexPath afterDelay:0.25];
}

- (void) deselectIndexPath: (NSIndexPath*) path {
    [self deselectRowAtIndexPath:path animated:YES];
}

@end