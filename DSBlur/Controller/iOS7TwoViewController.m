//
//  iOS7TwoViewController.m
//  DSBlur
//
//  Created by dasheng on 16/3/3.
//  Copyright © 2016年 dasheng. All rights reserved.
//

#import "iOS7TwoViewController.h"
#import "JCRBlurView.h"

@implementation iOS7TwoViewController

- (void)viewDidLoad{
    
    [super viewDidLoad];

    UIImageView  *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    [imageView setImage:[UIImage imageNamed:@"test.JPG"]];
    [self.view addSubview:imageView];
    
    //使用Toolbar做模糊处理：https://github.com/JagCesar/iOS-blur
    JCRBlurView *blurView = [[JCRBlurView alloc] initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:blurView];
}
@end
