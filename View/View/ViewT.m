//
//  ViewT.m
//  View
//
//  Created by TienDat on 8/1/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewT.h"

@implementation ViewT
-(id)initWithFrame:(CGRect)frame //SET FRAME CHO UIVIEW
{
    self = [super initWithFrame:frame];
    if(self)
        {
        
        }
    return  self;
}
-(void)drawRect:(CGRect)rect{
    box = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 250, 250) ];
    [box setImage:[UIImage imageNamed:@"bellsprout.png"]];
     [self addSubview:box];

}


@end
