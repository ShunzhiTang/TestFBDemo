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

    // Add a custom login button to your app
    UIButton *myLoginButton=[UIButton buttonWithType:UIButtonTypeCustom];
    myLoginButton.backgroundColor=[UIColor darkGrayColor];
    myLoginButton.frame=CGRectMake(0,0,180,40);
    myLoginButton.center = self.view.center;
    [myLoginButton setTitle: @"My Login Button" forState: UIControlStateNormal];
    
    // Handle clicks on the button
    [myLoginButton
     addTarget:self
     action:@selector(loginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    // Add the button to the view
    [self.view addSubview:myLoginButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)login:(UIButton *)sender {
    
//    NSLog(@" 登录facebook");
//    
//    FBSDKLoginButton *login = [[FBSDKLoginButton alloc] init];
//    
//    login.center = self.view.center;
//    
//    [self.view addSubview:login]
//    @property (readonly, copy, nonatomic) NSString *appID;
//    
//    /*!
//     @abstract Returns the known declined permissions.
//     */
//    @property (readonly, copy, nonatomic) NSSet *declinedPermissions;
//    
//    /*!
//     @abstract Returns the expiration date.
//     */
//    @property (readonly, copy, nonatomic) NSDate *expirationDate;
//    
//    /*!
//     @abstract Returns the known granted permissions.
//     */
//    @property (readonly, copy, nonatomic) NSSet *permissions;
//    
//    /*!
//     @abstract Returns the date the token was last refreshed.
//     */
//    @property (readonly, copy, nonatomic) NSDate *refreshDate;
//    
//    /*!
//     @abstract Returns the opaque token string.
//     */
//    @property (readonly, copy, nonatomic) NSString *tokenString;
//    
//    /*!
//     @abstract Returns the user ID.
//     */
//    @property (readonly, copy, nonatomic) NSString *userID;
}
-(void)loginButtonClicked
{
    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
    [login
     logInWithReadPermissions: @[@"public_profile"]
     fromViewController:self
     handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
         if (error) {
             NSLog(@"Process error");
         } else if (result.isCancelled) {
             NSLog(@"Cancelled");
         } else {
             
             NSLog(@"appID = %@" , result.token.appID);
             
             NSLog(@"tokenString = %@" , result.token.tokenString);
             NSLog(@"userID = %@" , result.token.userID);
             NSLog(@"refreshDate = %@" , result.token.refreshDate);
             NSLog(@"expirationDate = %@" , result.token.expirationDate);
             NSLog(@"Logged in");
         }
     }];
}


@end
