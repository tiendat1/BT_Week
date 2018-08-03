//
//  ViewDetailController.h
//  TableView
//
//  Created by TienDat on 8/2/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassStudent.h"
@interface ViewDetailController : UIViewController{
 UILabel *lblCode;
 UILabel *lblFirstName;
 UILabel *lblLastName;
}
@property(nonatomic)  ClassStudent *current;
@property(nonatomic)ViewDetailController *viewDetailController;
-(void)setData:(ClassStudent*)student;
-(void)initLabelInfo;
@end
