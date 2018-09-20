//
//  ZJList.m
//  TestDataStructure
//
//  Created by ZJ on 2018/9/15.
//  Copyright © 2018年 jydZJ. All rights reserved.
//

#import "ZJList.h"

@implementation ZJList

-(instancetype)initWithData:(int)data{
    if (self = [super init]) {
        
        // 创建首节点
        self.head = [[ZJNode alloc]init];
        self.head.nodeData = data;
        self.head.next = nil;
        
        // 设置尾节点
        self.tail = self.head; // 新初始化的链表 尾节点就是首节点
    }
    return self;
}

-(void)appendData:(int)data{
    
    // 创建新节点
    ZJNode *node = [[ZJNode alloc]init];
    node.nodeData = data;
    node.next = nil;
    
    // 之前的尾节点的next节点是现在新的节点
    node.next = self.tail.next;
    self.tail.next = node;
    
    //将新节点设置成最新的尾节点
    self.tail = node;
}

-(void)printList{
    ZJNode *list = self.head;
    while (list != nil) {
        printf("%d", list.nodeData);
        list = list.next;
    }
}

+(id)listWithData:(int)data{
    ZJList *firstNode = [[ZJList alloc]initWithData:data];
    return firstNode;
}


-(void)reverseList{
    ZJNode *head = self.head;
    ZJNode *prev;
    ZJNode *next;
    
    while (head != nil) {
        next = head.next;
        head.next = prev;
        
        prev = head;
        head = next;
    }
    self.head = prev;
}

@end
