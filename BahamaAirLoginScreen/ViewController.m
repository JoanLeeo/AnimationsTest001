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

@property (nonatomic, strong) CALayer *baseLayer;

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
    
    self.baseLayer = [[CALayer alloc] init];
    self.baseLayer.frame = CGRectMake(100, 100, 100, 100);
    self.baseLayer.backgroundColor = [UIColor greenColor].CGColor;
    [self.view.layer addSublayer:self.baseLayer];
    
    
    
    
   
    
//    [UIView animateWithDuration:0.3 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:6 options:UIViewAnimationOptionTransitionNone animations:^{
//        self.baseLayer.position = CGPointMake(50, 200);
//    } completion:^(BOOL finished) {
//        
//    }];
    
    
    self.baseLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"balloon"].CGImage);
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [UIView animateWithDuration:2 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:6 options:UIViewAnimationOptionBeginFromCurrentState animations:^{
//        self.baseLayer.position = CGPointMake(150, 200);
//    } completion:^(BOOL finished) {
//        
//    }];
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
