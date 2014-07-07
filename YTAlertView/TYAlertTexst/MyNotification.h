//
//  MyNotification.h
//  TYAlertTexst
//
//  Created by imht-ios on 14-7-3.
//  Copyright (c) 2014年 ioszyt. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyNotification : NSObject

+ (instancetype)shareInstand;

- (void)pushWithTitle:(NSString *)string;

@end
