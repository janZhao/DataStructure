//
//  ZJNode.h
//  TestDataStructure
//
//  Created by ZJ on 2018/9/13.
//  Copyright © 2018年 jydZJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJNode : NSObject

@property (assign, nonatomic) int nodeData;

@property (strong, nonatomic) ZJNode *next;

-(id)initWithData:(int)nodeData;

@end
