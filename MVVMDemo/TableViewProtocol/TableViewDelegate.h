//
//  TableViewDelegate.h
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface TableViewDelegate : NSObject<UITableViewDelegate>
@property (nonatomic,strong) NSArray *array;
@property (nonatomic,strong) UIViewController *parentController;

@end
