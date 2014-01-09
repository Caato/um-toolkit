//
// Created by Caato on 8/13/12.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>

@class PageView;

@interface UIView (UM)

- (void)removeAllSubviews;

- (NSArray*)viewsWithTag:(NSUInteger)tag;


- (CGFloat)frameX;

- (CGFloat)frameY;

- (CGSize)frameSize;

- (CGFloat)frameHeight;

- (CGFloat)frameWidth;

- (void)setFrameX:(CGFloat)x;

- (void)setFrameY:(CGFloat)y;

- (void)setFrameWidth:(CGFloat)width;

- (void)setFrameHeight:(CGFloat)height;

- (void)setFrameSize:(CGSize)size;

- (void)setFrameOrigin:(CGPoint)p;

- (void)setCenterX:(CGFloat)x;

- (void)setCenterY:(CGFloat)y;

- (void)fadeIn;

- (void)fadeOut;

- (void)fadeInWithDuration:(CGFloat)duration toAlpha:(CGFloat)toAlpha;

- (void)fadeOutWithDuration:(CGFloat)duration toAlpha:(CGFloat)toAlpha;

- (void)fadeInToAlpha:(CGFloat)alpha;

- (void)fadeOutToAlpha:(CGFloat)alpha;

- (void)fadeInWithDuration:(CGFloat)duration;

- (void)fadeOutWithDuration:(CGFloat)duration;

- (void)centerInFrame:(CGRect)frame;

- (void)show;

- (void)hide;

- (void)moveUp:(CGFloat)i;

- (void)moveLeft:(CGFloat)left;

- (void)moveRight:(CGFloat)right;

- (void)moveDown:(CGFloat)down;

- (void)increaseWidth:(CGFloat)adjustment;

- (void)increaseHeight:(CGFloat)adjustment;

@end