//
//  ViewController.m
//  API
//
//  Created by TienDat on 8/8/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"
#import "Info.h"
#import "ViewControllerAdd.h"
@interface ViewController ()

@property (strong, nonatomic) NSMutableArray<Info *> *infs;

@end

@implementation ViewController
NSString *cellID = @"cellID";
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self dataJSON];
    self.navigationItem.title = @"INFO NAME";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    [tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellID];
    [self initLayout];
   
}

//GET JSON
-(void)dataJSON{
    NSString *urlString = @"https://api.letsbuildthatapp.com/jsondecodable/courses";
    NSURL *url = [NSURL URLWithString:urlString];
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *err;
        NSArray *arrJSON = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&err];
        if(err){
            NSLog(@"FAILED : %@",err);
            return ;
        }
        NSMutableArray<Info *> *infs = NSMutableArray.new;
        for (NSDictionary *infoDict in arrJSON) {
            NSString *name = infoDict[@"name"];
           NSNumber *number = infoDict[@"number_of_lessons"];
            Info *info = Info.new;
            info.name = name;
          info.number = number;
            [infs addObject:info];
        }
        self.infs =infs;
        dispatch_async(dispatch_get_main_queue(), ^{
            [self->tableView reloadData ];
        });
        
    }]resume];
}
    
    

-(void)initLayout{
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    btnAdd = [[UIBarButtonItem alloc]initWithTitle:@"+" style:UIBarButtonItemStylePlain target:self action:@selector(actionPassViewAdd)];
    btnAdd.tintColor = [UIColor blackColor];
    self.navigationItem.rightBarButtonItem = btnAdd;
    
}
-(void)actionPassViewAdd{
    ViewControllerAdd *viewControllerAdd = [[ViewControllerAdd alloc]init];
    [self.navigationController pushViewController:viewControllerAdd animated:true];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  self.infs.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    Info *info = self.infs[indexPath.row];
    cell.textLabel.text = info.name;
    cell.detailTextLabel.text = info.number.stringValue;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  100;
}



@end
