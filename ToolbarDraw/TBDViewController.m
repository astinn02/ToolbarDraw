//
//  TBDViewController.m
//  ToolbarDraw
//
//  Created by Andrew Stinnett on 2/9/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import "TBDViewController.h"

@interface TBDViewController ()

@end

@implementation TBDViewController

__weak UIPopoverController *myPopover;

@synthesize labelToolbar;
@synthesize mainTitle;

- (IBAction)pressedPopoverButton:(UIBarButtonItem *)sender {
    if(myPopover) 
        [myPopover dismissPopoverAnimated:YES];
    else 
        [self performSegueWithIdentifier:@"showCoolPopover" sender:sender];
    
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation;
{
    if ((fromInterfaceOrientation == UIInterfaceOrientationPortrait)||(fromInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)){
        
    } else {
        
    }
    
    CGRect rect = self.mainTitle.frame;
    rect.origin = CGPointMake(((self.labelToolbar.frame.size.width/2.0)-(self.mainTitle.frame.size.width/2.0)), rect.origin.y);
    self.mainTitle.frame = rect;
 
}

- (void)dismissController:(PopoverViewController *)controller{
    //custom delegate method 
    [myPopover dismissPopoverAnimated:YES];
}

- (void)popoverControllerDidDismissPopover:(UIPopoverController *)popoverController{
    
}

- (BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController{
    //fires before DidDismissPopover
    return YES;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showCoolPopover"]){
        myPopover = [(UIStoryboardPopoverSegue *)segue popoverController];
        myPopover.popoverContentSize = CGSizeMake(280,450);
        
        PopoverViewController *PVC = segue.destinationViewController;
        PVC.delegate = self;
    }
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setLabelToolbar:nil];
    [self setMainTitle:nil];
    [self setPopoverButton:nil];
    [self setPopoverButton:nil];
    [super viewDidUnload];
}
@end
