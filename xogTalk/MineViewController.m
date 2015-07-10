//
//  ViewController.m
//  xogTalk
//
//  Created by othink on 15/5/25.
//  Copyright (c) 2015年 othink. All rights reserved.
//

#import "MineViewController.h"

@interface MineViewController ()

@end

@implementation MineViewController

- (void)viewDidLoad {
    NSLog(@"MineViewController Load");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"MineViewController Appear");
    self.navigationController.navigationBarHidden=YES;
    [super viewWillAppear:animated];
}
-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"MineViewController Disappear");
    self.navigationController.navigationBarHidden=NO;
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
