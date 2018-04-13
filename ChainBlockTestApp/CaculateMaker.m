//
//  CaculateMaker.m
//  ChainBlockTestApp
//
//  Created by ChenMan on 2018/4/11.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "CaculateMaker.h"

@implementation CaculateMaker

- (CaculateMaker *(^)(CGFloat num))add;{
    return ^CaculateMaker *(CGFloat num){
        _result += num;
        return self;
    };
}

@end
