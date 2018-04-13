//
//  NSObject+Caculate.h
//  ChainBlockTestApp
//
//  Created by ChenMan on 2018/4/11.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CaculateMaker.h"

@interface NSObject (Caculate)

- (CGFloat)caculate:(void (^)(CaculateMaker *make))block;

@end
