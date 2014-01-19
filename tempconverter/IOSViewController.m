//
//  IOSViewController.m
//  tempconverter
//
//  Created by Utkarsh Sengar on 1/18/14.
//  Copyright (c) 2014 area42. All rights reserved.
//

#import "IOSViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface IOSViewController ()
- (NSInteger) celsiusToFahrenheit:(NSInteger)celsius;
- (NSInteger) fahrenheitToCelsius:(NSInteger)fahrenheit;
@end

@implementation IOSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"TempCon";
        self.convert.layer.cornerRadius = 100;
        self.convert.clipsToBounds = YES;
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.title = @"TempCon";
        self.convert.layer.cornerRadius = 100;
        self.convert.clipsToBounds = YES;
    }
    return self;
}

- (IBAction)onTapConvert:(id)sender {
    [self.view endEditing:YES];
    
    if([self.fValue.text length] > 0){
        self.fValue.text = self.fValue.text;
        self.cValue.text = [NSString stringWithFormat: @"%d", [self fahrenheitToCelsius:[self.fValue.text doubleValue]]];
    } else if([self.cValue.text length] > 0) {
        self.cValue.text = self.cValue.text;
        self.fValue.text = [NSString stringWithFormat: @"%d", [self celsiusToFahrenheit:[self.cValue.text doubleValue]]];
    }
}

- (IBAction)onTapEdit:(id)sender{
    self.fValue.text = @"";
    self.cValue.text = @"";
}

- (NSInteger) fahrenheitToCelsius:(NSInteger)fahrenheit{
    int x = (5/9.0f) * (fahrenheit-32);
    return x;
}

- (NSInteger) celsiusToFahrenheit:(NSInteger)celsius{
    return (celsius * 9/5) + 32;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



@end
