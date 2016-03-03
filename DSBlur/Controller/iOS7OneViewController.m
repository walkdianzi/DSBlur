//
//  iOS7ViewController.m
//  DSBlur
//
//  Created by dasheng on 16/3/3.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "iOS7OneViewController.h"
#import "UIImage+Blur.h"
#import "UIView+frame.h"

@implementation iOS7OneViewController

- (void)viewDidLoad{
    
    //ios7上直接对UIImage进行模糊处理
    [super viewDidLoad];
    
    
    //1.对所使用的图片进行模糊处理
//    UIImageView  *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
//    [imageView setImage:[UIImage imageNamed:@"test.JPG"]];
//    [self.view addSubview:imageView];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [imageView setImage:[[UIImage imageNamed:@"test.JPG"] applyBlurWithRadius:40 tintColor:[UIColor colorWithWhite:1 alpha:0.8] saturationDeltaFactor:1.8 maskImage:nil]];
//    });
    
    
    
    //2.截图生成图片对图片进行模糊处理
    UIImageView  *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    [imageView2 setImage:[UIImage imageNamed:@"test.JPG"]];
    [self.view addSubview:imageView2];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIImageView *blurImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        UIImage *blurImage = [self.view screenshot];
        [blurImageView setImage:[blurImage applyBlurWithRadius:10 tintColor:[UIColor colorWithWhite:1 alpha:0.8] saturationDeltaFactor:1.8 maskImage:nil]];
        [self.view addSubview:blurImageView];
    });
}

@end
