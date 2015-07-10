//
//  ProjectViewController.m
//  xogTalk
//
//  Created by othink on 15/5/25.
//  Copyright (c) 2015年 othink. All rights reserved.
//
#import "ProjectInfoViewController.h"

@interface ProjectInfoViewController ()

@end

@implementation ProjectInfoViewController

- (void)viewDidLoad {
    NSLog(@"ProjectInfoViewController Load");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"ProjectInfoViewController Appear");
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
