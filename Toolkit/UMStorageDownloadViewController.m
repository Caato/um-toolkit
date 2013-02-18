//
// Copyright by Caato, 2/18/13.
//
//


#import <CoreGraphics/CoreGraphics.h>
#import "UMStorageDownloadViewController.h"
#import "UMStorageAddress.h"
#import "UMUtils.h"
#import "UIView+UM.h"
#import "UMStorage.h"
#import "NSObject+UM.h"


@implementation UMStorageDownloadViewController {

}

- (id)initWithAddresses:(NSArray*)addresses {
    self = [super init];
    if (self) {
        _addresses = addresses;
        self.title = @"Content Download";
    }

    return self;
}

+ (id)controllerWithAddresses:(NSArray*)addresses {
    return [[self alloc] initWithAddresses:addresses];
}


- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    int y = 10;
    int x = 10;
    int i = 0;
    for (UMStorageAddress* address in self.addresses) {

        UILabel* label = [UMUtils autosizedBlackLabelWithText:address.urlString size:12 isBold:YES];
        [label setFrameOrigin:CGPointMake(x, y)];
        [self.view addSubview:label];
        y += 12 + 10;

        UIButton* dldButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        dldButton.frame = CGRectMake(x, y, 100, 40);
        dldButton.tag = i;
        [dldButton setTitle:@"Download" forState:UIControlStateNormal];
        [dldButton addTarget:self action:@selector(download:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:label];
        [self.view addSubview:dldButton];
        i++;
        y += 40 + 40;
    }
}

- (void)download: (UIButton*) sender {
    UMStorageAddress* address = [self.addresses objectAtIndex:(NSUInteger) sender.tag];
    UIProgressView* progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    [self.view addSubview:progressView];
    [progressView setProgressViewStyle:UIProgressViewStyleBar];
    [progressView setTrackTintColor:[UIColor darkGrayColor]];
    [progressView setFrameOrigin:sender.frame.origin];
    [self.view addSubview:progressView];
    sender.hidden = YES;
    [self performSelector:@selector(startDownload) withObject:nil afterDelay:0.25];
    self.navigationItem.rightBarButtonItem.enabled = NO;

    [NSObject performBlock:^{
        NSError* error = [[UMStorage instance] synchronouslyDownloadFromStorageAddress:address progressDelegate:progressView];
        if (error != nil) {
            [UMUtils showAlertWithTitle:error.description msg:nil];
        }
        else {
            // let delegate know?!
            [progressView removeFromSuperview];
            [sender setHidden:NO];
        }
        self.navigationItem.rightBarButtonItem.enabled = YES;
    } afterDelay:0.125];
}

- (void)startDownload {

}


@end