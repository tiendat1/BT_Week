//
//  ViewController.h
//  AFNetworking
//
//  Created by TienDat on 8/10/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Singleton.h"
#import "AFNetworking/AFNetworking.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
}
@property (nonatomic)   NSArray *reponseJSON;
@property (nonatomic)    UITableView *tableView;
@end

