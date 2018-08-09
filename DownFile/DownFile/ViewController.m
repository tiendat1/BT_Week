//
//  ViewController.m
//  DownFile
//
//  Created by TienDat on 8/9/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    [prvLoad setProgress:0 animated:NO];
    [self initLayout];
}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
    NSLog(@"%@",location);
    NSString *videoPath  = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSFileManager *flm = [NSFileManager defaultManager];
    NSURL *url = [NSURL URLWithString:[videoPath stringByAppendingPathComponent:@"flash.mp4"]];
    if([flm fileExistsAtPath:[location path]]){
        [flm replaceItemAtURL:url withItemAtURL:location backupItemName:nil options:NSFileManagerItemReplacementUsingNewMetadataOnly resultingItemURL:nil error:nil];
       // UISaveVideoAtPathToSavedPhotosAlbum([url path], nil, nil, nil) ;
    
    }

}

- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
    [prvLoad setProgress:totalBytesExpectedToWrite / totalBytesExpectedToWrite animated:TRUE];
    
}

-(void)initLayout{
    btnDown = [[UIButton alloc]initWithFrame:CGRectMake(30, self.view.bounds.size.height/2-20, 100, 40)];
    [btnDown setTitle:@"DOWN" forState:UIControlStateNormal];
    [btnDown setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btnDown.backgroundColor = [UIColor clearColor];
    btnDown.layer.cornerRadius=5.0f;
    btnDown.layer.masksToBounds=YES;
    btnDown.layer.borderColor=[[UIColor grayColor]CGColor];
    btnDown.layer.borderWidth= 1.0f;
    [btnDown addTarget:self action:@selector(actionDown) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnDown];
    
    btnPause = [[UIButton alloc]initWithFrame:CGRectMake(155, self.view.bounds.size.height/2-20, 100, 40)];
    [btnPause setTitle:@"PAUSE" forState:UIControlStateNormal];
    [btnPause setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btnPause.backgroundColor = [UIColor clearColor];
    btnPause.layer.cornerRadius=5.0f;
    btnPause.layer.masksToBounds=YES;
    btnPause.layer.borderColor=[[UIColor grayColor]CGColor];
    btnPause.layer.borderWidth= 1.0f;
    [btnPause addTarget:self action:@selector(actionPause) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnPause];
    
    btnCancel = [[UIButton alloc]initWithFrame:CGRectMake(280, self.view.bounds.size.height/2-20, 100, 40)];
    [btnCancel setTitle:@"UPLOAD" forState:UIControlStateNormal];
    [btnCancel setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btnCancel.backgroundColor = [UIColor clearColor];
    btnCancel.layer.cornerRadius=5.0f;
    btnCancel.layer.masksToBounds=YES;
    btnCancel.layer.borderColor=[[UIColor grayColor]CGColor];
    btnCancel.layer.borderWidth= 1.0f;
    [btnCancel addTarget:self action:@selector(actionCancel) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnCancel];
    
    prvLoad = [[UIProgressView alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-100,self.view.bounds.size.height/2-100 , 200, 50)];
    prvLoad.backgroundColor = [UIColor grayColor];
    [self.view addSubview:prvLoad];
    
}
-(void)actionDown{
if(dowloadTask == nil){
   // NSURL *url  = [NSURL URLWithString:@"https://yout.com/video/BfLBO3UmGTY"];
    NSURL *url  = [NSURL URLWithString:@"http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"];
    dowloadTask = [session downloadTaskWithURL:url];
    [dowloadTask resume];
}
    else
        [dowloadTask resume];
}

-(void)actionPause{
    [dowloadTask suspend];
}

-(void)actionUpload{
//    NSString *urlString = @"http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4";
//    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
//    [request setURL:[NSURL URLWithString:urlString]];
//    [request setHTTPMethod:@"POST"];
//
//    NSString *boundary = [NSString stringWithString:@"0xLhTaLbOkNdArZ"];
//    NSString *contentType = [NSString stringWithFormat:@"multipart/form-data; boundary=%@",boundary];
//    [request addValue:contentType forHTTPHeaderField: @"Content-Type"];
//
//    //Reading the file
//    NSString *filePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"test.zip"];
//    NSData *myData = [NSData dataWithContentsOfFile:filePath];
//
//    NSMutableData *body = [NSMutableData data];
//
//    [body appendData:[[NSString stringWithFormat:@"\r\n--%@\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
//    [body appendData:[[NSString stringWithFormat:@"Content-Disposition: form-data; name=\"userfile\"; filename=\"test.zip\"\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
//    [body appendData:[[NSString stringWithString:@"Content-Type: application/octet-stream\r\n\r\n"] dataUsingEncoding:NSUTF8StringEncoding]];
//    [body appendData:myData];
//    [body appendData:[[NSString stringWithFormat:@"\r\n--%@--\r\n",boundary] dataUsingEncoding:NSUTF8StringEncoding]];
//
//    [request setHTTPBody:body];
//    
//    NSError *returnError = nil;
//    NSHTTPURLResponse *returnResponse = nil;
//
//    NSData *returnData = [NSURLConnection sendSynchronousRequest:request returningResponse:&returnResponse error:&returnError];
}

@end
