//
//  ZYJSwitchViewController.m
//  ViewSwitch
//
//  Created by 周义进 on 14-8-16.
//  Copyright (c) 2014年 苏州达芯微. All rights reserved.
//

#import "ZYJSwitchViewController.h"
#import "ZYJBlueViewController.h"
#import "ZYJYellowViewController.h"
@interface ZYJSwitchViewController ()

@end

@implementation ZYJSwitchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.blueViewConreoller = [[ZYJBlueViewController alloc] initWithNibName:@"ZYJBlueViewController" bundle:nil];
    [self.view insertSubview:self.blueViewConreoller.view atIndex:0];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    if (self.blueViewConreoller.view.superview == nil) {
        self.blueViewConreoller = nil;
    } else {
        self.yellowViewController = nil;
    }
    // Dispose of any resources that can be recreated.
}
- (IBAction)switchViews:(id)sender
{
    [UIView beginAnimations:@"View Trip" context:NULL];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController == nil) {
            self.yellowViewController = [[ZYJYellowViewController alloc] initWithNibName:@"ZYJYellowViewController" bundle:nil];
        }
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
        
        [self.blueViewConreoller.view removeFromSuperview];
        [self.view insertSubview:self.yellowViewController.view atIndex:0];
    } else {
        if (self.blueViewConreoller == nil) {
            self.blueViewConreoller = [[ZYJBlueViewController alloc] initWithNibName:@"ZYJBlueViewController" bundle:nil];
        }
        [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];

        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview:self.blueViewConreoller.view atIndex:0];
    }
    [UIView commitAnimations];
}
@end
