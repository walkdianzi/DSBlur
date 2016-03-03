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
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
        UIVisualEffectView *effectview = [[UIVisualEffectView alloc] initWithEffect:blur];
        effectview.frame = CGRectMake(0, 0, imageView.frame.size.width, self.view.frame.size.height);
        [self.view addSubview:effectview];
    });
}

@end
