//
//  ViewController.m
//  SDWebImage
//
//  Created by TienDat on 8/8/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface ViewController ()

@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initLayout];
    _dataSource = [[NSArray alloc]initWithObjects:
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                     @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                     @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                     @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                     @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                     @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   @{@"url":@"https://images.kienthuc.net.vn/zoom/1000/uploaded/trucchinh2/2017_08_02/son2-8/newfolder/kham-pha-bi-mat-ve-ba-phong-cach-giay-sneaker-dac-trung-hinh-3.jpg"},
                   nil];
}

- (void)initLayout{
    tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [_dataSource count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"]; 
    }
    NSURL *url = [[ _dataSource objectAtIndex:indexPath.row] valueForKey:@"url"];
    [cell.imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"notimage"]];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150.0f;
}



@end
