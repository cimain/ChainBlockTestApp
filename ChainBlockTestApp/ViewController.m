//
//  ViewController.m
//  ChainBlockTestApp
//
//  Created by ChenMan on 2018/4/11.
//  Copyright © 2018年 cimain. All rights reserved.
//


/**
 两者链式语法标记

 @param void <#void description#>
 @return <#return value description#>
 */
#define ChainBlockTest0  0//简单链式语法
#define ChainBlockTest1  1//block里层链式语法


/**
 切换两种链式语法，修改这里！！！

 @param void 参数选择上面的两者之一
 @return 0,1
 */
#define ChainBlockTestMethod ChainBlockTest1

#import "ViewController.h"
#import "NSObject+Caculate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if ChainBlockTestMethod == ChainBlockTest0
    
    CaculateMaker *maker = [[CaculateMaker alloc] init];
    maker.add(20).add(30);
    
    NSLog(@"结果为:%.2f",maker.result);
    
#elif ChainBlockTestMethod == ChainBlockTest1
    
    CGFloat result = [NSObject caculate:^(CaculateMaker *maker) {
        maker.add(10).add(20).add(30).add(40);
    }];
    NSLog(@"结果为:%.2f",result);
    
#endif

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
