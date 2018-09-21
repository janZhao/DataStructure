//
//  SortUtil.m
//  TestDataStructure
//
//  Created by ZJ on 2018/9/20.
//  Copyright © 2018年 jydZJ. All rights reserved.
//
// a=a^b;
// b=a^b;
// a=a^b;
// a=a+b;
//  b=a-b;
//  a=a-b;
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
    NSMutableArray *arr_M = [NSMutableArray arrayWithObjects:@1,@4,@2,@3,@5,nil];
    
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

+(void)SelectionSort{
    
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@9,@2,@7,@1,@5,nil];
    
    for (int i=0; i<arr.count; i++) {
        for (int j=i+1; j<arr.count; j++) {
            if (arr[i] > arr[j]) {
                [arr exchangeObjectAtIndex:i withObjectAtIndex:j];
            }
        }
        NSLog(@"第%d趟，%@",i+1,arr);
    }
    
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"UsingBlock:%@",arr[idx]);
    }];
}

/** 选择排序
 * 每一趟从待排序的数据元素中选出最小（或最大）的一个元素，顺序放在已排好序的数列的最后，直到全部待排序的数据元素排完。
     选择排序是不稳定的排序方法。
 一. 算法描述
 选择排序：比如在一个长度为N的无序数组中，
       第一趟遍历N个数据，找出其中最小的数值与第一个元素交换，
       第二趟遍历剩下的N-1个数据，找出其中最小的数值与第二个元素交换......第N-1趟遍历剩下的2个数据，找出其中最小的数值与第N-1个元素交换，至此选择排序完成。
 *  原理：从第一个元素开始，依次查找对比，找到最小的元素与第一个元素交换，再从第二个元素开始找后面元素的最小值与第二个元素交换，
     以此类推，直到整个数组有序。
 */
+(void)SelectionSortStepWise{
    
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@9,@2,@7,@1,@5,nil];
    
    for (int i=0; i<arr.count; i++) {
        int minIndex = i;
        for (int j=minIndex+1; j<arr.count; j++) {
            if (arr[minIndex] > arr[j]) {
                minIndex = j;
            }
        }
        
        if (minIndex != i) {
            //[arr exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
            int temp = 0;
            temp = [arr[i] intValue];
            arr[i] = arr[minIndex];
            arr[minIndex] = @(temp);
        }
        NSLog(@"----第%d趟，%@",i+1,arr);
    }
    
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"UsingBlock:%@",arr[idx]);
    }];
}

/** 快速排序
 *   基本思想
 *   通过一趟排序将要排序的数据分割成独立的两部分，
         其中一部分的所有数据都比另外一部分的所有数据都要小，然后再按此方法对这两部分数据分别进行快速排序，
        整个排序过程可以递归进行，以此达到整个数据变成有序序列。
 *   1 ）.设置两个变量i，j ，排序开始时i = 0，就j = mutableArray.count - 1；
 2 ）.设置数组的第一个值为比较基准数key，key = mutableArray.count[0]；
 3 ）.因为设置key为数组的第一个值，所以先从数组最右边开始往前查找比key小的值。如果没有找到，j--继续往前搜索；如果找到则将mutableArray[i]和mutableArray[j]互换，并且停止往前搜索，进入第4步；
 4 ）.从i位置开始往后搜索比可以大的值，如果没有找到，i++继续往后搜索；如果找到则将mutableArray[i]和mutableArray[j]互换，并且停止往后搜索；
 5 ）.重复第3、4步，直到i == j（此时刚好执行完第三步或第四部），停止排序；
 */
+(void)QuickSortArray:(NSMutableArray *)arr withLeftIndex:(NSInteger)left withRightIndex:(NSInteger)right{
    
    //如果数组长度为0或1时返回 //数组不需要排序
    
    //数组第一个位置

    //数组最后一个位置

    //将第一个位置的<value>作为---基准
    

        //从后往前走, 直到找到 大于 <基准> 的数字, 此时 j 保存那个数字的下标位置
        
        //再从前往后走, 直到找到 小于 <基准> 的数字, 此时 i 保存那个数字的下标位置
        
        //互换位置
    
    //最终将基准数归位, 因为i == j, 需要将<基数所在位置的value>与<i/j相等的位置的value>互换位置
    
    //继续左边的排序

    //继续右边的排序

}

@end
