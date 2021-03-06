//
//  CircleView.m
//  CircleView
//
//  Created by apple on 16/5/9.
//  Copyright © 2016年 yunmatong. All rights reserved.
//

#import "CircleView.h"

@interface CircleView ()
@property (nonatomic,strong)CAShapeLayer *shapeLayer;
@property (nonatomic,strong)CAShapeLayer *backShapeLayer;
@end



@implementation CircleView
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        _shapeLayer = [CAShapeLayer layer];
        _backShapeLayer = [CAShapeLayer layer];
        _shapeLayer.frame = self.bounds;
        
        //创建贝塞尔
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
        //贝塞尔曲线和CAshapeLayer产生关联
        _shapeLayer.path = path.CGPath;
        
        UIView *backView = [[UIView alloc]initWithFrame:self.frame];
        _backShapeLayer.frame = backView.bounds;
        [self addSubview:backView];
        
        UIBezierPath *backPath = [UIBezierPath bezierPathWithOvalInRect:backView.bounds];
        _backShapeLayer.path = backPath.CGPath;
        
        
        _backShapeLayer.fillColor = [UIColor whiteColor].CGColor;
        _backShapeLayer.lineWidth = 2;
        
        [backView.layer addSublayer:_backShapeLayer];
        
        _shapeLayer.fillColor = [UIColor clearColor].CGColor;
        _shapeLayer.lineWidth = 2;
        
        _shapeLayer.strokeColor = [UIColor redColor].CGColor;
        _shapeLayer.strokeEnd = 0;
        [self.layer addSublayer:_shapeLayer];
        
    }
    return self;
}
//重写setter getter 方法 达到我们想要的效果
@synthesize startValue = _startValue;

- (void)setStartValue:(CGFloat)startValue{
    _startValue = startValue;
    _shapeLayer.strokeEnd = startValue;
}
- (CGFloat)startValue{
    return _startValue;
}

@synthesize lineWidth = _lineWidth;

- (void)setLineWidth:(CGFloat)lineWidth{
    _lineWidth = lineWidth;
    _shapeLayer.lineWidth = lineWidth;
}
- (CGFloat)lineWidth{
    return _lineWidth;
}

@synthesize backLineWidth = _backLineWidth;
- (void)setBackLineWidth:(CGFloat)backLineWidth{
    _backLineWidth = backLineWidth;
    _backShapeLayer.lineWidth = backLineWidth;
}

- (CGFloat)backLineWidth{
    return _backLineWidth;
}

@synthesize backLineColor = _backLineColor;

- (void)setBackLineColor:(UIColor *)backLineColor{
    _backLineColor = backLineColor;
    _backShapeLayer.strokeColor = backLineColor.CGColor;
}
- (UIColor *)backLineColor{
    return _backLineColor;
}

@synthesize lineColor = _lineColor;

- (void)setLineColor:(UIColor *)lineColor{
    _lineColor = lineColor;
    _shapeLayer.strokeColor = lineColor.CGColor;
}

-(UIColor *)lineColor{
    return _lineColor;
}

@synthesize value = _value;

- (void)setValue:(CGFloat)value{
    _value = value;
    _shapeLayer.strokeEnd = value;
}
- (CGFloat)value{
    return _value;
}





@end
