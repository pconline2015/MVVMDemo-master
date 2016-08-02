//
//  TableViewDataSource.m
//  MVVMDemo
//
//  Created by PCOnline2015 on 16/7/29.
//  Copyright © 2016年 Pconline. All rights reserved.
//

#import "TableViewDataSource.h"
#import "CustomTableViewCell.h"

@implementation TableViewDataSource
//列表的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _array.count;
}
//列表每一行的内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (cell == nil) {
        cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.titleLabel.text=((CustomModel *)[_array objectAtIndex:indexPath.row]).title;
    cell.commentLable.text= [NSString stringWithFormat:@"%ld评论" ,(long)((CustomModel *)[_array objectAtIndex:indexPath.row]).count];
    cell.timeLabel.text= ((CustomModel *)[_array objectAtIndex:indexPath.row]).timeStr;
    
    NSString *imageUrl=  ((CustomModel *)[_array objectAtIndex:indexPath.row]).imageUrl;
    
    if ([imageUrl isKindOfClass:[NSString class]]){
       [cell.infoImage setImageWithURL :[NSURL URLWithString: imageUrl]];
    }else if ([imageUrl isKindOfClass:[NSArray class]]){
        NSArray *arr=(NSArray *) imageUrl;
        
        [cell.infoImage setImageWithURL :[NSURL URLWithString:[arr objectAtIndex:0]]];
    }
    
    return cell;
}



@end
