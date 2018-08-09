//
//  ViewControllerAdd.m
//  API
//
//  Created by TienDat on 8/8/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewControllerAdd.h"
#import "ViewController.h"
@interface ViewControllerAdd ()

@end

@implementation ViewControllerAdd

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initLayout];
    self.view.backgroundColor = [UIColor whiteColor];

}

-(void)initLayout{
    
    

    
    _txtName = [[UITextField alloc]initWithFrame:CGRectMake(40, 150, 330, 40)];
    _txtName.placeholder =@"   Enter Name...";
    _txtName.borderStyle=UITextBorderStyleNone;
    _txtName.layer.cornerRadius=5.0f;
    _txtName.layer.masksToBounds=YES;
    _txtName.layer.borderColor=[[UIColor grayColor]CGColor];
    _txtName.layer.borderWidth= 1.0f;
    [self.view addSubview:_txtName];
    
    
    
    _txtNumber = [[UITextField alloc]initWithFrame:CGRectMake(40, 200, 330, 40)];
    _txtNumber.placeholder =@"   Enter Age...";
    _txtNumber.borderStyle=UITextBorderStyleNone;
    _txtNumber.layer.cornerRadius=5.0f;
    _txtNumber.layer.masksToBounds=YES;
    _txtNumber.layer.borderColor=[[UIColor grayColor]CGColor];
    _txtNumber.layer.borderWidth= 1.0f;

    [self.view addSubview:_txtNumber];
    
    _btnAdd = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-50, 270, 100, 40)];
    [_btnAdd setTitle:@"ADD INFO" forState:UIControlStateNormal];
    [_btnAdd setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    _btnAdd.backgroundColor = [UIColor clearColor];
    _btnAdd.layer.cornerRadius=5.0f;
    _btnAdd.layer.masksToBounds=YES;
    _btnAdd.layer.borderColor=[[UIColor grayColor]CGColor];
    _btnAdd.layer.borderWidth= 1.0f;
    [_btnAdd addTarget:self action:@selector(actionAdd) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnAdd];
}
- (void)actionAdd{
    [self postData];

    }

-(void)postData{
    mainStr = [NSString stringWithFormat:@"https://api.letsbuildthatapp.com/jsondecodable/courses"];
    NSString *strInffo = [NSString stringWithFormat:@"name=%@&number_of_lessons=%@",_txtName.text,_txtNumber.text ];
    [ViewControllerAdd executequery:mainStr strpremeter:strInffo withblock:^(NSData *dbData, NSError *err) {
        NSLog(@"Data: %@", dbData);
        if (dbData!=nil)
        {
            NSDictionary *maindic = [NSJSONSerialization JSONObjectWithData:dbData options:NSJSONReadingAllowFragments error:nil];
            NSLog(@"Response Data: %@", maindic);
        }
    }];
    
}

+(void)executequery:(NSString *)strurl strpremeter:(NSString *)premeter withblock:(void (^)(NSData *, NSError *))block
{
    //Step:-1 Session Create
    NSURLSessionConfiguration *defaultconfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];//New Session
    NSURLSession *session = [NSURLSession sessionWithConfiguration:defaultconfiguration delegate:nil delegateQueue:[NSOperationQueue mainQueue]];//Queue is Stroing and retrieve data FIFO
    
    NSURL *urlrequest = [NSURL URLWithString:strurl];
    NSMutableURLRequest*mutablerequest = [NSMutableURLRequest requestWithURL:urlrequest];
    
    NSString * parm = premeter;//Method and Body
    [mutablerequest setHTTPMethod:@"POST"];//Adding Data is Url With Json
    [mutablerequest setHTTPBody:[parm dataUsingEncoding:NSUTF8StringEncoding]];//Data Encoding UTF-8
    NSURLSessionDataTask * task = [session dataTaskWithRequest:mutablerequest completionHandler:^(NSData *  data, NSURLResponse * response, NSError *  error) {
        if (data!=nil)
        {
            NSLog(@"Response %@", data);
            block(data,error);//Data is NSDATA and Error is NSERROR
        }
        else
        {
            NSLog(@"error");
            block(nil,error);
        }
    }];
    [task resume];
    
    
}

@end
