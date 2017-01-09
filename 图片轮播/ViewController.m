//
//  ViewController.m
//  图片轮播
//
//  Created by autobot on 16/12/23.
//  Copyright © 2016年 autobot. All rights reserved.
//

#import "ViewController.h"
#import "DDLoopView.h"

@interface ViewController (){
    NSArray<NSURL *> *_urls;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //加载数据
    [self loadData];
    //加载界面
    [self loadLoopView];
    
}

//加载数据的方法
- (void)loadData
{
    NSMutableArray *urlArray = [NSMutableArray array];
    for (int i = 0; i< 3; i++) {
        NSString *fileName = [NSString stringWithFormat:@"%02zd",i+1];
        NSURL *fileUrl = [[NSBundle mainBundle]URLForResource:fileName withExtension:@"jpg"];
        [urlArray addObject:fileUrl];
    }
    _urls  = urlArray;
}

- (void)loadLoopView
{
    // 创建 界面
    DDLoopView *loopView = [[DDLoopView alloc] initWithUrls:_urls];
    loopView.frame = CGRectMake(20, 20, self.view.bounds.size.width - 40, 200);
    
    [self.view addSubview:loopView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
