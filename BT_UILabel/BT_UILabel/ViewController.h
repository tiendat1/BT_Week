//
//  ViewController.h
//  BT_UILabel
//
//  Created by TienDat on 8/3/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate,UITextViewDelegate>{
    
    UIImageView *imageSubmit;
    UITextField *txtInput;
    UILabel *lblOutput;
    UIScrollView *scrollView;
}
@property(strong,nonatomic) NSString *strData;
@property (strong, nonatomic) UITapGestureRecognizer *tap;

@end

