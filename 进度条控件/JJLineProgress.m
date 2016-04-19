//
//  JJLineProgress.m
//  进度条控件
//
//  Created by liujianjian on 16/4/19.
//  Copyright © 2016年 rdg. All rights reserved.
//

#import "JJLineProgress.h"

@interface JJLineProgress()
@property (nonatomic, strong)CAGradientLayer *gradientLayer;
@end

@implementation JJLineProgress

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self makeSubViews];
    }
    return self;
}

- (void)makeSubViews {
    // 直线进度
    self.gradientLayer        = [CAGradientLayer layer];
    _gradientLayer.frame      = self.bounds;
    _gradientLayer.opacity    = 1;
    _gradientLayer.startPoint = CGPointZero;
    _gradientLayer.endPoint   = CGPointMake(1, 0);
    _gradientLayer.colors     = @[(__bridge id)[UIColor blackColor].CGColor,
                                  (__bridge id)[UIColor clearColor].CGColor];
    _gradientLayer.locations  = @[@(0), @(0)];
    [self.layer addSublayer:_gradientLayer];
}
#pragma mark setter
- (void)setProgressColor:(UIColor *)progressColor {
    _progressColor = progressColor;
    self.gradientLayer.colors = @[(__bridge id)progressColor.CGColor,
                                  (__bridge id)[UIColor clearColor].CGColor];
}
- (void)setCurrentValue:(CGFloat)currentValue {
    _currentValue = currentValue;
    _gradientLayer.locations  = @[@(currentValue), @(0)];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
