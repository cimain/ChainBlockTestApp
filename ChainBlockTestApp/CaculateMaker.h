//
//  CaculateMaker.h
//  ChainBlockTestApp
//
//  Created by ChenMan on 2018/4/11.
//  Copyright © 2018年 cimain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CaculateMaker : NSObject

@property (nonatomic, assign) CGFloat result;

- (CaculateMaker *(^)(CGFloat num))add;


@end
