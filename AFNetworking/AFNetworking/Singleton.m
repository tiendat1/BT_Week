//
//  Singleton.m
//  AFNetworking
//
//  Created by TienDat on 8/10/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "Singleton.h"
#import "AFNetworking/AFNetworking.h"
#import "ViewController.h"

@implementation Singleton
    static Singleton* _shareSingleton = nil;
+(Singleton *)shareSingleton{
    @synchronized([Singleton class])
    {
        if (!_shareSingleton)
        [[ self alloc] init];
        return _shareSingleton;
    }
    return nil;
}
    
+(id)alloc{
    @synchronized([Singleton class])
    {
        NSAssert(_shareSingleton == nil, @"Attempted to allocate a second instance of a singleton.");
        _shareSingleton = [super alloc];
        return _shareSingleton;
    }
    return nil;
}
    
-(id)init {
    self = [super init];
        if (self != nil) {
        }
        return self;
    }
    -(void)starA:(void (^)(BOOL))completion{
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        [manager GET:@"https://api.letsbuildthatapp.com/jsondecodable/courses" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
            self.reponseJSON1 = responseObject;
              //[self.tableview reloadData];
            NSLog(@"JSON: %@", responseObject);
            completion(YES);
        } failure:^(NSURLSessionTask *operation, NSError *error) {
            NSLog(@"Error: %@", error);
        }];
        
    }
@end
