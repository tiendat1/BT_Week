//
//  ViewController.m
//  BT_UILabel
//
//  Created by TienDat on 8/3/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initImageSumit];
    [self textFieldDidEndEditing:txtInput];
    [self textFieldDidBeginEditing:txtInput];
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.1];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y -270., self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
    
    
}


-(void)textFieldDidEndEditing:(UITextField *)textField
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.1];
    [UIView setAnimationBeginsFromCurrentState:TRUE];
    self.view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y +270., self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView commitAnimations];
    
}












-(void)initImageSumit{
    imageSubmit = [[UIImageView alloc]initWithFrame:CGRectMake(130,500, 150, 40)];
    imageSubmit.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:imageSubmit];

    txtInput = [[UITextField alloc]initWithFrame:CGRectMake(130, self.view.bounds.size.height-40, 150, 40)];
    txtInput.backgroundColor = [UIColor lightGrayColor];
    txtInput.delegate = self;
    [self.view addSubview:txtInput];

    lblOutput = [[UILabel alloc]initWithFrame:CGRectMake(130, 350, 150, 40)];
    lblOutput.backgroundColor = [UIColor lightGrayColor];
   
    [self.view addSubview:lblOutput];
    
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDetected)];
    singleTap.numberOfTapsRequired = 1;
    [imageSubmit setUserInteractionEnabled:YES];
    [imageSubmit addGestureRecognizer:singleTap];
    
}

    -(BOOL)textFieldShouldReturn:(UITextField *)textField{
        [txtInput resignFirstResponder];
        return YES;
    }
    - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
    {
        NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
        if([string isEqualToString:@"\n"])
        {
            [txtInput resignFirstResponder];
            return NO;
        }
        return YES;
        return ([newString length] <= 11);
    }

-(void)tapDetected{
    if(txtInput.text.length == 0)
    {
        lblOutput.text = @"ERROR !!!";
        lblOutput.textColor = [UIColor redColor];
        
    }
    else{
        lblOutput.textColor = [UIColor blackColor];
        _strData = txtInput.text;
        lblOutput.text = _strData;
    }
  
}

@end
