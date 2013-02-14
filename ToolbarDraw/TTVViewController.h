//
//  TTVViewController.h
//  TestTableView
//
//  Created by Andrew Stinnett on 2/12/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTVViewController : UIViewController{
    NSMutableArray *listOfItems;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIToolbar *toolBar;


@end


