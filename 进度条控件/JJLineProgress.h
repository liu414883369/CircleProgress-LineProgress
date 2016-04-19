//
//  JJLineProgress.h
//  进度条控件
//
//  Created by liujianjian on 16/4/19.
//  Copyright © 2016年 rdg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJLineProgress : UIView
/**
 *  进度条颜色
 */
@property (nonatomic, strong)UIColor *progressColor;
/**
 *  进度值0.0~1.0
 */
@property (nonatomic, assign)CGFloat currentValue;

@end
