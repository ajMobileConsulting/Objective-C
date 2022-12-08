//
//  main.m
//  Calculator
//
//  Created by Alexander Jackson on 12/5/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Aircraft.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        Aircraft *plane = [[Aircraft alloc] init];
        plane.speed = 100;
        NSLog(@"The speed is %d", plane.speed);
//        UIViewController *vc = [[UIViewController alloc] init];
//         = @"1000";
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
