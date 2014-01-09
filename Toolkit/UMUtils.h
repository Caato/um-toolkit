//
// Copyright by Caato, 11/5/12.
//
//


#import <Foundation/Foundation.h>


@interface UMUtils : NSObject


+ (NSTimer*)scheduleHighPriorityTimerWithTimeInterval:(NSTimeInterval)delay target:(id)target selector:(SEL)selector repeats:(BOOL)repeats;

+ (NSString*)currentYearString;

+ (NSString*)currentWeekdayString;

+ (NSString*)currentTimeString;

+ (NSString*)stringForDate:(NSDate*)date;

+ (UIImageView*)cachedAutosizedImageViewWithPath:(NSString*)imgPath;

+ (UIImageView*)nonCachedAutosizedImageViewWithPath:(NSString*)imgPath;

+ (UIImageView*)nonCachedAutosizedImageViewWithAbsolutePath:(NSString*)imgPath;


+ (UIImageView*)autosizedImageViewWithImage:(UIImage*)img;

+ (UIButton*)customAutosizedButtonWithImagePath:(NSString*)imgPath;

+ (UIButton*)nonCachedCustomAutosizedButtonWithAbsoluteImagePath:(NSString*)imgPath;


+ (UIButton*)nonCachedCustomAutosizedButtonWithImagePath:(NSString*)imgPath;


+ (UIButton*)customAutosizedButtonWithImagePath:(NSString*)imgPath highlightedImagePath:(NSString*)highlightedImagePath;

+ (UILabel*)autosizedBlackLabelWithText:(NSString*)text size:(int)size isBold:(BOOL)isBold;

+ (UILabel*) autosizedWhiteLabelWithText: (NSString*) text size:(int) size isBold:(BOOL) isBold;

+ (NSError*)removeFileIfExisting:(NSString*)path;

+ (NSError*)createFolderIfNotExisting:(NSString*)path;

+ (BOOL) isFolder: (NSString*) path;

+ (void)copyFileFrom:(NSString*)srcPath to:(NSString*)dstPath;

+ (NSArray*)contentFileNamesOfDirectory:(NSString*)directory;


+ (BOOL)isFileExisting:(NSString*)path;

+ (NSString*)cachesDirectory;

+ (NSString*)documentsDirectory;

+ (UIColor*)randomBrightColor;

+ (UIImage*)nonCachedImageWithAbsolutePath:(NSString*)path;


+ (UIAlertView*)showAlertWithTitle:(NSString*)atitle msg:(NSString*)msg;

+ (UIImage*)nonCachedImageWithPath:(NSString*)string;

+ (NSString*)iphone5CompatiblePath:(NSString*)string;

+ (NSString*)makeBundlePath:(NSString*)string;

+ (void)savePreferenceKey:(NSString*)string withFloat:(float) f;

+ (float) loadPreferenceFloatWithKey: (NSString*) key;

+ (UIActivityIndicatorView*)grayRunningActivityIndicator;

+ (UIActivityIndicatorView*)whiteRunningActivityIndicator;

+ (UIWindow*)applicationWindow;

+ (CGRect)applicationFrame;

+ (void)openURL:(NSURL*)url;

+ (void)openURLWithString:(NSString*)urlString;

+ (UIView*)addHalfTranslucentBlackViewToView:(UIView*)view;
@end