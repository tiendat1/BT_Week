//
//  ViewController.m
//  View
//
//  Created by TienDat on 8/1/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor grayColor];
    [super viewDidLoad];
 
    NSArray *arrNumbers  = @[@112,@132,@144,@10,@12,@11,@17,@441,@15,@14,@13];
    
    // Do any additional setup after loading the view, typically from a nib.
   //[self buttonNext];
 //  [self nextObject];
   // BOOL result  =  [self findNumber:arrNumbers number:1];
    
    //NSInteger max =[self findNumberMaxx:arrNumbers];
    //[self findNumberMaxx:arrNumbers];
    NSInteger max =[self findNumberCategorize:arrNumbers];
    
}
//-(void)buttonNext{
//    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(165 , 300, 100, 100)];
//    [button setTitle:@"Next" forState:UIControlStateNormal];
//    [button setTintColor:[UIColor blackColor]];
//    button.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:button];
//    [button addTarget:self action:@selector(nextObject) forControlEvents:UIControlEventTouchUpInside];
//
//}
//-(void)nextObject{
// ViewControllerNext *viewControlerNext = [[ViewControllerNext alloc] init];
//    [self.navigationController pushViewController:viewControlerNext animated:YES];
//}

//--------------------------------
//-(BOOL)findNumber:(NSArray *)array number:(int)num{
//    BOOL isExist = NO;
//
//    for(int i = 0 ; i < array.count ; i++)
//        {
//
//            if([array[i] intValue]== num)
//                {
//                    isExist = YES;
//                    break;
//                }
//            else
//                {
//                    isExist = NO;
//                }
//        }
//    return isExist;
//   // NSLog(@"%@",arrNumbers);
//
//
//}
//----------------------------


//-(NSInteger)findNumberMaxx:(NSArray *)array
//{
//    NSInteger max = [array.firstObject integerValue];
//    for(int i = 0 ; i < array.count ; i++)
//        {
//            if(max < [array[i] intValue])
//                {
//                     max = [array[i] intValue];
//                }
//        }
//    return max;
//}

//---------------------------------

-(NSInteger)findNumberCategorize:(NSArray *)array
{
    NSInteger max = [array.firstObject integerValue];
    for(int i = 0 ; i < array.count ; i++) {
        if(max < [array[i] intValue]) {
            max = [array[i] intValue];
            if(max % 2 == 0)
            {
                NSLog(@"%li",(long)max);
            }
        else
            {
                
            }
        }
    }
    return max;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
