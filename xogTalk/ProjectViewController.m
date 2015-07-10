//
//  ProjectViewController.m
//  xogTalk
//
//  Created by othink on 15/5/25.
//  Copyright (c) 2015年 othink. All rights reserved.
//
#import "ProjectViewController.h"

@interface ProjectViewController ()

@end

@implementation ProjectViewController

@synthesize listView;

- (void)viewDidLoad {
    NSMutableArray *tempArray=[[NSMutableArray alloc] init];
    int viewH=150;
    int vd=5;
    for (int i=0; i<10; i++) {
        UIView *tempView=[[UIView alloc] init];
        [tempView setBackgroundColor:[UIColor greenColor]];
        [listView addSubview:tempView];
        [tempView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [tempArray addObject:tempView];
        
        NSArray *s_h=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[tempView(==dh)]" options:0 metrics:@{@"dh":@(viewH)} views:@{@"tempView":tempView}];
        NSArray *s_w=[NSLayoutConstraint constraintsWithVisualFormat:@"H:[tempView(==dw)]" options:0 metrics:@{@"dw":@(CGRectGetWidth(self.view.frame)-10)} views:@{@"tempView":tempView}];
        NSArray *s_l=[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-dh-[tempView]" options:0 metrics:@{@"dh":@(5)} views:@{@"tempView":tempView}];
        NSArray *s_t;
        if (i==0) {
            s_t=[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-dv-[tempView]" options:0 metrics:@{@"dv":@(vd)} views:@{@"tempView":tempView}];
        }else{
            UIView *tempViewc=(UIView *)[tempArray objectAtIndex:i-1];
            s_t=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[lastView]-dv-[tempView]" options:0 metrics:@{@"dv":@(vd)} views:@{@"tempView":tempView,@"lastView":tempViewc}];
        }
        [listView addConstraints:s_h];
        [listView addConstraints:s_w];
        [listView addConstraints:s_t];
        [listView addConstraints:s_l];
    }
    tempScrollViewContentSize=10*(viewH+vd)+vd;
    [tempArray removeAllObjects];
    
    NSLog(@"h:%f,w:%f",listView.contentSize.height,listView.contentSize.width);
    
    NSLog(@"ProjectViewController Load");
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    //为了兼容ios版本,所以在此设置scrollView ContentSize
    [listView setContentSize:CGSizeMake(CGRectGetWidth(self.view.frame), tempScrollViewContentSize)];
    NSLog(@"ProjectViewController Appear");
    [super viewDidAppear:animated];
}

-(void)enterViewInfo:(UIButton *)sender{
    [self performSegueWithIdentifier:@"ProjectInfo" sender:nil];;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
