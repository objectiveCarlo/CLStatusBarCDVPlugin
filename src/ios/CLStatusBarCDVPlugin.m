//
//  CLStatusBarCDVPlugin.m
//  CL
//
//  Created by Carlo Luis M. Bation on 11/22/13.
//
//

#import "CLStatusBarCDVPlugin.h"

@implementation CLStatusBarCDVPlugin
- (void)changeStatusBarColor:(CDVInvokedUrlCommand*)command
{
    
     if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)
     {
         NSString *setup = [command argumentAtIndex:0];
    
        if([self isBlack:setup])
        {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackTranslucent
                                                        animated:YES];
        }else
        {
            [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent
                                                        animated:YES];
        }
     }
    
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus: CDVCommandStatus_OK];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (BOOL)isBlack:(NSString *)setup
{
    if(setup!=nil&&[setup isEqualToString:@"isBlack"]) return YES;
    
    return NO;
}
@end
