//
//  TBDViewController.h
//  ToolbarDraw
//
//  Created by Andrew Stinnett on 2/9/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBDViewController : UIViewController

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation;

@property (weak, nonatomic) IBOutlet UIToolbar *labelToolbar;

@property (weak, nonatomic) IBOutlet UILabel *mainTitle;
@property (weak, nonatomic) IBOutlet UILabel *frameXLabel;
@property (weak, nonatomic) IBOutlet UILabel *frameYLabel;

@property (weak, nonatomic) IBOutlet UILabel *valueXLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueYLabel;

@property (weak, nonatomic) IBOutlet UILabel *labelToolBarWidth;

@property (weak, nonatomic) IBOutlet UILabel *labelmainWidth;



@property (weak, nonatomic) IBOutlet UIBarButtonItem *popoverButton;


@end
