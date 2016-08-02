//
//  ArticleViewModel.h
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArticleModel.h"

@interface ArticleViewModel :  NSObject
//文章页的viewModel

-(void) articleDetailWithArticleModel: (ArticleModel *) publicModel WithViewController: (UIViewController *)superController;

@end
