//
//  ViewController.m
//  File&Device
//
//  Created by TienDat on 8/6/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;
 //AVCaptureSession *session;
//AVCaptureStillImageOutput *StillImageOutput;
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initLayout];

}
//-(void)viewWillAppear:(BOOL)animated{
//    session = [[AVCaptureSession alloc]init];
//    [session setSessionPreset:AVCaptureSessionPresetPhoto];
//    AVCaptureDevice *inputDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
//    NSError *error;
//    AVCaptureDeviceInput  *deviceInput =[AVCaptureDeviceInput deviceInputWithDevice:inputDevice error:&error];
//    if([session canAddInput:deviceInput]){
//        [session addInput:deviceInput];
//    }
//    AVCaptureVideoPreviewLayer *previewLayer = [[AVCaptureVideoPreviewLayer alloc]initWithSession:session];
//    [previewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
//    CALayer *rootLayer  = [[self view]layer];
//    [rootLayer setMasksToBounds:YES];
//    CGRect frame = frameforcapture.frame;
//    [previewLayer setFrame:frame];
//    [rootLayer insertSublayer:previewLayer atIndex:0];
//    StillImageOutput = [[AVCaptureStillImageOutput alloc]init];
//    NSDictionary *outputSettings = [[NSDictionary alloc]initWithObjectsAndKeys:AVVideoCodecTypeJPEG,AVVideoCodecKey, nil];
//    [StillImageOutput setOutputSettings:outputSettings];
//    [session addOutput:StillImageOutput];
//    [session startRunning];
//}
//
//- (void)initLayout{
//    frameforcapture = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    [self.view addSubview:frameforcapture];
//
//    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 400,350, 300)];
//    imageView.backgroundColor = [UIColor blackColor];
//    [self.view addSubview: imageView];
//
//    _btnTakePhoto = [[UIButton alloc]initWithFrame:CGRectMake(30, 30, 350, 200)];
//    _btnTakePhoto.backgroundColor = [UIColor blackColor];
//    [_btnTakePhoto addTarget:self action:@selector(actionTakePhoto) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:_btnTakePhoto];
//UIButton *btnSave = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-65, 520,130, 50)];
//[btnSave setTitle:@"SAVE" forState:UIControlStateNormal];
//[btnSave setTintColor:[UIColor blackColor]];
//btnSave.backgroundColor = [UIColor lightGrayColor];
//[btnSave addTarget:self action:@selector(actionSaveImage) forControlEvents:(UIControlEventTouchUpInside)];
//[self.view addSubview:btnSave];
//
//}

//-(void)actionSaveImage{
//    UIImage *imageSave = imageView.image;
//    UIImageWriteToSavedPhotosAlbum(imageSave, nil,nil, nil);
//}

//- (void)actionTakePhoto{
//    AVCaptureConnection *videoConnection = nil;
//    for(AVCaptureConnection *connection in StillImageOutput.connections){
//    for(AVCaptureInputPort *port in [connection inputPorts]){
//        if([[port mediaType] isEqual:AVMediaTypeVideo]){
//            videoConnection = connection;
//            break;
//        }
//    }
//}
//    [StillImageOutput captureStillImageAsynchronouslyFromConnection:videoConnection completionHandler:^(CMSampleBufferRef  _Nullable imageDataSampleBuffer, NSError * _Nullable error) {
//        if(imageDataSampleBuffer !=NULL){
//            NSData *imageData = [AVCaptureStillImageOutput jpegStillImageNSDataRepresentation:imageDataSampleBuffer];
//            UIImage *image = [UIImage imageWithData:imageData];
//            self->imageView .image = image;
//        }
//    }];
//}

- (void)initLayout{
    imageView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 370,300)];
    [self.view addSubview: imageView];
    
    UIButton *btnCamera = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-65, 400,130, 50)];
    [btnCamera setTitle:@"CAMERA" forState:UIControlStateNormal];
    [btnCamera setTintColor:[UIColor blackColor]];
    btnCamera.backgroundColor = [UIColor lightGrayColor];
    [btnCamera addTarget:self action:@selector(actionCamera) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btnCamera];
    
    UIButton *btnLocal = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-65, 460,130, 50)];
    [btnLocal setTitle:@"LOCAL" forState:UIControlStateNormal];
    [btnLocal setTintColor:[UIColor blackColor]];
    btnLocal.backgroundColor = [UIColor lightGrayColor];
    [btnLocal addTarget:self action:@selector(actionLocal) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btnLocal];
    
    UIButton *btnSave = [[UIButton alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2-65, 520,130, 50)];
    [btnSave setTitle:@"SAVE" forState:UIControlStateNormal];
    [btnSave setTintColor:[UIColor blackColor]];
    btnSave.backgroundColor = [UIColor lightGrayColor];
    [btnSave addTarget:self action:@selector(actionSave) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btnSave];
}
-(void)actionCamera{
    UIImagePickerController *pickCtrl = [[UIImagePickerController alloc]init];
    [pickCtrl setDelegate:self];
    [pickCtrl setAllowsEditing:YES];
    [pickCtrl setSourceType:UIImagePickerControllerSourceTypeCamera];
    [self presentViewController:pickCtrl animated:TRUE completion:nil];
    
}
-(void)actionLocal{
    UIImagePickerController *pickCtrl = [[UIImagePickerController alloc]init];
    [pickCtrl setDelegate:self];
    [pickCtrl setAllowsEditing:YES];
    [pickCtrl setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:pickCtrl animated:TRUE completion:nil];
}

-(void)actionSave{
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *filePath = [[paths objectAtIndex:0] stringByAppendingPathComponent:@"ImageFolder/ImageName.png"];
//    NSString  *imagePath = [NSHomeDirectory() stringByAppendingPathComponent:@"ImageFolder/ImageName.png"];
//    NSData *imageData = UIImageJPEGRepresentation(_image, 1.0);
//    [imageData writeToFile:imagePath atomically:YES];
    [self sendImageToServer];
    
}
#pragma mark UIImagePickerControllerDelegate functions here
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage  *pickedImage = info[UIImagePickerControllerEditedImage];
    [imageView setImage: pickedImage];
    _image = pickedImage;
    [self dismissViewControllerAnimated:TRUE completion:nil];

}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)sendImageToServer {
    NSData *imageData = UIImagePNGRepresentation(_image);
    NSString *postLength = [NSString stringWithFormat:@"%d", [imageData length]];
    
    // Init the URLRequest
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod:@"POST"];
    [request setURL:[NSURL URLWithString:[NSString stringWithString:@"http://hihello.hol.es"]]];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody:imageData];
    
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    if (connection) {
    }
    NSLog(@"%@",request);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
