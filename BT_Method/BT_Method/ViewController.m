//
//  ViewController.m
//  BT1
//
//  Created by TienDat on 7/31/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    width = [UIScreen mainScreen].bounds.size.width;
    height = [UIScreen mainScreen].bounds.size.height;
//    [self initButtonKQ];
//   [self initLable];
//    [self initTextField];
//  [self initButtonKQ];
//    [self initButtonNextView];
}


//-(void)initButtonKQ
//{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((width-160)/2,400 ,160 , 50)];
//    [button setTitle:@"SO LON NHAT LA" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor brownColor];
//    [button addTarget:self action:@selector(initMax) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//}

//-(void)initButtonNextView
//{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(200,30 ,160 , 50)];
//    [button setTitle:@"Next" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor grayColor];
//    [button addTarget:self action:@selector(initNext) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//}
//-(void)initNext
//{
//    if(_viewcontroller1 == nil)
//        {
//            ViewController1 *view1 = [[ViewController1 alloc] initWithNibName:@"1" bundle:[NSBundle mainBundle]];
//            self.viewcontroller1 = view1;
//            [view1 rel]
//        }
//}

//-(void)initMax
//{
//    int a = [_textnumber1.text intValue];
//    int b = [_textnumber2.text intValue];
//    if(a > b)
//        {
//            [_lablesum setText:[NSString stringWithFormat:@"%i", a]];
//        }
//    else
//        {
//            [_lablesum setText:[NSString stringWithFormat:@"%i", b]];
//        }
//}
//-(void)initTextField
//{
//    _textnumber1 =[[UITextField alloc] initWithFrame:CGRectMake(125, 300, 50, 50)];
//    _textnumber2 =[[UITextField alloc] initWithFrame:CGRectMake(230, 300, 50, 50)];
//    _textnumber1.backgroundColor = [UIColor redColor];
//    _textnumber2.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_textnumber1];
//    [self.view addSubview:_textnumber2];
//
//}
//-(void)initLable
//{
//    UILabel *lablemax = [[UILabel alloc] initWithFrame:CGRectMake((width-200)/2, 500, 200, 50)];
//    lablemax.backgroundColor = [UIColor redColor];
//    _lablesum =[[UILabel alloc] initWithFrame:CGRectMake((width-50)/2,500 , 50, 50)];
//    _lablesum.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_lablesum];
//}


//--------------------------------

//-(void)initTextField
//{
//    _textname =[[UITextField alloc] initWithFrame:CGRectMake((width-150)/2, 310, 150, 50)];
//    _textdiem =[[UITextField alloc] initWithFrame:CGRectMake((width-50)/2, 370, 50, 50)];
//    _textname.backgroundColor = [UIColor redColor];
//    _textdiem.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_textname];
//    [self.view addSubview:_textdiem];
//
//}
//
//-(void)initButtonKQ
//{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((width-100)/2,430 ,100 , 50)];
//    [button setTitle:@"XẾP LOẠI" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor brownColor];
//    [button addTarget:self action:@selector(initFind) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//}
//-(void)initFind
//{
//        int diem = [_textdiem.text intValue];
//    if(diem > 8)
//    {
//        _lablexeploai.text =@"GIOI";
//        NSLog(@"GIOI");
//    }
//    else if(diem < 8 && diem > 5)
//    {
//         _lablexeploai.text =@"KHA";
//        NSLog(@"KHA");
//    }
//    else if(diem < 5)
//    {
//         _lablexeploai.text =@"YEU";
//        NSLog(@"YEU");
//    }
//
//}
//
//-(void)initLable
//{
//    _lablexeploai =[[UILabel alloc] initWithFrame:CGRectMake((width-100)/2,540 , 100, 50)];
//    _lablexeploai.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_lablexeploai];
//}


//--------------------------------------------




//-(void)initTextField
//{
//    _textdiem =[[UITextField alloc] initWithFrame:CGRectMake((width-150)/2, 310, 150, 50)];
//    _textdiem.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_textdiem];
//
//}
//
//-(void)initButtonKQ
//{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((width-100)/2,430 ,100 , 50)];
//    [button setTitle:@"KẾT QUẢ" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor brownColor];
//    [button addTarget:self action:@selector(initSum) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//}
//
//-(void)initLable
//{
//
//    _lablesum =[[UILabel alloc] initWithFrame:CGRectMake((width-50)/2,500 , 50, 50)];
//    _lablesum.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_lablesum];
//}
//
//-(void)initSum
//{
//    int sum = 0;
//    int a = [_textdiem.text intValue];
//    for ( int i = 1 ; i <= a ; i++)
//    {
//        sum += i;
//        [_lablesum setText:[NSString stringWithFormat:@"%i", sum]];
//        NSLog(@"%i",sum);
//    }
//}


//------------------------------



//-(void)initTextField
//{
//    _textdiem =[[UITextField alloc] initWithFrame:CGRectMake((width-150)/2, 310, 150, 50)];
//    _textdiem.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_textdiem];
//
//}
//
//-(void)initButtonKQ
//{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((width-100)/2,430 ,100 , 50)];
//    [button setTitle:@"KẾT QUẢ" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor brownColor];
//    [button addTarget:self action:@selector(initSum) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//}
//
//-(void)initLable
//{
//
//    _lablesum =[[UILabel alloc] initWithFrame:CGRectMake((width-50)/2,500 , 50, 50)];
//    _lablesum.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_lablesum];
//}
//
//-(void)initSum
//{
//    int sum = 1;
//    int a = [_textdiem.text intValue];
//    for ( int i = 1 ; i <= a ; i++)
//    {
//        sum *= i;
//        [_lablesum setText:[NSString stringWithFormat:@"%i", sum]];
//        NSLog(@"%i",sum);
//    }
//}


//-----------------------------------------------------



//-(void)initTextField
//{
//    _textdiem =[[UITextField alloc] initWithFrame:CGRectMake((width-150)/2, 310, 150, 50)];
//    _textdiem.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_textdiem];
//
//}
//
//-(void)initButtonKQ
//{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((width-100)/2,430 ,100 , 50)];
//    [button setTitle:@"KẾT QUẢ" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor brownColor];
//    [button addTarget:self action:@selector(initSum) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//}
//
//-(void)initLable
//{
//
//    _lablesum =[[UILabel alloc] initWithFrame:CGRectMake((width-50)/2,500 , 50, 50)];
//    _lablesum.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_lablesum];
//}
//
//-(void)initSum
//{
//    int sum = 0;
//    int a = [_textdiem.text intValue];
//    for ( int i = 1 ; i <= a ; i++)
//    {
//        sum += i*(i+1);
//        [_lablesum setText:[NSString stringWithFormat:@"%i", sum]];
//        NSLog(@"%i",sum);
//    }
//}


//------------------------------------------

//-(void)initTextField
//{
//    _textdiem =[[UITextField alloc] initWithFrame:CGRectMake((width-150)/2, 310, 150, 50)];
//    _textdiem.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_textdiem];
//
//}
//
//-(void)initButtonKQ
//{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake((width-100)/2,430 ,100 , 50)];
//    [button setTitle:@"KẾT QUẢ" forState:UIControlStateNormal];
//    button.backgroundColor = [UIColor brownColor];
//    [button addTarget:self action:@selector(initSum) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
//
//}
//
//-(void)initLable
//{
//
//    _lablesum =[[UILabel alloc] initWithFrame:CGRectMake((width-50)/2,500 , 50, 50)];
//    _lablesum.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_lablesum];
//}
//
//-(void)initSum
//{
//
//    int a = [_textdiem.text intValue];
//    int sum = a % 10;
//
//        if(a % 10 == 0)
//            {
//                [_lablesum setText:[NSString stringWithFormat:@"%i", sum]];
//                NSLog(@"%i",sum);
//            }
//        else
//            {
//                 [_lablesum setText:[NSString stringWithFormat:@"%i", sum]];
//
//            NSLog(@"Error");
//            }
//
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
