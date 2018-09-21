//
//  SortUtil.h
//  TestDataStructure
//
//  Created by ZJ on 2018/9/20.
//  Copyright © 2018年 jydZJ. All rights reserved.
//
// 测试排序算法工具类

#import <Foundation/Foundation.h>

@interface SortUtil : NSObject

/** 冒泡排序*/
+(void)BubbleSort;

/** 选择排序*/
+(void)SelectionSort;
/** 选择排序 分布式写法 两种方式第一趟排序的结果不一样*/
+(void)SelectionSortStepWise;

/** 快速排序*/
+(void)QuickSort;

@end
