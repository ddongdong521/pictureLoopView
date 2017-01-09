//
//  DDCollectionViewFlowLayout.m
//  图片轮播
//
//  Created by autobot on 17/1/6.
//  Copyright © 2017年 autobot. All rights reserved.
//

#import "DDCollectionViewFlowLayout.h"

@implementation DDCollectionViewFlowLayout
//collectionView的第一次布局时调用，此时collectionView的frame已经被设置完毕
- (void)prepareLayout
{
    [super prepareLayout];
    NSLog(@"%@",self.collectionView);
    self.itemSize = self.collectionView.bounds.size;
    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    self.collectionView.bounces  = NO;
    self.collectionView.pagingEnabled = YES;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
}

@end
