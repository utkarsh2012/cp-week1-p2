//
//  IOSViewController.h
//  tempconverter
//
//  Created by Utkarsh Sengar on 1/18/14.
//  Copyright (c) 2014 area42. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IOSViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITextField *fValue;
@property (nonatomic, strong) IBOutlet UITextField *cValue;
@property (nonatomic, strong) IBOutlet UIButton *convert;
- (IBAction)onTapConvert:(id)sender;
- (IBAction)onTapEdit:(id)sender;

@end
