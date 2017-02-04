//
//  AppDelegate.m
//  iOSSnapshotSecure
//
//  Created by dev-aozhimin on 17/2/4.
//  Copyright © 2017年 aozhimin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (nonatomic, strong) UIImageView *splashImageView;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    self.splashImageView.image = [UIImage imageNamed:@"splash.png"];
    [[[UIApplication sharedApplication] keyWindow] addSubview:self.splashImageView];
    /**
     *  better not to do this way, app may be have a alert and be key window
     */
//    [[UIApplication sharedApplication] keyWindow].hidden = YES;
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self.splashImageView removeFromSuperview];
//    [[UIApplication sharedApplication] keyWindow].hidden = NO;
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (UIImageView *)splashImageView {
    if (!_splashImageView) {
        _splashImageView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    }
    return _splashImageView;
}

@end
