//
//  CLStatusBarCDVPlugin.h
//  CL
//
//  Created by Carlo Luis M. Bation on 11/22/13.
//
//

#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CLStatusBarCDVPlugin : CDVPlugin
- (void)changeStatusBarColor:(CDVInvokedUrlCommand*)command;
@end
