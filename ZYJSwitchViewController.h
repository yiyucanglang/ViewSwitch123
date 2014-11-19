//
//  ZYJSwitchViewController.h
//  ViewSwitch
//
//  Created by 周义进 on 14-8-16.
//  Copyright (c) 2014年 苏州达芯微. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYJBlueViewController;
@class ZYJYellowViewController;
@interface ZYJSwitchViewController : UIViewController
@property (strong,nonatomic) ZYJYellowViewController *yellowViewController;
@property (strong,nonatomic) ZYJBlueViewController *blueViewConreoller;
- (IBAction)switchViews:(id)sender;
@end
