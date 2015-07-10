//
//  ProjectViewController.h
//  xogTalk
//
//  Created by othink on 15/5/25.
//  Copyright (c) 2015年 othink. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ProjectInfoViewController.h"
@interface ProjectViewController : UIViewController{
    int tempScrollViewContentSize;
    UIScrollView *listView;
}

@property(nonatomic,readonly) IBOutlet UIScrollView *listView;

@end

