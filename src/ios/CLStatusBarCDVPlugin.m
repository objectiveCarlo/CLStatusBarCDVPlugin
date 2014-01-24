//
//  CLStatusBarCDVPlugin.m
//  CL
//
//  Created by Carlo Luis M. Bation on 11/22/13.
//
//

#import "CLStatusBarCDVPlugin.h"
#import "MainViewController.h"
@implementation CLStatusBarCDVPlugin
- (void)changeStatusBarColor:(CDVInvokedUrlCommand*)command
{
    
     if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7)
     {
         NSString *setup = [command argumentAtIndex:0];
        
      
         
         if([self.viewController isKindOfClass:[MainViewController class]]){
             MainViewController *cont = (MainViewController *)self.viewController;
             
            
             
             if([self isBlack:setup])
                   cont.style = UIStatusBarStyleDefault;
              else
             
                   cont.style = UIStatusBarStyleLightContent;
              
         }
         
            [self.viewController setNeedsStatusBarAppearanceUpdate];
         
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
