//
//  ViewController.m
//  Class&OBJ
//
//  Created by TienDat on 7/31/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    //    ClassStudent *student = [[ClassStudent alloc]init];
    //    ClassStudent *student1 = [[ClassStudent alloc]init];
    //    ClassStudent *student2 = [[ClassStudent alloc]init];
    //    [student initInforWithCode:@"001" firstName:@"NGUYEN" lastName:@"A" mathScore:0 physicScore:0 chemistryScore:7];
    //    [student1 initInforWithCode:@"001" firstName:@"NGUYEN" lastName:@"B" mathScore:6 physicScore:4 chemistryScore:7];
    //     [student2 initInforWithCode:@"001" firstName:@"NGUYEN" lastName:@"C" mathScore:9 physicScore:10 chemistryScore:10];
    //    NSArray *arr = [NSArray arrayWithObjects:student, student1, student2, nil];
    //    ClassStudent *bestStudent;
    //    float bestScore = 0;
    //    for (ClassStudent *std  in arr) {
    //        if([std caculateAverageScores] >= bestScore)
    //            {
    //                bestStudent = std;
    //            }
    //    }
    //
    //        NSLog(@"\nHo:%@ \nTen:%@ \nDiem Toan: %f \nDiem Ly: %f \nDiem Hoa: %f \nDTB: %f",bestStudent.firstName, bestStudent.lastName,bestStudent.mathScore,bestStudent.physicScore,bestStudent.chemistryScore,bestStudent.caculateAverageScores);
    
    //[student upScore];
    //    float avr = [student caculateAverageScores];
    //    NSLog(@"%f",avr);
    //
    //    NSString *rank = [student rankOfStudent];
    //    NSLog(@"%@",rank);
    //
    
    
}

-(void)studentS{
    ClassStudent *student = [[ClassStudent alloc]init];
    ClassStudent *student1 = [[ClassStudent alloc]init];
    ClassStudent *student2 = [[ClassStudent alloc]init];
    [student initInforWithCode:@"001" firstName:@"NGUYEN" lastName:@"A" mathScore:0 physicScore:0 chemistryScore:7];
    [student1 initInforWithCode:@"001" firstName:@"NGUYEN" lastName:@"B" mathScore:6 physicScore:4 chemistryScore:7];
    [student2 initInforWithCode:@"001" firstName:@"NGUYEN" lastName:@"C" mathScore:9 physicScore:10 chemistryScore:10];
    NSArray *arr = [NSArray arrayWithObjects:student, student1, student2, nil];
    ClassStudent *bestStudent;
    float bestScore = 0;
    for (ClassStudent *std  in arr) {
        if([std caculateAverageScores] >= bestScore)
        {
            bestStudent = std;
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
