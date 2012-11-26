//
//  MyPlugin.h
//  PG-plugin
//
//  Created by Mead on 11/24/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import <Cordova/CDVPlugin.h>

@interface MyPlugin : CDVPlugin{
    NSString* _callbackID;
    NSString* _innerAttri;
    
}

@property(nonatomic,retain) NSString* callbackID;
@property(nonatomic,retain) NSString* innerAttri;
// 插件方法的参数必须声明成如下两个.
-(void) sayHello:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;

-(void) showUI:(NSMutableArray*)arguments withDict:(NSMutableDictionary*)options;
@end
