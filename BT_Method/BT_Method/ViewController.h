//
//  ViewController.h
//  BT1
//
//  Created by TienDat on 7/31/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController1.h"
@interface ViewController : UIViewController {
    
    float width;
    float height;
    int n;
    
}
@property (nonatomic, strong) UITextField  *textnumber1;
@property (nonatomic, strong) UITextField  *textnumber2;

@property (nonatomic, strong) UITextField  *textname;
@property (nonatomic, strong) UITextField  *textdiem;

@property (nonatomic, strong) UILabel  *lablexeploai;




@property (nonatomic, strong) UILabel  *lablesum;
//@property(nonatomic,retain) ViewController1 *viewcontroller1;

@end

