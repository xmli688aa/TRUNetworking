//
//  ETViewController.m
//  TRUNetworking
//
//  Created by szxiaobei on 08/08/2020.
//  Copyright (c) 2020 szxiaobei. All rights reserved.
//

#import "ETViewController.h"
#import "ETNetworking.h"

@interface ETViewController ()

@end

@implementation ETViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSInteger result = [ETNetworking caculateNumWithA:1 andB:2];
    NSLog(@"计算结果：%ld",result);
  
}


- (IBAction)gotoCarVC:(id)sender {
    UIViewController *vc = [ETNetworking CarVCWithUserInfo:@{@"name":@"ethon"}];
    [self.navigationController pushViewController:vc animated:YES];
//    [self presentViewController:vc animated:YES completion:nil];
}

@end
