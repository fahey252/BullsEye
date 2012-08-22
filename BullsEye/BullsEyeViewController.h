//
//  BullsEyeViewController.h
//  BullsEye
//
//  Created by Christopher Fahey on 8/22/12.
//  Copyright (c) 2012 Cardinal Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BullsEyeViewController : UIViewController

@property (nonatomic, strong) IBOutlet UISlider *slider;
@property (nonatomic, strong) IBOutlet UILabel *targetLabel;

- (IBAction)showAlert;
- (IBAction)sliderMoved:(UISlider *)slider; 

@end
