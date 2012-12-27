//
//  DemoTableViewController.m
//  TableFun.test
//
//  Created by Tom HU on 2012/12/25.
//  Copyright (c) 2012年 Tom HU. All rights reserved.
//

#import "DemoTableViewController.h"
#import "DemoCell.h"
#import "UITools.h"

@interface DemoTableViewController (){
    NSInteger myindex;
    NSInteger resizeHeight, orgHeight;
    CGFloat height;
}

@end

@implementation DemoTableViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    height = 50.0f;
    resizeHeight = 0;
    orgHeight = 0;
}

#pragma -table view
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Demo";
//    if (indexPath.row) {
//        DemoCell *cell = (DemoCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//        if (cell == nil) {
//            NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"DemoCell" owner:self options:nil];
//            cell = [array objectAtIndex:0];
//            [cell setSelectionStyle:UITableViewCellEditingStyleNone];
//        }
//        NSLog(@"11111");
//        return cell;
//    }
    DemoCell *cell = (DemoCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"DemoCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
        [cell setSelectionStyle:UITableViewCellEditingStyleNone];
//        NSLog(@"123456");
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DemoCell *cell = (DemoCell*)[tableView cellForRowAtIndexPath:indexPath];
//    cell.isNeedOpen = YES;
    if (cell.DemoCellText.frame.size.height == [UITools resizeHeight:cell.DemoCellText font:[UIFont systemFontOfSize:17.0f]]) {
        [UITools backOriginalLabel:cell.DemoCellText font:[UIFont systemFontOfSize:17.0f]];
    }else{
        [UITools resizeLabel:cell.DemoCellText font:[UIFont systemFontOfSize:17.0f]];
    }
//    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    [tableView beginUpdates];
//    [tableView endUpdates];
//    [tableView reloadRowsAtIndexPaths:indexPath withRowAnimation:NO];
//    [tableView reloadData];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    DemoCell *cell = (DemoCell*)[tableView cellForRowAtIndexPath:indexPath];
//    if (cell.DemoCellText.frame.size.height == [UITools resizeHeight:cell.DemoCellText font:[UIFont systemFontOfSize:17.0f]]){
//        return 80;
//    }
    return [tableView indexPathForSelectedRow].row == indexPath.row ? 88 : 50;
//    DemoCell *cell = (DemoCell *)[tableView cellForRowAtIndexPath:indexPath];
//    if (cell.isNeedOpen) {
//        return 100;
//    }
//    return 50;
}


@end
