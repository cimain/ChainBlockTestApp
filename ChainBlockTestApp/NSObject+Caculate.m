//
//  NSObject+Caculate.m
//  ChainBlockTestApp
//
//  Created by ChenMan on 2018/4/11.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import "NSObject+Caculate.h"

@implementation NSObject (Caculate)

- (CGFloat)caculate:(void (^)(CaculateMaker *make))block;{
    CaculateMaker *make = [[CaculateMaker alloc] init];
    block(make);
    return make.result;
}

@end
