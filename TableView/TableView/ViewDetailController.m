//
//  ViewDetailController.m
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewDetailController.h"
#import "TableViewController.h"
@interface ViewDetailController ()

@end

@implementation ViewDetailController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor grayColor];
    [self initLabelInfo];
    [self setData:_current];
    
   [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
-(void)initLabelInfo{

    lblCode = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 250, 40)];
    lblCode.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:lblCode];
    lblFirstName = [[UILabel alloc]initWithFrame:CGRectMake(100, 250, 250, 40)];
        lblFirstName.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:lblFirstName];
    lblLastName = [[UILabel alloc]initWithFrame:CGRectMake(100, 300, 250, 40)];
        lblLastName.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:lblLastName];
}
- (void)setData:(ClassStudent *)student{
    lblCode.text = [NSString stringWithFormat:@"MA SO :%@",student.code];
    lblFirstName.text = [NSString stringWithFormat:@"HO :%@",student.firstName];
    lblLastName.text = [NSString stringWithFormat:@"TEN :%@",student.lastName];
}
@end
