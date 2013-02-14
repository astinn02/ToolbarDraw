//
//  TTVViewController.h
//  TestTableView
//
//  Created by Andrew Stinnett on 2/12/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TTVViewController;

@protocol myTTVViewControllerDelegate<NSObject>

//- (void)dismissController:(TTVViewController *)controller;
- (void)dismissController;

@end

@interface TTVViewController : UIViewController{
    NSMutableArray *listOfItems;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;

@property (nonatomic, weak) id <myTTVViewControllerDelegate> delegate;

@end


