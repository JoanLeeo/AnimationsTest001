//
//  ViewController.m
//  BahamaAirLoginScreen
//
//  Created by PC-LiuChunhui on 16/7/18.
//  Copyright © 2016年 Mr.Wendao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *loginLb;

@end

@implementation ViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    

    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:0.35 animations:^{
        CGPoint center = self.loginLb.center;
        center.x += self.view.bounds.size.width;
        self.loginLb.center = center;
    }];
}
    
    
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidLayoutSubviews {
    CGPoint center = self.loginLb.center;
    center.x -= self.view.bounds.size.width;
    self.loginLb.center = center;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
