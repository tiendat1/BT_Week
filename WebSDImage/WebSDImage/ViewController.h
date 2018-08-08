//
//  ViewController.h
//  SDWebImage
//
//  Created by TienDat on 8/8/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tableView;
}
@property(strong,nonatomic)NSArray *dataSource;

@end

