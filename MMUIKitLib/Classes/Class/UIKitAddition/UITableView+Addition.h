//
//  UITableView+Addition.h
//  MMUIKitLib
//
//  Created by Loren on 2018/6/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (Addition)

/**
 默认不显示横向滚动条 显示纵向滚动条
 */
+ (instancetype)mm_tableViewWithStyle:(UITableViewStyle)style
                             delegate:(id<UITableViewDelegate>)delebage
                           dataSource:(id<UITableViewDataSource>)dataSource;

+ (instancetype)mm_plainStyleTableViewWithDelegate:(id<UITableViewDelegate>)delebage
                                        dataSource:(id<UITableViewDataSource>)dataSource;

+ (instancetype)mm_groupStyleTableViewWithDelegate:(id<UITableViewDelegate>)delebage
                                        dataSource:(id<UITableViewDataSource>)dataSource;
@end

NS_ASSUME_NONNULL_END
