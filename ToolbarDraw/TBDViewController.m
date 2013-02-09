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

@synthesize valueXLabel;
@synthesize labelToolbar;
@synthesize mainTitle;
@synthesize labelToolBarWidth;
@synthesize labelmainWidth;

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
    
//    self.valueXLabel.text = [NSString stringWithFormat: @"%.2f", self.mainTitle.frame.origin.x];
//    self.valueYLabel.text = [NSString stringWithFormat: @"%.2f", self.mainTitle.bounds.origin.x];
//    
//    self.labelToolBarWidth.text = [NSString stringWithFormat: @"%.2f", self.labelToolbar.frame.size.width];
//    self.labelmainWidth.text = [NSString stringWithFormat: @"%.2f",self.mainTitle.frame.size.width];   
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showCoolPopover"]){
        myPopover = [(UIStoryboardPopoverSegue *)segue popoverController];
        myPopover.popoverContentSize = CGSizeMake(280,450); 
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
    [self setFrameXLabel:nil];
    [self setFrameYLabel:nil];
    [self setValueXLabel:nil];
    [self setValueYLabel:nil];
    [self setLabelToolBarWidth:nil];
    [self setLabelmainWidth:nil];
    [self setPopoverButton:nil];
    [self setPopoverButton:nil];
    [super viewDidUnload];
}
@end
