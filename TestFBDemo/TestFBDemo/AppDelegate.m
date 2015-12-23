//
//  AppDelegate.m
//  TestFBDemo
//
//  Created by tang on 15/12/23.
//  Copyright © 2015年 shunzhitang. All rights reserved.
//

#import "AppDelegate.h"
// 导入头文件
#import <FBSDKCoreKit/FBSDKCoreKit.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    return YES;
}

/**
   配置 FB
 */
- (void)applicationDidBecomeActive:(UIApplication *)application{
    
    [FBSDKAppEvents activateApp];
}
/**
  配置应用程序之间的跳转
 */

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
    
    return [[FBSDKApplicationDelegate sharedInstance] application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
}




@end
