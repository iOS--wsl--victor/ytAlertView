//
//  ImhtMacro.h
//  text
//
//  Created by imht-ios on 14-5-29.
//  Copyright (c) 2014年 ymht. All rights reserved.
//

#ifndef text_ImhtMacro_h
#define text_ImhtMacro_h





    //类目
    #import "UIView+DrawLine.h"




    //屏幕宽度 （区别于viewcontroller.view.fream）
    #define WIN_WIDTH  [UIScreen mainScreen].bounds.size.width
    //屏幕高度 （区别于viewcontroller.view.fream）
    #define WIN_HEIGHT [UIScreen mainScreen].bounds.size.height



    //IOS版本
    #define IOS_SysVersion [[UIDevice currentDevice] systemVersion].floatValue

    //颜色宏。使用16进制
    #define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

    //block 宏
    typedef void(^VoidBlock)();
    typedef BOOL(^BoolBlock)();
    typedef int (^IntBlock) ();
    typedef id  (^IDBlock)  ();

    typedef void(^VoidBlock_int)(int);
    typedef BOOL(^BoolBlock_int)(int);
    typedef int (^IntBlock_int) (int);
    typedef id  (^IDBlock_int)  (int);

    typedef void(^VoidBlock_string)(NSString*);
    typedef BOOL(^BoolBlock_string)(NSString*);
    typedef int (^IntBlock_string) (NSString*);
    typedef id  (^IDBlock_string)  (NSString*);

    typedef void(^VoidBlock_id)(id);
    typedef BOOL(^BoolBlock_id)(id);
    typedef int (^IntBlock_id) (id);
    typedef id  (^IDBlock_id)  (id);

#endif
