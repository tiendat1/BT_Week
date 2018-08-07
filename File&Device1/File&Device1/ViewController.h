//
//  ViewController.h
//  File&Device1
//
//  Created by TienDat on 8/6/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <Availability.h>
#import "TableViewCell.h"



@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    NSString *urlString;
    NSURL *url;
}
//    UIButton *buttonDownload;
@property(strong,nonatomic) UIButton *btnDownLoad;
@property(strong,nonatomic) UIImageView *imageView;
@property(strong,nonatomic) UIActivityIndicatorView *downLoadIndicator;
@property(strong,nonatomic)UITableView *tblView;
@property(nonatomic) TableViewCell *cell;
@end

