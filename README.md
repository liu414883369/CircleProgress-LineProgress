# CircleProgress
圆形进度条和线性进度条

封装系统类CAShapeLayer和CAGradientLayer实现进度条控件
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


------------------------

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
