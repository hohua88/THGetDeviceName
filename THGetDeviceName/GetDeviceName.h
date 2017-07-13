//
//  Deveice.h
//  cocoaPodsDemo
//
//  Created by eddy on 2017/6/10.
//  Copyright © 2017年 eddy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GetDeviceName : NSObject

/**
 *1、暂时更新到iPhone 7Plus，后续新版iPhone出来直接把https://www.theiphonewiki.com/wiki/Models上面新增加入映射表
 *2、如你只需要iPhone可以只保留iPhone的映射关系
 */
+ (NSString *)getDeviceName;

@end
