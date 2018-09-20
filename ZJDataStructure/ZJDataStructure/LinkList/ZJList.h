//
//  ZJList.h
//  TestDataStructure
//
//  Created by ZJ on 2018/9/15.
//  Copyright © 2018年 jydZJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZJNode.h"

@interface ZJList : NSObject

@property (strong, nonatomic) ZJNode *head;
@property (strong, nonatomic) ZJNode *tail;

-(void)printList;
-(void)appendData:(int)data;//插入节点

+(id)listWithData:(int)data;//工厂方法

/** 单链表逆序*/
-(void)reverseList;

//指定位置插入节点

//指定位置删除节点

@end
