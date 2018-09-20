//
//  ZJNode.m
//  TestDataStructure
//
//  Created by ZJ on 2018/9/13.
//  Copyright © 2018年 jydZJ. All rights reserved.
//

#import "ZJNode.h"

@implementation ZJNode

-(instancetype)init{
    
    self = [super init];
    
    if (self) {
        _nodeData = 0;
        _next = nil;
    }
    
    return self;
}

- (id)initWithData:(int)nodeData{
    self = [super init];
    
    if (self) {
        self.nodeData = nodeData;
        self.next = nil;
    }
    
    return self;
}


@end
