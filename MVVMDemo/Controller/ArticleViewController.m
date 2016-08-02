//
//  ArticleViewController.m
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import "ArticleViewController.h"
#import "ArticleViewModel.h"

@interface ArticleViewController ()
@property (nonatomic,strong)ArticleViewModel *articleViewModel;
@property (nonatomic,strong)UIWebView *artivleWebview;
@end

@implementation ArticleViewController
//初始化文章页
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (iOS7) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    [self.view addSubview:self.artivleWebview];
    [self.artivleWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.articleModel.articleUrl]]];
    
    [self useDefaultBackButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//懒加载文章的webview
-(UIWebView *)artivleWebview{
   if(_artivleWebview == nil) {
     _artivleWebview=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, WScreen, HScreen-64)];
   }
    return _artivleWebview;
}

//定义返回按钮
- (void)useDefaultBackButton
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 60, 44)];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    
    [backButton setTitle:@" 返回" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    backButton.titleLabel.font = [UIFont systemFontOfSize:17];
    backButton.frame = CGRectMake(0, 2, 60, 40);
    [backButton addTarget:self action:@selector(backButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [view addSubview:backButton];
    UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    
    self.navigationItem.hidesBackButton = YES;
    self.navigationItem.leftBarButtonItem = backBarButtonItem;
}

//返回按钮响应事件
- (void)backButtonClicked:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc{
    

    _artivleWebview=nil;
}


@end
