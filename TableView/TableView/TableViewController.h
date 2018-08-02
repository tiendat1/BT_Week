//
//  ViewController.h
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassStudent.h"
#import "TableViewCell.h"
@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic) UITableView *table;
@property(strong,nonatomic) NSMutableArray *arr;

@end

