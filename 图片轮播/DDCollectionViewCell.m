//
//  DDCollectionViewCell.m
//  图片轮播
//
//  Created by autobot on 17/1/6.
//  Copyright © 2017年 autobot. All rights reserved.
//

#import "DDCollectionViewCell.h"

@implementation DDCollectionViewCell{
    UIImageView *_imageView;
}
// collectionViewCell 的 frame 是根据之前的 layout 已经确定好的！
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"%@", NSStringFromCGRect(frame));
        
        // 添加图像视图
        _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        
        [self.contentView addSubview:_imageView];
        _imageView.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (void)setUrl:(NSURL *)url {
    _url = url;
    
    // 1. 根据 URL 获取二进制数据
    NSData *data = [NSData dataWithContentsOfURL:url];
    // 2. 将二进制数据转换成图像
    UIImage *image = [UIImage imageWithData:data];
    
    _imageView.image = image;
}


@end
