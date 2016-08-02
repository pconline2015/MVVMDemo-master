//
//  Config.h
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/27.
//  Copyright © 2016年 apple. All rights reserved.
//

#ifndef Config_h
#define Config_h

//定义返回请求数据的block类型
typedef void (^ReturnValueBlock) (id returnValue);
typedef void (^ErrorCodeBlock) (id errorCode);
typedef void (^FailureBlock)();
typedef void (^NetWorkBlock)(BOOL netConnetState);

#define DDLog(xx, ...)  NSLog(@"%s(%d): " xx, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)

#define INFOLIST @"http://mrobot.pcauto.com.cn/v2/cms/channel1?pageNo=1&pageSize=20"

#endif /* Config_h */
