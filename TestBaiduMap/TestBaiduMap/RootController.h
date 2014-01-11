//
//  RootController.h
//  TestBaiduMap
//
//  Created by wu on 1/12/14.
//  Copyright (c) 2014 wu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,retain)IBOutlet UITableView *tableView;
@end
