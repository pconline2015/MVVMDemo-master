//
//  TableViewDelegate.m
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import "TableViewDelegate.h"
#import "ArticleViewModel.h"

@implementation TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_array.count>0 && indexPath.row<_array.count) {
        
        NSString *articleUrl=((CustomModel *)[_array objectAtIndex:indexPath.row]).articleUrl;
        
        
        if (self.parentController!=nil){
          ArticleViewModel  *articleViewModel= [[ArticleViewModel alloc]init];
          ArticleModel      *articleModel= [[ArticleModel alloc]init];
          articleModel.articleUrl=articleUrl;
          [articleViewModel articleDetailWithArticleModel:articleModel WithViewController:self.parentController];
        }
    }    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 81;
}
@end
