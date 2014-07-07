//
//  MyNotification.m
//  TYAlertTexst
//
//  Created by imht-ios on 14-7-3.
//  Copyright (c) 2014年 ioszyt. All rights reserved.
//

#import "MyNotification.h"
#import "YTAlertView.h"

@interface MyNotification ()

@property (nonatomic, strong) UIView *titleView;
@property (nonatomic, strong) UILabel *titleLable;
@property (nonatomic, strong) YTAlertView *ytAlertView;

@end



@implementation MyNotification

static MyNotification *notifi = nil;

+ (instancetype)shareInstand
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        notifi = [[MyNotification alloc] init];
        
        notifi.titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 70)];
        [notifi.titleView setAlpha:0.8f];
        [notifi.titleView setBackgroundColor:[UIColor blackColor]];
        
        notifi.titleLable = [[UILabel alloc] initWithFrame:CGRectMake(50, 10, 200, 50)];
        [notifi.titleLable setFont:[UIFont systemFontOfSize:30]];
        [notifi.titleLable setTextColor:[UIColor whiteColor]];
        
        [notifi.titleView addSubview:notifi.titleLable];
        
        notifi.ytAlertView = [[YTAlertView alloc] initWithSourceView:notifi.titleView frameOfsView:notifi.titleView.frame];
        [notifi.ytAlertView setAnimationType:animation_fly];
        [notifi.ytAlertView setFlyDirection:fly_top];
        [notifi.ytAlertView hideBottomView:YES];
        
    });
    return notifi;
}


- (void)pushWithTitle:(NSString *)string
{
    [self.titleLable setText:string];
    [notifi.ytAlertView autoHideWithtime:1.0f];

    [self.ytAlertView showWithAnimation:YES];
    
}











@end
