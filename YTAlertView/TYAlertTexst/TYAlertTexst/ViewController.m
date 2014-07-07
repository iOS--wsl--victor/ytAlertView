//
//  ViewController.m
//  TYAlertTexst
//
//  Created by imht-ios on 14-7-3.
//  Copyright (c) 2014年 ioszyt. All rights reserved.
//

#import "ViewController.h"
#import "MyNotification.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    [[MyNotification shareInstand] pushWithTitle:@"这是一条通知"];
}

@end
