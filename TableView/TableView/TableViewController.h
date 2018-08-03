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
#import "ViewDetailController.h"
enum {
    TOAN = 0,
    LY,
    HOA
};

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic) UITableView *table;
@property(strong,nonatomic) NSMutableArray *arr;
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
@property(nonatomic) TableViewCell *cell;
@property(nonatomic)ClassStudent *std;
@property(nonatomic) NSInteger type;
@end

