//
//  ArticleViewModel.m
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import "ArticleViewModel.h"
#import "ArticleViewController.h"

@implementation ArticleViewModel

-(void) articleDetailWithArticleModel: (ArticleModel *) articleModel WithViewController: (UIViewController *)superController
{
     ArticleViewController *articleViewController = [[ArticleViewController alloc]init];
    [superController.navigationController pushViewController:articleViewController animated:YES];
     articleViewController.articleModel = articleModel;
}

@end
