//
//  ViewController.m
//  进度条控件
//
//  Created by liujianjian on 16/4/19.
//  Copyright © 2016年 rdg. All rights reserved.
//

#import "ViewController.h"
#import "JJCircleProgress.h"
#import "JJLineProgress.h"

@interface ViewController ()
@property (nonatomic, strong)JJCircleProgress *circleProgress;
@property (nonatomic, strong)JJLineProgress *lineProgress;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self makeCircleProgress];
    [self makeLineProgress];
}
// 线性进度
- (void)makeLineProgress {
    self.lineProgress = [[JJLineProgress alloc] initWithFrame:CGRectMake(10, 30, 200, 40)];
    _lineProgress.backgroundColor = [UIColor colorWithWhite:0.823 alpha:1.000];
    _lineProgress.progressColor = [UIColor greenColor];
    _lineProgress.layer.cornerRadius = 20.0;
    _lineProgress.layer.masksToBounds = YES;
    _lineProgress.currentValue = 0;
    [self.view addSubview:_lineProgress];
}
// 圆形进度
- (void)makeCircleProgress {
    self.circleProgress           = [[JJCircleProgress alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    _circleProgress.backgroundColor = [UIColor grayColor];
    _circleProgress.font      = [UIFont systemFontOfSize:12.0];
    _circleProgress.textColor = [UIColor redColor];
    _circleProgress.lineColor = [UIColor blueColor];
    _circleProgress.center    = self.view.center;
    _circleProgress.lineWidth = 10.0;
    _circleProgress.currentValue = 0.0;
    [self.view addSubview:_circleProgress];
}
- (void)makeTimer {
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateProgress:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
}
- (void)updateProgress:(NSTimer *)timer {
    static CGFloat a = 0.001;
    self.circleProgress.currentValue = a += 0.01;
    self.lineProgress.currentValue =  a += 0.01;
    if (a >= 1.1) {
        self.circleProgress.currentValue = 0;
        self.lineProgress.currentValue =  0;
        a = 0.001;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self makeTimer];
}


@end
