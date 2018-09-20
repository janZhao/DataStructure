//
//  ViewController.m
//  TestDataStructure
//
//  Created by ZJ on 2018/9/5.
//  Copyright © 2018年 jydZJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self testSort];
    
    [self testLinkList];
    
}

-(void)testSort{
//    [SortUtil BubbleSort];
//    [SortUtil SelectionSort];
    [SortUtil SelectionSortStepWise];
}


-(void)testLinkList{

    ZJList *list = [ZJList listWithData:0];
    for (int i=1; i<10; i++) {
        [list appendData:i];
    }
    [list printList];
    printf("\n");
    
    [list reverseList];
    [list printList];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
