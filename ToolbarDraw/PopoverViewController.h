//
//  PopoverViewController.h
//  ToolbarDraw
//
//  Created by Andrew Stinnett on 2/9/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PopoverViewController;

@protocol myPopControllerDelegate<NSObject>

- (void)dismissController:(PopoverViewController *)controller;

@end

@interface PopoverViewController : UIViewController
{
    
}
@property (nonatomic, weak) id <myPopControllerDelegate> delegate;

@end
