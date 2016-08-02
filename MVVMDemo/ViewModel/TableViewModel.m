//
//  TableViewModel.m
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import "TableViewModel.h"
#import "CustomModel.h"
@interface TableViewModel ()

@end

@implementation TableViewModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


//刷新的网络请求
- (void)headerRefreshRequestWithCallback:(callback)callback
{
        //  后台执行：
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
          
            [NetRequestClass NetRequestGETWithRequestURL:INFOLIST WithParameter:nil WithReturnValeuBlock:^(id returnValue) {

                DDLog(@"%@", returnValue);
                NSArray *dataArr= returnValue[@"data"];
                NSMutableArray *arr=[NSMutableArray array];
                for (int i=0; i<dataArr.count; i++) {
                    CustomModel *model=[[CustomModel alloc] init];
                    model.title=[dataArr objectAtIndex:i] [@"title"];
                    model.count=[[dataArr objectAtIndex:i] [@"count"] integerValue];
                    model.timeStr=[dataArr objectAtIndex:i][@"pubDate"];
                    model.imageUrl=[dataArr objectAtIndex:i][@"image"];
                    model.articleUrl=[dataArr objectAtIndex:i][@"url"];
                    model.articleId=[dataArr objectAtIndex:i][@"id"];
                    [arr addObject:model];
                }
                
                dispatch_async(dispatch_get_main_queue(), ^{
                       //主线程刷新视图
                        callback(arr);
                });
                
                
            } WithErrorCodeBlock:^(id errorCode) {
                DDLog(@"%@", errorCode);
                //        [self errorCodeWithDic:errorCode];
                
            } WithFailureBlock:^{
                //        [self netFailure];
                DDLog(@"网络异常");
                
            }];

            
        });
}


@end
