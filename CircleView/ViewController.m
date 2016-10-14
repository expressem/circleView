//
//  ViewController.m
//  CircleView
//
//  Created by apple on 16/5/9.
//  Copyright © 2016年 yunmatong. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"


@interface ViewController ()
{
    CircleView *circle;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    circle = [[CircleView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    circle.center = self.view.center;
    circle.startValue = .5;
    circle.lineWidth  = 3;
    circle.backLineWidth = 2;
    circle.lineColor = [UIColor blueColor];
    circle.backLineColor = [UIColor redColor];
    [self.view addSubview:circle];
    
    [self performSelector:@selector(delayAnimation) withObject:nil afterDelay:3];
    
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)delayAnimation{
    circle.value = .75;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
