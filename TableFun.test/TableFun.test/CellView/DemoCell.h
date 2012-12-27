//
//  DemoCell.h
//  TableFun.test
//
//  Created by Tom HU on 2012/12/25.
//  Copyright (c) 2012年 Tom HU. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoCell : UITableViewCell{
    IBOutlet UILabel *DemoCellText;
//    BOOL isNeedOpen; 不需要了
}
@property (retain, nonatomic) UILabel *DemoCellText;
//@property (nonatomic, assign) BOOL isNeedOpen;
@end
