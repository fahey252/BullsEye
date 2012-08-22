//
//  BullsEyeViewController.m
//  BullsEye
//
//  Created by Christopher Fahey on 8/22/12.
//  Copyright (c) 2012 Cardinal Solutions. All rights reserved.
//

#import "BullsEyeViewController.h"

@interface BullsEyeViewController ()

@end

@implementation BullsEyeViewController{
    int currentValue;
    int targetValue;
}

@synthesize slider;
@synthesize targetLabel;

- (void) updateLabels
{
    self.targetLabel.text = [NSString stringWithFormat:@"%d", targetValue];
}

- (void)startNewRound
{
    targetValue = 1 + (arc4random() % 100);
    currentValue = 50;
    self.slider.value = currentValue;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    [self startNewRound];
    [self updateLabels];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.slider = nil;
    self.targetLabel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsLandscape(interfaceOrientation);
}

- (IBAction)showAlert
{
    NSString *message = [NSString stringWithFormat:@"The value of the slider is: %d\nThe target value is : %d", currentValue, targetValue];
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Slider Value"
                              message:message
                              delegate:nil
                              cancelButtonTitle:@"Awesome"
                              otherButtonTitles:nil];
    [alertView show];
    
    [self startNewRound];
    [self updateLabels];
}

- (IBAction)sliderMoved:(UISlider *)sender {
    currentValue = lroundf(sender.value);
    NSLog(@"The value of the slider is now: %d", currentValue);
}

@end
