//
// Copyright by Caato, 2/6/13.
//
//


#import "UMTextField.h"
#import <QuartzCore/QuartzCore.h>

@implementation UMTextField {

@private
    int _marginWidth;
    int _marginHeight;
    int _yOffset;
    int _additionalWidth;
}
@synthesize marginWidth = _marginWidth;
@synthesize marginHeight = _marginHeight;
@synthesize yOffset = _yOffset;
@synthesize additionalWidth = _additionalWidth;


- (id)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self.layer setBorderColor:[[[UIColor grayColor] colorWithAlphaComponent:0.5] CGColor]];
        [self.layer setBorderWidth:1.0];
        self.layer.cornerRadius = 5;
        self.clipsToBounds = YES;
        self.marginWidth = 8;
        self.marginHeight = 4;  // 8

        // a bit of magic to get the padding right with default font
        self.yOffset = 2;
        self.additionalWidth = 4;
    }
    return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectMake(bounds.origin.x + self.marginWidth, bounds.origin.y + self.marginHeight + self.yOffset,
            bounds.size.width - 2 * self.marginWidth + self.additionalWidth, bounds.size.height - 2 * self.marginHeight);
}
- (CGRect)editingRectForBounds:(CGRect)bounds {
    return [self textRectForBounds:bounds];
}

@end