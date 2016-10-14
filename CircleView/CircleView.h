//
//  CircleView.h
//  CircleView
//
//  Created by apple on 16/5/9.
//  Copyright © 2016年 yunmatong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CircleView : UIView
@property (nonatomic,assign)CGFloat startValue;//起始值（0.~1）
@property (nonatomic,assign)CGFloat lineWidth;//线宽
@property (nonatomic,strong)UIColor *lineColor;//线条颜色
@property (nonatomic,assign)CGFloat value;//变化的值



@end
