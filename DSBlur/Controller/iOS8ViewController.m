//
//  iOS8ViewController.m
//  DSBlur
//
//  Created by dasheng on 16/3/3.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "iOS8ViewController.h"

@implementation iOS8ViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];
    UIImageView  *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    [imageView setImage:[UIImage imageNamed:@"test.JPG"]];
    [self.view addSubview:imageView];
    
    
    //对下侧的视图渲染出模糊效果
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    UIVisualEffectView *blurEffectview = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurEffectview.frame = CGRectMake(0, 0, imageView.frame.size.width, self.view.frame.size.height);
    [self.view addSubview:blurEffectview];
    
    
    
    UILabel   *label = [[UILabel alloc] initWithFrame:CGRectMake(200, 64, 100, 30)];
    label.text = @"高亮处理";
    
    //对毛玻璃效果上层的视图做出高亮突出处理（label的颜色根据毛玻璃下层的颜色改变）
    UIVibrancyEffect *vibrancyEffect = [UIVibrancyEffect effectForBlurEffect:blurEffect];
    UIVisualEffectView *vibrancyEffectview = [[UIVisualEffectView alloc] initWithEffect:vibrancyEffect];
    vibrancyEffectview.frame = CGRectMake(0, 0, imageView.frame.size.width, self.view.frame.size.height);
    
    [vibrancyEffectview.contentView addSubview:label];
    [blurEffectview.contentView addSubview:vibrancyEffectview];
}

@end
