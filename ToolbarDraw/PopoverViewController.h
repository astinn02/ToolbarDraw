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

@interface PopoverViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
{
    
}

//having a pickerview means having to set two delegates: one for the pickerView and one for the dataSource
@property (weak, nonatomic) IBOutlet UIPickerView *thePickerView;
@property (weak, nonatomic) IBOutlet UITextField *selectedMER;
@property (weak, nonatomic) IBOutlet UITextField *selectedFiscalYear;

//property array for one column UIPickerView Example
@property (strong, nonatomic) NSArray *oneColumnList;

//property array for a two column UIpickerCiew Example
@property (strong, nonatomic) NSArray *secondColumnList;

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component;




@property (nonatomic, weak) id <myPopControllerDelegate> delegate;

@end
