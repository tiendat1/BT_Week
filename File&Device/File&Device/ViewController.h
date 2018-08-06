//
//  ViewController.h
//  File&Device
//
//  Created by TienDat on 8/6/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
//    UIView *frameforcapture;
//    UIImageView *imageView;
//        UIImage *image;
}
//@property (nonatomic)UIButton *btnTakePhoto;
@property (strong,nonatomic)UIImageView *imageView;
@property (strong,nonatomic)UIButton *btnCamera;
@property(strong,nonatomic)UIImage *image;
@property (strong,nonatomic)UIButton *btnLocal;

@end

