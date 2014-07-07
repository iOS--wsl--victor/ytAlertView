//
//  UIView+DreawLine.h
//  text
//
//  Created by imht-ios on 14-5-20.
//  Copyright (c) 2014年 ymht. All rights reserved.
//

/*
 使用说明：
        直接用 View 调用即可。
 */


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>



@interface UIView (DrawLine)

/**
 *  简单的 View 四周画线，仅作测试使用
 */
- (void)drawLine;

- (void)drawLineWidth:(CGFloat)width andColor:(UIColor*)color;

- (void)drawRoundBoderWidth:(CGFloat)width andColor:(UIColor*)color;


/**
 *  给View增加边框
 *  @param  radius 变的角度
 *  @param  width  线条宽度
 *  @param  color  线条颜色
 */
- (void)drawRoundBoderWidth:(CGFloat)width andColor:(UIColor *)color andRadius:(CGFloat)radius;


/**
 *  在View上画一条直线
 *  @param  spoint 起点坐标
 *  @param  epoint 终点坐标
 *  @param  width  线条宽度
 *  @param  color  线条颜色
 */
- (void)drawLineWidth:(CGFloat)width
                color:(UIColor *)color
           startPoint:(CGPoint )spoint
             endPoint:(CGPoint)epoint;

/**
 *  在view上画一条虚线
 *  @param width    线条宽度
 *  @param color    线条颜色
 *  @param spoint   起点坐标
 *  @param epoint   终点坐标
 */
- (void)drawDashedLineWidth:(CGFloat)width
                      color:(UIColor *)color
                 startPoint:(CGPoint )spoint
                   endPoint:(CGPoint)epointc;


/**
 *  把View转化为图片
 */
-(UIImage *)getImageFromView;

/////----------------fream

/**
 * 获得当前视图的结束点坐标 值为 frame 的 y + height
 */
- (CGFloat)endY;

/**
 * 获得当前视图的结束点坐标 值为 frame 的 x + width
 */
- (CGFloat)endX;

/**
 * 获得当前视图的X坐标体系
 */
- (CGFloat)startX;

/**
 * 获得当前视图的Y坐标体系
 */
- (CGFloat)startY;

/**
 * 获得当前视图的高度
 */
- (CGFloat)boundsH;

/**
 * 获得当前视图的宽度
 */
- (CGFloat)boundsW;


#pragma mark 叠加操作

/**
 *    设置View的位置
 *    @param position 设置view的位置
 *    @param x X坐标
 *    @param y Y坐标
 */
- (void)setFrameX:(float)x;
- (void)setFrameY:(float)y;
- (void)setFrameX:(float)x andFrameY:(float)y;

/**
 *  删除当前视图的所有子视图
 */
- (void)removeSubviews;


@end
