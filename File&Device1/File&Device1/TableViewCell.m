//
//  TableViewCell.m
//  File&Device1
//
//  Created by TienDat on 8/7/18.
//  Copyright © 2018 TienDat. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
-(id)init {
    self = [super init];
    if (self) {
        [self initLayout];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}
-(void)initLayout{
    image = [[UIImageView alloc]initWithFrame:CGRectMake(50,0,self.bounds.size.width, 50)];
    [self addSubview:image];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [[[NSURLSession sharedSession]dataTaskWithURL:[[NSURL alloc]initWithString:@"http://thuthuatphanmem.vn/uploads/2017/11/05/hinh-nen-4k-dep-1_124942.jpg"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            if(error == nil && data != nil){
                [self performSelectorOnMainThread:@selector(update:) withObject:[UIImage imageWithData:data] waitUntilDone:NO];
            };
        }]resume];
    });
    
}
- (void)update:(id)sender
{
    UIImage *im = (UIImage*)sender;
    image.image = im;
//    [self.imageView setImage:im];
}
@end
