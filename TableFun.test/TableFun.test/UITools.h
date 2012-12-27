//
//  UITools.h
//  TableFun.test
//
//  Created by Tom HU on 2012/12/25.
//  Copyright (c) 2012年 Tom HU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UITools : NSObject

+ (CGRect)backOriginalLabel:(UILabel *)label font:(UIFont *)font;
+ (CGRect)resizeLabel:(UILabel *)label font:(UIFont *)font;
+ (NSInteger)resizeHeight:(UILabel *)label font:(UIFont *)font;
@end
