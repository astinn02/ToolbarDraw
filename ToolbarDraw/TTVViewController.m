//
//  TTVViewController.m
//  TestTableView
//
//  Created by Andrew Stinnett on 2/12/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import "TTVViewController.h"

@interface TTVViewController ()



@end

@implementation TTVViewController

- (IBAction)pressedDoneButton:(id)sender {
    //[self.delegate dismissController:self];
    [self.delegate dismissController];
}

//RootViewController.m
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    
    // Set up the cell...
    NSString *cellValue = [listOfItems objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    return cell;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    listOfItems = [[NSMutableArray alloc] init];
    
    //Add items
    [listOfItems addObject:@"Iceland"];
    [listOfItems addObject:@"Greenland"];
    [listOfItems addObject:@"Switzerland"];
    [listOfItems addObject:@"Norway"];
    [listOfItems addObject:@"New Zealand"];
    [listOfItems addObject:@"Greece"];
    [listOfItems addObject:@"Rome"];
    [listOfItems addObject:@"Ireland"];
    
    //Set the title
    //self.toolBar.topItem.title = @"Countries";
    self.tableView.dataSource = (id)self;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [listOfItems count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTableView:nil];
    [self setToolBar:nil];
    [super viewDidUnload];
}
@end
