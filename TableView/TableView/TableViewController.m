//
//  ViewController.m
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "TableViewController.h"
#import "ViewDetailController.h"
#import "TableViewCell.h"
@interface TableViewController ()
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _type = 0;
    [self studentS];
    self.table = [[UITableView alloc] initWithFrame:CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.table.backgroundColor = [UIColor orangeColor];
    self.table.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingNone;
    self.table.dataSource = self;
    self.table.delegate = self;
    [self.table registerClass:[TableViewCell class]forCellReuseIdentifier:@"TableViewCell"];
    [self.view addSubview:self.table];
    [self initButton];
}

-(void)studentS {
    ClassStudent *student = [[ClassStudent alloc]init];
    ClassStudent *student1 = [[ClassStudent alloc]init];
    ClassStudent *student2 = [[ClassStudent alloc]init];
    ClassStudent *student3 = [[ClassStudent alloc]init];
    [student initInforWithCode:@"001" firstName:@"NGUYEN" lastName:@"A" mathScore:0 physicScore:0 chemistryScore:7];
    [student1 initInforWithCode:@"002" firstName:@"NGUYEN" lastName:@"B" mathScore:6 physicScore:4 chemistryScore:7];
    [student2 initInforWithCode:@"003" firstName:@"NGUYEN" lastName:@"C" mathScore:9 physicScore:10 chemistryScore:10];
    [student3 initInforWithCode:@"004" firstName:@"NGUYEN" lastName:@"D" mathScore:9 physicScore:10 chemistryScore:10];
    self.arr = [[NSMutableArray alloc] init];
    [self.arr addObject:student];
    [self.arr addObject:student1];
    [self.arr addObject:student2];
    [self.arr addObject:student3];
    _arr = [self sortPointType:0];
    }


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arr.count;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if ((editingStyle = UITableViewCellEditingStyleDelete)){
        [self.arr removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString*cellIndentifier = @"TableViewCell";
    _cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    _std = [self.arr objectAtIndex:indexPath.row];
    [_cell initLayout];
     [_cell setData:_std type:_type ];
    if (_cell == nil)
    {
        _cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
    }
    return _cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0f;
}
//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
//
//}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewDetailController *viewDetailController = [[ViewDetailController alloc]init];
    viewDetailController.current = self.arr[indexPath.row];
    [self.navigationController pushViewController:viewDetailController animated:true];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)initButton{
    
    UIView *buttonContainer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 450, 40)];
    buttonContainer.backgroundColor = [UIColor clearColor];
    UIButton *button0 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button0 setFrame:CGRectMake(0, 0, 135, 40)];
    [button0 addTarget:self action:@selector(initMath) forControlEvents:UIControlEventTouchUpInside];
    [button0 setTitle:@"TOAN" forState:UIControlStateNormal];
    [button0 setShowsTouchWhenHighlighted:YES];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button1 setFrame:CGRectMake(135, 0, 135, 40)];
    [button1 addTarget:self action:@selector(initPhysic) forControlEvents:UIControlEventTouchUpInside];
    [button1 setTitle:@"LY" forState:UIControlStateNormal];
    [button1 setShowsTouchWhenHighlighted:YES];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [button2 setFrame:CGRectMake(270, 0, 135, 40)];
    [button2 addTarget:self action:@selector(initChemis) forControlEvents:UIControlEventTouchUpInside];
    [button2 setTitle:@"HOA" forState:UIControlStateNormal];
    [button2 setShowsTouchWhenHighlighted:YES];
    
   
    [buttonContainer addSubview:button0];
      [buttonContainer addSubview:button1];
      [buttonContainer addSubview:button2];
    
    //add your spacer images and button1 and button2...
    
    self.navigationItem.titleView = buttonContainer;
//    UIButton *buttonMath = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 145, 40)];
//    [buttonMath addTarget:self action:@selector(initMath) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton *buttonPhysic = [[UIButton alloc]initWithFrame:CGRectMake(145, 0, 145, 40)];
//     [buttonPhysic addTarget:self action:@selector(initPhysic) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton *buttonChemis = [[UIButton alloc]initWithFrame:CGRectMake(290, 0, 125, 40)];
//     [buttonChemis addTarget:self action:@selector(initChemis) forControlEvents:UIControlEventTouchUpInside];
//
//    buttonMath.backgroundColor = [UIColor grayColor];
//    buttonPhysic.backgroundColor = [UIColor grayColor];
//    buttonChemis.backgroundColor = [UIColor grayColor];
//
//    [buttonMath setTitle:@"TOAN" forState:UIControlStateNormal];
//    [buttonPhysic setTitle:@"LY" forState:UIControlStateNormal];
//    [buttonChemis setTitle:@"HOA" forState:UIControlStateNormal];
    
//    [self.view addSubview:buttonMath];
//     [self.view addSubview:buttonPhysic];
//     [self.view addSubview:buttonChemis];
}
-(void)initMath{
    _type = TOAN;
    _arr = [self sortPointType:_type];
    [self.table reloadData];
}
-(void)initPhysic{
    _type = LY;
    _arr = [self sortPointType:_type];
    NSLog(@"here");
    [self.table reloadData];
}
-(void)initChemis{
    _type = HOA;
    _arr = [self sortPointType:_type];
     NSLog(@"here");
    [self.table reloadData];
}
- (NSMutableArray *)sortPointType:(NSInteger)type {
    NSMutableArray *result;
   NSArray *sort = [ _arr sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
       if ([obj1 isKindOfClass:[ClassStudent class]] && [obj2 isKindOfClass:[ClassStudent class]]) {
           ClassStudent *std1 = (ClassStudent*)obj1;
           ClassStudent *sdt2 = (ClassStudent*)obj2;
           if (type == LY) {
               if(std1.physicScore < sdt2.physicScore){
                   return NSOrderedDescending;
               }else if(std1.physicScore > sdt2.physicScore){
                   return NSOrderedAscending;
                   }else{
                       return  NSOrderedSame;
                   }
           }else if (type == HOA) {
               if(std1.chemistryScore < sdt2.chemistryScore){
                   return NSOrderedDescending;
               }else if(std1.chemistryScore > sdt2.chemistryScore){
                   return NSOrderedAscending;
               }else{
                   return  NSOrderedSame;
               }
           }else {
               if(std1.mathScore < sdt2.mathScore){
                   return NSOrderedDescending;
               }else if (std1.mathScore > sdt2.mathScore){
                   return NSOrderedAscending;
               }else {
                   return NSOrderedSame;
               }
           }
       }
       return NSOrderedSame;
    }];
    result = [[NSMutableArray alloc] initWithArray:sort];
    return result;
}
@end
