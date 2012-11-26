//
//  CustomView.m
//  PG-plugin
//
//  Created by Mead on 11/24/12.
//  Copyright (c) 2012 Mead. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor blueColor];
    if (self) {
        UILabel* myLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 0, 100, 50)];
        [myLabel setText:@"Hello View"];
        myLabel.backgroundColor = [UIColor clearColor];
        [myLabel setTextColor:[UIColor redColor]];
        [self addSubview:myLabel];
    }
    return self;
}

@end
