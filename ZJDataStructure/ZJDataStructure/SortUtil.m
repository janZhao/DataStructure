//
//  SortUtil.m
//  TestDataStructure
//
//  Created by ZJ on 2018/9/20.
//  Copyright © 2018年 jydZJ. All rights reserved.
//

#import "SortUtil.h"

@implementation SortUtil

/** 冒泡排序
 *冒泡排序：原理：冒泡顾名思义，就像气泡从水底冒出一样，
   它的排序方式是：研究了一下，它给人的感觉是像近视眼一样，它只能看见自己和紧挨着自己的下一个数字，所以它的排序方式也就是将比较元素和紧挨着自己的元素比较看是否交换位置，然后持续这个过程，比较的一直都是紧挨着的两个元素。
 冒泡排序（Bubble Sort），是一种计算机科学领域的较简单的排序算法。
 它重复地走访过要排序的数列，一次比较两个元素，如果他们的顺序错误就把他们交换过来。走访数列的工作是重复地进行直到没有再需要交换，也就是说该数列已经排序完成。
 这个算法的名字由来是因为越小的元素会经由交换慢慢“浮”到数列的顶端，故名。
 由于冒泡排序简洁的特点，它通常被用来对于计算机程序设计入门的学生介绍算法的概念。
 
 简单的说就是一次一次的交换数据，这样数据就会“浮”上来
 */
+(void)BubbleSort{
    
    NSMutableArray *arr_M = [NSMutableArray arrayWithObjects:@1,@4,@2,@3,@5,nil];
    
    //遍历`数组的个数`次
    /*
     i = 0 的时候，j的相邻两个位置都要比较排一下位置：
     j = 0 的时候：arr_M = 41235
     j = 1 的时候：arr_M = 42135
     j = 2 的时候：arr_M = 42315
     j = 3 的时候：arr_M = 42351
     
     i = 1;
     ……  ……
     */
    for (int i=0; i<arr_M.count; i++) {
        for (int j=0; j<arr_M.count-1; j++) {
            
            int temp=0;
            //如果后面一个数小于前面的就交换
            
            if (arr_M[j] > arr_M[j+1]) {
                temp = [arr_M[j] intValue];
                arr_M[j] = arr_M[j+1];
                arr_M[j] = @(temp);
            }
        
//            if (arr_M[j] > arr_M[j+1]) {
//                [arr_M exchangeObjectAtIndex:j withObjectAtIndex:j+1];
//            }
        }
    }

    [arr_M enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"UsingBlock:%@",arr_M[idx]);
    }];
    
}

@end
