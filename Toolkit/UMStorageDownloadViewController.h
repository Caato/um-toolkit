//
// Copyright by Caato, 2/18/13.
//
//


#import <Foundation/Foundation.h>


@interface UMStorageDownloadViewController : UIViewController

@property(nonatomic, strong) NSArray* addresses;

- (id)initWithAddresses:(NSArray*)addresses;

+ (id)controllerWithAddresses:(NSArray*)addresses;

@end