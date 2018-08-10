//
//  Singleton.h
//  AFNetworking
//
//  Created by TienDat on 8/10/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking/AFNetworking.h"
#import "ViewController.h"
@interface Singleton : NSObject{
    
    
}
+(Singleton *)shareSingleton;
@property (nonatomic)   NSArray *reponseJSON1;
-(void)starA:(void(^)(BOOL))completion;
@end
