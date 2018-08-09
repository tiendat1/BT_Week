//
//  ViewController.h
//  API
//
//  Created by TienDat on 8/8/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Info.h"
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *tableView;
    UIBarButtonItem *btnAdd;
}


@end

