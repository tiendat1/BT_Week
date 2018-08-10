//
//  ViewController.m
//  AFNetworking
//
//  Created by TienDat on 8/10/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking/AFNetworking.h"
#import "Singleton.h"

@interface ViewController (){
  
    
}

@end
@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
   [_tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"cell"];
    [self initTableView];
//    [[Singleton shareSingleton]starA];
    

}

-(void)initTableView{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    [self.view addSubview: _tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [[Singleton shareSingleton]starA:^(BOOL isCompleted) {
        self.reponseJSON =    [Singleton shareSingleton].reponseJSON1;
        [self.tableView reloadData];
    }];
    
    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    [manager GET:@"https://api.letsbuildthatapp.com/jsondecodable/courses" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
//        self->_reponseJSON = responseObject;
//        [self->_tableView reloadData];
//        NSLog(@"JSON: %@", responseObject);
//    } failure:^(NSURLSessionTask *operation, NSError *error) {
//        NSLog(@"Error: %@", error);
//    }];
    
}
    
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.reponseJSON.count;
}
    
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
    cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
}
    NSArray *reponseData = self.reponseJSON[indexPath.row];
    cell.textLabel.text = [reponseData valueForKey:@"name"];
    return cell;
}
    
    - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
        return  100;
    }
    
@end
