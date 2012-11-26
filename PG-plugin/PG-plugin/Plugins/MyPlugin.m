//
//  MyPlugin.m
//  PG-plugin
//
//  Created by Mead on 11/24/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import "MyPlugin.h"
#import "CustomView.h"

@implementation MyPlugin

@synthesize callbackID, innerAttri;

//
-(void) sayHello:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options{
    self.callbackID = [arguments pop];
    NSString* arg = [arguments objectAtIndex:0];
    NSLog(@"get param: %@",arg);
    NSString *stringToReturn =[NSString stringWithFormat: @"Received message: %@",arg];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                                      messageAsString: [stringToReturn stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    //javascript success_callback function
    [self writeJavascript: [pluginResult toSuccessCallbackString:self.callbackID]];
}

//
-(void) showUI:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options{
    self.callbackID = [arguments pop];
    CustomView* view = [[CustomView alloc]initWithFrame:CGRectMake(0.0f, 400.0f, 320.0f, 60.0f)];
    [self.webView addSubview:view];
}

@end
