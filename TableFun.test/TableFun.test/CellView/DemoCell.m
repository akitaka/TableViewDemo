//
//  DemoCell.m
//  TableFun.test
//
//  Created by Tom HU on 2012/12/25.
//  Copyright (c) 2012年 Tom HU. All rights reserved.
//

#import "DemoCell.h"

@implementation DemoCell
@synthesize DemoCellText;
//@synthesize isNeedOpen;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
