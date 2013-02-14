//
//  TBDViewController.h
//  ToolbarDraw
//
//  Created by Andrew Stinnett on 2/9/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopoverViewController.h"
#import "TTVViewController.h"

@interface TBDViewController : UIViewController <UIPopoverControllerDelegate,myPopControllerDelegate,myTTVViewControllerDelegate>

//Apple provided delegate methods for PopoverController
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation;
- (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController;
- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController;

//custom delegate method to dismiss the PopoverController
//- (void)dismissController:(PopoverViewController *)controller;
- (void)dismissController;

//emulate a navigationBar title on a toolBar
@property (weak, nonatomic) IBOutlet UIToolbar *labelToolbar;
@property (weak, nonatomic) IBOutlet UILabel *mainTitle;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *popoverButton;



@end
