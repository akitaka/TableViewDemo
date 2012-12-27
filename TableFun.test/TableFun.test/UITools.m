//
//  UITools.m
//  TableFun.test
//
//  Created by Tom HU on 2012/12/25.
//  Copyright (c) 2012年 Tom HU. All rights reserved.
//

#import "UITools.h"

@implementation UITools

+ (CGRect)resizeLabel:(UILabel *)label font:(UIFont *)font
{
    CGRect rect = label.frame;
    
    [label setNumberOfLines:0];
    CGSize size = CGSizeMake(rect.size.width, MAXFLOAT);
    CGSize labelsize = [label.text sizeWithFont:font constrainedToSize:size lineBreakMode:UILineBreakModeWordWrap];
    [label setFont:font];
    
    rect.size.height = labelsize.height;
    [label setFrame:rect];
    
    return rect;
}

+ (CGRect)backOriginalLabel:(UILabel *)label font:(UIFont *)font
{
    CGRect rect = label.frame;
    
    [label setNumberOfLines:1];
    CGSize size = CGSizeMake(rect.size.width, 0);
    CGSize labelsize = [label.text sizeWithFont:font constrainedToSize:size lineBreakMode:UILineBreakModeWordWrap];
    [label setFont:font];
    
    rect.size.height = labelsize.height;
    [label setFrame:rect];
    
    return rect;
}

+ (NSInteger)resizeHeight:(UILabel *)label font:(UIFont *)font
{
    CGRect rect = label.frame;
    
    [label setNumberOfLines:0];
    CGSize size = CGSizeMake(rect.size.width, MAXFLOAT);
    CGSize labelsize = [label.text sizeWithFont:font constrainedToSize:size lineBreakMode:UILineBreakModeWordWrap];
    
    return labelsize.height;
}
@end
