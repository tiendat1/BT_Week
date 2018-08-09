//
//  ViewController.h
//  DownFile
//
//  Created by TienDat on 8/9/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLSessionDownloadDelegate>{
    UIButton *btnDown;
    UIButton *btnPause;
    UIButton *btnCancel;
    UIProgressView *prvLoad;
    NSURLSession *session;
    NSURLSessionDownloadTask *dowloadTask;
}


@end

