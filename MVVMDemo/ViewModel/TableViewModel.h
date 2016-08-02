//
//  TableViewModel.h
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^callback) (NSArray *array);

@interface TableViewModel : NSObject

//tableView头部刷新的网络请求
- (void)headerRefreshRequestWithCallback:(callback)callback;


@end
