//
//  AppDelegate.m
//  FindAirTickets
//
//  Created by Maxim Tolstikov on 18/09/2018.
//  Copyright © 2018 Maxim Tolstikov. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import <UIKit/UIKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    CGRect frame = [UIScreen mainScreen].bounds;
    self.window = [[UIWindow alloc] initWithFrame: frame];
    UIViewController *firstViewController = [FirstViewController new];
    self.window.rootViewController = [[UINavigationController alloc]
                                      initWithRootViewController: firstViewController];
    self.window.backgroundColor = UIColor.whiteColor;
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
