//
//  TableViewCell.m
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(id)init {
    self = [super init];
    if (self) {
        [self initLayout];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)initLayout{
    //self.selectionStyle = UITableViewCellSeparatorStyleNone;
    for (UIView *subView in self.subviews) {
        [subView removeFromSuperview];
    }
    lblName  = [[UILabel alloc]init];
    [lblName setFrame:CGRectMake(45, 10, 300, 30)];
 //   lblName.backgroundColor = UIColor.redColor;
    
    lblScore = [[UILabel alloc]init];
    [lblScore setFrame:CGRectMake(45 ,45, 120, 40)];
 //   lblScore.backgroundColor = UIColor.blueColor;
    
    image = [[UIImageView alloc]init];
    image.image = [UIImage imageNamed:@"star1"];
    [image setFrame:CGRectMake(10, 10, 30, 30)];
    
    [self addSubview:lblName];
    [self addSubview:lblScore];
    [self addSubview:image];
}
-(void)setData:(ClassStudent *)student type:(int)type{
    lblName.text =[NSString stringWithFormat:@"%@ %@",student.firstName,student.lastName];
    switch (type) {
        case 0:
            lblScore.text = [NSString stringWithFormat:@"TOAN :%f",student.mathScore];
            break;
            case 1:
            lblScore.text = [NSString stringWithFormat:@"LY :%f",student.physicScore];
            break;
        default:
            lblScore.text = [NSString stringWithFormat:@"HOA :%f",student.chemistryScore];
            break;
    }
}
    
    
@end
