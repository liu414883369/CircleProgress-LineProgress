//
//  JJCircleProgressView.h
//  CAShapeDemo
//
//  Created by liujianjian on 15/10/30.
//  Copyright © 2015年 rdg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJCircleProgress : UIView
/**
 *  进度值0.0~1.0
 */
@property (nonatomic, assign)CGFloat currentValue;
/**
 *  进度条宽
 */
@property (nonatomic, assign)CGFloat lineWidth;
/**
 *  进度条颜色
 */
@property (nonatomic, strong)UIColor *lineColor;
/**
 *  字体大小
 */
@property (nonatomic, strong)UIFont *font;
/**
 *  字体颜色
 */
@property (nonatomic, strong)UIColor *textColor;



@end
