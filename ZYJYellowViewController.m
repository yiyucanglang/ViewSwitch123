//
//  ZYJYellowViewController.m
//  ViewSwitch
//
//  Created by 周义进 on 14-8-16.
//  Copyright (c) 2014年 苏州达芯微. All rights reserved.
//

#import "ZYJYellowViewController.h"

@interface ZYJYellowViewController ()

@end

@implementation ZYJYellowViewController

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
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*- (IBAction)yellowPressedButton {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"yellow button pressed" message:@"you pressed the button on the yellw view" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}*/
- (IBAction)yellowButtonPressed:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"yellow button pressed" message:@"you pressed the button on the yellw view" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}
@end
