//
//  ClassStudent.m
//  Class&OBJ
//
//  Created by TienDat on 7/31/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ClassStudent.h"

@implementation ClassStudent
-(instancetype)init{
    if(self)
    {
        _code = nil;
        _firstName = nil;
        _lastName = nil;
        _mathScore = 0.0;
        _physicScore = 0.0;
        _chemistryScore = 0.0;
    }
    return self;
}
-(void)initInforWithCode:(NSString *)code firstName:(NSString *)firstname lastName:(NSString *)lastname mathScore:(float)mathscore physicScore:(float)physicscore chemistryScore:(float)chemistryscore {
    _code = code;
    _firstName = firstname;
    _lastName = lastname;
    _mathScore = mathscore;
    _physicScore = physicscore;
    _chemistryScore = chemistryscore;
}

@end
