//
//  UITableView+Addition.m
//  MMUIKitLib
//
//  Created by Loren on 2018/6/15.
//

#import "UITableView+Addition.h"

@implementation UITableView (Addition)

+ (instancetype)mm_tableViewWithStyle:(UITableViewStyle)style
                             delegate:(id<UITableViewDelegate>)delebage
                           dataSource:(id<UITableViewDataSource>)dataSource
{
    UITableView * tableView = [[UITableView alloc] initWithFrame:CGRectZero style:style];
    tableView.showsVerticalScrollIndicator = YES;
    tableView.showsHorizontalScrollIndicator = NO;
    tableView.delegate = delebage;
    tableView.dataSource = dataSource;
    return tableView;
}

+ (instancetype)mm_plainStyleTableViewWithDelegate:(id<UITableViewDelegate>)delebage
                                        dataSource:(id<UITableViewDataSource>)dataSource
{
    return [[self class] mm_tableViewWithStyle:UITableViewStylePlain delegate:delebage dataSource:dataSource];
}

+ (instancetype)mm_groupStyleTableViewWithDelegate:(id<UITableViewDelegate>)delebage
                                        dataSource:(id<UITableViewDataSource>)dataSource
{
    return [[self class] mm_tableViewWithStyle:UITableViewStyleGrouped delegate:delebage dataSource:dataSource];
}
@end
