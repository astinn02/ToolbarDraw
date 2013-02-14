//
//  PopoverViewController.m
//  ToolbarDraw
//
//  Created by Andrew Stinnett on 2/9/13.
//  Copyright (c) 2013 Andrew Stinnett. All rights reserved.
//

#import "PopoverViewController.h"

@interface PopoverViewController ()


@end



@implementation PopoverViewController

@synthesize thePickerView;
@synthesize selectedMER;
@synthesize selectedFiscalYear;
@synthesize oneColumnList;
@synthesize secondColumnList;

- (void) awakeFromNib{
    //One column array example
    self.secondColumnList=[[NSArray alloc] initWithObjects:@"MCTSP", @"STSP",@"SRP",@"CTC", nil];
    
    //Two column array example
    self.oneColumnList=[[NSArray alloc] initWithObjects:@"2010",@"2011",@"2012",@"2013",@"2014",@"2015",@"2016",@"2017", nil];
    
}
//set text after making a picker selection
- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component == 0) {
        self.selectedFiscalYear.text=[oneColumnList objectAtIndex:row];
        return;
    }
    
    self.selectedMER.text=[secondColumnList objectAtIndex:row];
}


- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    //For one component (column)
    //return [oneColumnList objectAtIndex:row];
    
    //For mutiple columns
    if (component == 0) {
        return [oneColumnList objectAtIndex:row];
        
    }
    
    return [secondColumnList objectAtIndex:row];
    
}

//sets number of columns in picker
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2; // or 2 or more
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return [oneColumnList count];
    }
    
    return [secondColumnList count];
}

- (void)viewDidLoad
{
    thePickerView.showsSelectionIndicator = TRUE;
    self.thePickerView.delegate = self;
    self.thePickerView.dataSource = self;
    

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setThePickerView:nil];
    [self setSelectedMER:nil];
    [self setSelectedFiscalYear:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)pressedDoneButton:(id)sender {
    //[self.delegate popoverControllerShouldDismissPopover:self];
    [self.delegate dismissController:self];
}



- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



@end
