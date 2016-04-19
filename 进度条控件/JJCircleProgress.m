//
//  JJCircleProgressView.m
//  CAShapeDemo
//
//  Created by liujianjian on 15/10/30.
//  Copyright © 2015年 rdg. All rights reserved.
//

#import "JJCircleProgress.h"

@interface JJCircleProgress()
@property (nonatomic, strong) UILabel      *label;
@property (nonatomic, strong) CAShapeLayer *shapeLayer;

@end

@implementation JJCircleProgress

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self makeSubViews];
    }
    return self;
}
- (void)makeSubViews {
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
    
    self.shapeLayer = [CAShapeLayer layer];
    _shapeLayer.frame = self.bounds;
//    _shapeLayer.opacity = 0.8f;
    _shapeLayer.path = bezierPath.CGPath;
    _shapeLayer.fillColor = [UIColor clearColor].CGColor;
    _shapeLayer.lineWidth = 2.0f;
    _shapeLayer.lineCap = kCALineCapRound;
    _shapeLayer.strokeColor = [UIColor redColor].CGColor;
    // 进度
    _shapeLayer.strokeStart = 0.f;
    _shapeLayer.strokeEnd = 0.f;
    [self.layer addSublayer:_shapeLayer];
    
    self.label = [[UILabel alloc] initWithFrame:self.bounds];
    _label.backgroundColor = [UIColor clearColor];
    _label.textColor = [UIColor redColor];
    _label.textAlignment = 1;
    _label.text = @"0.00%";
    _label.font = [UIFont systemFontOfSize:16.0];
    [self addSubview:_label];
    
}
/*
 @property (nonatomic, assign)CGFloat currentValue;
 @property (nonatomic, assign)CGFloat lineWidth;
 @property (nonatomic, strong)UIColor *lineColor;
 @property (nonatomic, strong)UIFont *font;
 @property (nonatomic, strong)UIColor *textColor;
 */
- (void)setCurrentValue:(CGFloat)currentValue {
//    NSAssert(currentValue > 1.0, @"currentValue不能大于1！");
    _shapeLayer.strokeEnd = currentValue;
    if (currentValue >= 1) {
        _label.text = @"100%";
    } else {
        _label.text = [NSString stringWithFormat:@"%.0f%%", currentValue * 100];
    }
}
- (void)setLineWidth:(CGFloat)lineWidth {
    _shapeLayer.lineWidth = lineWidth;
}
- (void)setLineColor:(UIColor *)lineColor {
    _shapeLayer.strokeColor = lineColor.CGColor;
}
- (void)setFont:(UIFont *)font {
    _label.font = font;
}
- (void)setTextColor:(UIColor *)textColor {
    _label.textColor = textColor;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
