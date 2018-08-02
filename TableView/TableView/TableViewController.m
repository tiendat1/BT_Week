//
//  ViewController.m
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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
//-(void)initTabBar{
//    UITabBarController *tabBar = [[UITabBarController alloc]init];
//    NSMutableArray *local =  [[NSMutableArray alloc]initWithCapacity:3];
//    [self.view addSubview: tabBar];
//
//
//}
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
    }

//-(void)setUpRank{
//    NSMutableArray *array = [[NSMutableArray alloc]init];(
//    for (int i = 0 ; i <= self.arr.count ; i++)
//    {
//        if((self.arr[i] childItemCount) == 3)]
//        {
//            
//        }
//    }
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.arr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString*cellIndentifier = @"TableViewCell";
    ClassStudent *std = [self.arr objectAtIndex:indexPath.row];
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    [cell initLayout];
    [cell setData:std type:1];
    if (cell == nil)
    {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
        //[cell initLayout];
        //[cell setData:std type:1];
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100.0f;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)initButton{
    
//    UIView *buttonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 40)];
//    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    button1.backgroundColor = [UIColor grayColor];
//    button1.frame = CGRectMake(0, 0, 40, 40);
//    
//    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    button2.backgroundColor = [UIColor grayColor];
//    button2.frame = CGRectMake(70, 0, 40, 40);
//    
//    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
//    button3.backgroundColor = [UIColor greenColor];
//    button3.frame = CGRectMake(140, 0, 40, 40);
//    
//    [buttonView addSubview:button1];
//    [buttonView addSubview:button2];
//    [buttonView addSubview:button3];
//    
//    self.navigationItem.titleView = buttonView;
//    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"HOA" style:UIBarButtonItemStyleDone target:self action:@selector(rightBtnClick)];
//    self.navigationItem.rightBarButtonItem = rightBtn;
//
//    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithTitle:@"TOAN" style:UIBarButtonItemStyleDone target:self action:@selector(rightBtnClick)];
//    self.navigationItem.leftBarButtonItem = leftBtn;
//
//    UIBarButtonItem *midBtn = [[UIBarButtonItem alloc]initWithTitle:@"LY" style:UIBarButtonItemStyleDone target:self action:@selector(rightBtnClick)];
//    self.navigationItem.titleView = midBtn;
//
    UIButton *buttonMath = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 145, 40)];
    UIButton *buttonPhysic = [[UIButton alloc]initWithFrame:CGRectMake(145, 0, 145, 40)];
    UIButton *buttonChemis = [[UIButton alloc]initWithFrame:CGRectMake(290, 0, 125, 40)];
    buttonMath.backgroundColor = [UIColor grayColor];
    buttonPhysic.backgroundColor = [UIColor grayColor];
    buttonChemis.backgroundColor = [UIColor grayColor];
    [buttonMath setTitle:@"TOAN" forState:UIControlStateNormal];
    [buttonPhysic setTitle:@"LY" forState:UIControlStateNormal];
    [buttonChemis setTitle:@"HOA" forState:UIControlStateNormal];
    [self.view addSubview:buttonMath];
     [self.view addSubview:buttonPhysic];
     [self.view addSubview:buttonChemis];
}

@end
