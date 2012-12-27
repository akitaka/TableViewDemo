//
//  TBFViewController.m
//  TableFun.test
//
//  Created by Tom HU on 2012/12/25.
//  Copyright (c) 2012年 Tom HU. All rights reserved.
//

#import "TBFViewController.h"
#import "UITools.h"

@interface TBFViewController ()

@end

@implementation TBFViewController

- (void)viewDidLoad
{
    self.label.backgroundColor = [UIColor grayColor];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resizeButton:(id)sender {
    if (self.label.frame.size.height != [UITools resizeHeight:self.label font:[UIFont systemFontOfSize:17.0f]]) {
        [UITools resizeLabel:self.label font:[UIFont systemFontOfSize:17.0f]];
    }else{
        [UITools backOriginalLabel:self.label font:[UIFont systemFontOfSize:17.0f]];
        NSLog(@"hello");
    }
    NSLog(@"%d",[UITools resizeHeight:self.label font:[UIFont systemFontOfSize:17.0f]]);

}

- (void)viewDidUnload {
    [self setLabel:nil];
    [super viewDidUnload];
}
@end
