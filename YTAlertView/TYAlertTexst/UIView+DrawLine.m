//
//  UIView+DreawLine.m
//  text
//
//  Created by imht-ios on 14-5-20.
//  Copyright (c) 2014年 ymht. All rights reserved.
//

#import "UIView+DrawLine.h"

@implementation UIView (DrawLine)

- (void)drawLine
{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:0.0]; //设置矩圆角半径
    [self.layer setBorderWidth:1.0f];   //边框宽度
    [self.layer setBorderColor:[UIColor blackColor].CGColor];//边框颜色
}

- (void)drawLineWidth:(CGFloat)width andColor:(UIColor*)color
{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:0.0]; //设置矩圆角半径
    [self.layer setBorderWidth:width];   //边框宽度
    [self.layer setBorderColor:color.CGColor];//边框颜色
    
}

- (void)drawRoundBoderWidth:(CGFloat)width andColor:(UIColor*)color
{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:50]; //设置矩圆角半径
    [self.layer setBorderWidth:width];   //边框宽度
    [self.layer setBorderColor:color.CGColor];//边框颜色
    
}

- (void)drawRoundBoderWidth:(CGFloat)width andColor:(UIColor*)color andRadius:(CGFloat)radius
{
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:radius]; //设置矩圆角半径
    [self.layer setBorderWidth:width];   //边框宽度
    [self.layer setBorderColor:color.CGColor];//边框颜色
}

/**
 *  在view上划线，本方法采用的生成一个新的layer，然后加载上去。
 */
- (void)drawLineWidth:(CGFloat)width
                color:(UIColor *)color
           startPoint:(CGPoint )spoint
             endPoint:(CGPoint)epoint
{
    CAShapeLayer *lineShape = nil;
    CGMutablePathRef linepath = nil;
    
    linepath = CGPathCreateMutable();
    lineShape = [CAShapeLayer layer];
    
    lineShape.lineWidth = width;
    lineShape.lineCap = kCALineCapSquare;
    lineShape.strokeColor = color.CGColor;
    
    CGPathMoveToPoint(linepath, NULL, spoint.x, spoint.y);
    CGPathAddLineToPoint(linepath, NULL, epoint.x, epoint.y);
    
    lineShape.path = linepath;
    CGPathRelease(linepath);
    
    [self.layer addSublayer:lineShape];
}

- (void)drawDashedLineWidth:(CGFloat)width
                color:(UIColor *)color
           startPoint:(CGPoint )spoint
             endPoint:(CGPoint)epoint
{
    /*line – 这个不用多说
    lengths – 指明虚线是如何交替绘制
    count – lengths数组的长度*/


    float lengths[] = {10,10};
    
    CAShapeLayer *lineShape = nil;
    CGMutablePathRef linepath = nil;
    
    linepath = CGPathCreateMutable();
    lineShape = [CAShapeLayer layer];
    
    lineShape.lineWidth = width;
    lineShape.strokeColor = color.CGColor;
    
    CGPathRef dashRef = CGPathCreateCopyByDashingPath(linepath, NULL, 0, lengths, 2);
    CGMutablePathRef linePath2 = CGPathCreateMutableCopy(dashRef);
    
    CGPathMoveToPoint(linePath2, NULL, spoint.x, spoint.y);
    CGPathAddLineToPoint(linePath2, NULL, epoint.x, epoint.y);
    
    lineShape.path = linePath2;
    CGPathRelease(linePath2);
    
    [self.layer addSublayer:lineShape];

}

-(UIImage *)getImageFromView
{
    UIGraphicsBeginImageContext(self.bounds.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


#pragma mark ---

- (CGFloat)endY {
    return self.frame.origin.y + self.frame.size.height;
}

- (CGFloat)endX {
    return self.frame.origin.x + self.frame.size.width;
}

- (CGFloat)startX
{
    return self.frame.origin.x;
}


- (CGFloat)startY
{
    return self.frame.origin.y;
}


- (CGFloat)boundsH{
    return self.frame.size.height;
}


- (CGFloat)boundsW{
    return self.frame.size.width;
}

- (void)setFrameX:(float)x
{
    [self setFrameX:x andFrameY:self.frame.origin.y];
}

- (void)setFrameY:(float)y;
{
    [self setFrameX:self.frame.origin.x andFrameY:y];
}

- (void)setFrameX:(float)x andFrameY:(float)y
{
    CGRect frame = [self frame];
	frame.origin.x = round(x);
	frame.origin.y = round(y);
	[self setFrame:frame];
}
/**
 *  删除当前视图的所有子视图
 */
- (void)removeSubviews{
    for(UIView *v in self.subviews) {
		[v removeFromSuperview];
	}
}
@end
