//
//  ViewControllerAdd.h
//  API
//
//  Created by TienDat on 8/8/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewControllerAdd : UIViewController{
    NSString *mainStr;
}
@property (strong,nonatomic) UITextField *txtName;
@property(strong,nonatomic)UITextField  *txtNumber;
@property(strong,nonatomic)UIButton  *btnAdd;
+(void)executequery:(NSString *)strurl strpremeter:(NSString *)premeter withblock:(void(^)(NSData *, NSError*))block;

@end
