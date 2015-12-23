//
//  ViewController.m
//  TestFBDemo
//
//  Created by tang on 15/12/23.
//  Copyright © 2015年 shunzhitang. All rights reserved.
//

#import "ViewController.h"
#import <FBsdkcorekit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(UIButton *)sender {
    
    NSLog(@" 登录facebook");
    
    FBSDKLoginButton *login = [[FBSDKLoginButton alloc] init];
    
    login.center = self.view.center;
    
    [self.view addSubview:login];
    
    
}


@end
