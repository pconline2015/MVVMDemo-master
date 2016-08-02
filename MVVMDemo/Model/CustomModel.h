//
//  CustomModel.h
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//
// 列表数据的model类

#import <Foundation/Foundation.h>

@interface CustomModel : NSObject
@property (nonatomic,strong) NSString *title;//标题
@property (nonatomic,assign) NSInteger count;//评论说
@property (nonatomic,strong) NSString  *timeStr;//时间
@property (nonatomic,strong) NSString  *imageUrl;//图片链接
@property (nonatomic,strong) NSString  *articleUrl;//文章链接
@property (nonatomic,strong) NSString  *articleId;//文章id
@end
