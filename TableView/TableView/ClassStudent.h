//
//  ClassStudent.h
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassStudent : NSObject

@property(nonatomic,strong) NSString *code;
@property(nonatomic,strong) NSString *firstName;
@property(nonatomic,strong) NSString *lastName;
@property(nonatomic) float mathScore;
@property(nonatomic) float physicScore;
@property(nonatomic) float chemistryScore;
-(void)initInforWithCode:(NSString *)code firstName:(NSString *)firstname lastName:(NSString*)lastname mathScore:(float)mathscore physicScore:(float)physicscore chemistryScore:(float)chemistryscore;


@end
