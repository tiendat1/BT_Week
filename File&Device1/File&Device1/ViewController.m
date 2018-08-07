//
//  ViewController.m
//  File&Device1
//
//  Created by TienDat on 8/6/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self.tblView registerClass:[TableViewCell class]forCellReuseIdentifier:@"TableViewCell"];
    [self initLayout];
    [self initUrl];
  

}

-(void)initUrl{
    urlString =@"http://thuthuatphanmem.vn/uploads/2017/11/05/hinh-nen-4k-dep-1_124942.jpg";
    url = [[NSURL alloc]initWithString:urlString];
}
- (void)initLayout{
//    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 30, self.view.bounds.size.width, self.view.bounds.size.height/2)];
//    [self.view addSubview:_imageView];
    _tblView = [[UITableView alloc]initWithFrame:CGRectMake(0, 30, self.view.bounds.size.width, self.view.bounds.size.height/2)];
    _tblView.delegate =self;
    _tblView.dataSource =self;
    [self.view addSubview:_tblView];
    
    _btnDownLoad =  [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-50, 430, 100, 50)];
    [_btnDownLoad setTitle:@"DOWLOAD" forState:UIControlStateNormal];
    [_btnDownLoad setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _btnDownLoad.backgroundColor = [UIColor lightTextColor];
    [_btnDownLoad addTarget:self action:@selector(actionDowload) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnDownLoad];
    
    _downLoadIndicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    _downLoadIndicator.frame = CGRectMake(self.view.bounds.size.width/2-25, 490, 50, 50);
    _downLoadIndicator.color = [UIColor blackColor];
    [_downLoadIndicator stopAnimating];
    [_downLoadIndicator setHidden:true];
    [self.view addSubview:_downLoadIndicator];
}


- (void)actionDowload{
//self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
//     [_downLoadIndicator setHidden:false];
//     [_downLoadIndicator startAnimating];
//
  
//    for (int i = 0; i < 100; i ++) {
//        dispatch_async(dispatch_get_main_queue(), ^{
//
//            [[[NSURLSession sharedSession]dataTaskWithURL:self->url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//                if(error == nil && data != nil){
//                    [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//                        self->_imageView = [[UIImageView alloc]initWithFrame:CGRectMake(50*(i), 50, 50, 50)];
//                        self->_imageView.tag = i;
//                        _imageView.image = [UIImage imageWithData:data];
//
//                        [self performSelectorOnMainThread:@selector(addView:) withObject:self->_imageView waitUntilDone:NO];
//                    }];
//                };
//            }]resume];
//
//        });
//    }
}

- (void)addView:(id)sender
{
    UIImageView *v = (UIImageView*)sender;
    [self.view  addSubview:v];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"TableViewCell";
    _cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    _cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    [_cell initLayout];
    
    return  _cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  50.0f;
}
//    [[[NSURLSession sharedSession]dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        if(error == nil && data != nil){
//            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//                [self->_downLoadIndicator setHidden:true];
//                self.imageView.image = [UIImage imageWithData:data];
//
//            }];
//        };
//    }]resume];
//}

//-(void)initLayout{
//    buttonDownload = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-75, self.view.bounds.size.height/2 -25, 150, 50)];
//    buttonDownload.backgroundColor = [UIColor grayColor];
//    [buttonDownload setTitle:@"CHECK" forState:UIControlStateNormal];
//    [buttonDownload addTarget:self action:@selector(fileManager) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:buttonDownload];
//}
//-(void)fileManager{
//    NSFileManager *filemgr = [NSFileManager defaultManager];
//    NSString *docDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
//    NSString *dirName1 = [docDir stringByAppendingPathComponent:@"FilePath1"];
//    NSString *fromPath = [dirName1 stringByAppendingPathComponent:@"txt.rtf"];
//    NSString *dirName2 = [docDir stringByAppendingPathComponent:@"FilePath2"];
//    NSString *toPath = [dirName2 stringByAppendingPathComponent:@"fdfd.rtf"];
//    [filemgr createDirectoryAtPath:dirName1 withIntermediateDirectories:YES attributes:nil error:nil];
//     [filemgr createDirectoryAtPath:dirName2 withIntermediateDirectories:YES attributes:nil error:nil];
//
//    NSError *err;
//    [filemgr moveItemAtPath:fromPath  toPath:toPath error:&err];
//}

//-(void)fileManager{
//    NSFileManager *filemgr = [NSFileManager defaultManager];
//    NSString *docDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
//    NSString *dirName1 = [docDir stringByAppendingPathComponent:@"FilePath1"];
//    NSString *fromPath = [dirName1 stringByAppendingPathComponent:@"txt.rtf"];
//    NSString *dirName2 = [docDir stringByAppendingPathComponent:@"FilePath2"];
//    NSString *toPath = [dirName2 stringByAppendingPathComponent:@"fdfd.rtf"];
//    [filemgr createDirectoryAtPath:dirName1 withIntermediateDirectories:YES attributes:nil error:nil];
//     [filemgr createDirectoryAtPath:dirName2 withIntermediateDirectories:YES attributes:nil error:nil];
//
//    NSError *err;
//    [filemgr m:fromPath toPath:toPath error:&err];
//}

//-(void)fileManager{
//        NSFileManager *filemgr = [NSFileManager defaultManager];
//        NSString *docDir = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
//        NSString *dirName2 = [docDir stringByAppendingPathComponent:@"FilePath1"];
//        NSString *dirName1 = [docDir stringByAppendingPathComponent:@"FilePath"];
//        NSString *toPath = [dirName2 stringByAppendingPathComponent:@"txt.rtf"];
//         [filemgr createDirectoryAtPath:dirName2 withIntermediateDirectories:YES attributes:nil error:nil];
//    NSData *data = [filemgr contentsAtPath:toPath];
//    [filemgr createFileAtPath:dirName1 contents:data attributes:nil];
//    
//}
@end
