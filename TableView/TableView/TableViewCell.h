//
//  TableViewCell.h
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassStudent.h"

@interface TableViewCell : UITableViewCell {
    UILabel *lblName;
    UILabel *lblScore;
    UIImageView *image;
}
-(void)initLayout;
-(void)setData:(ClassStudent*)student type:(int)type;


@end
