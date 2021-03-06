//
//  AppDelegate.m
//  Luoyang
//
//  Created by scjy on 16/3/14.
//  Copyright © 2016年 张鹏飞. All rights reserved.
//

#import "AppDelegate.h"
#import "ShowViewController.h"
#import "NewsViewController.h"
#import "ServiceViewController.h"
#import "MessageViewController.h"





@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
     UITabBarController *tabbar=[[UITabBarController alloc]init];
    //展示类
    ShowViewController *show=[[ShowViewController alloc]init];
    
    UINavigationController *showNav=[[UINavigationController alloc]initWithRootViewController:show];
    
    //导航栏颜色
    showNav.navigationBar.barTintColor = barColor;
    
    showNav.tabBarItem.image=[UIImage imageNamed:@"bottom_people"];
    UIImage *image=[UIImage imageNamed:@"bottom_people_on"];
    //按图片原来状态显示
    showNav.tabBarItem.selectedImage=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    showNav.tabBarItem.title=@"主页";
//    [UITabBar appearance].tintColor=[UIColor grayColor];
   
    
    
    
    //上左下右
    showNav.tabBarItem.imageInsets=UIEdgeInsetsMake(3, 0, -3, 0);
    
    
    
    NewsViewController *news=[[NewsViewController alloc]init];
    
    UINavigationController *newNav=[[UINavigationController alloc]initWithRootViewController:news];
    
    
    //导航栏颜色
    newNav.navigationBar.barTintColor = barColor;
    
    
    newNav.tabBarItem.image=[UIImage imageNamed:@"bottom_newspaper"];
    UIImage *newimage=[UIImage imageNamed:@"bottom_newspaper_on"];
    //按图片原来状态显示
    newNav.tabBarItem.selectedImage=[newimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    newNav.tabBarItem.title=@"电子报";

    MessageViewController *message=[[MessageViewController alloc]init];
    UINavigationController *messageNav=[[UINavigationController alloc]initWithRootViewController:message];
    
   
    messageNav.tabBarItem.image=[UIImage imageNamed:@"ic_tab_4_unpress"];
    
    UIImage *mineimage=[UIImage imageNamed:@"ic_tab_4_press"];
    //按图片原来状态显示
    messageNav.tabBarItem.selectedImage=[mineimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    messageNav.tabBarItem.imageInsets=UIEdgeInsetsMake(3, 0, -3, 0);
    
    //导航栏颜色
    messageNav.navigationBar.barTintColor = barColor;
    messageNav.tabBarItem.title=@"消息";
    
    ServiceViewController *service=[[ServiceViewController alloc]init];
    UINavigationController *serviceNav=[[UINavigationController alloc]initWithRootViewController:service];
    
    
    serviceNav.tabBarItem.image=[UIImage imageNamed:@"bottom_recharge"];
    
    UIImage *serviceNavimage=[UIImage imageNamed:@"bottom_recharge_on"];
    //按图片原来状态显示
    serviceNav.tabBarItem.selectedImage=[serviceNavimage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    serviceNav.tabBarItem.imageInsets=UIEdgeInsetsMake(3, 0, -3, 0);
    
    //导航栏颜色
    serviceNav.navigationBar.barTintColor =barColor;
    
    serviceNav.tabBarItem.title=@"服务";
    
    tabbar.tabBar.tintColor=[UIColor redColor];
    
    
    tabbar.viewControllers=@[showNav,newNav,messageNav,serviceNav];
    self.window.rootViewController=tabbar;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
