//
//  ViewController.m
//  BreakOutPrison
//
//  Created by 王盛魁 on 16/7/7.
//  Copyright © 2016年 WangShengKui. All rights reserved.
//

#import "ViewController.h"
#import "ExamineBreakOutPrison.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if ([ExamineBreakOutPrison isBreakOutPrison]){
        NSLog(@"本机已越狱");
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
