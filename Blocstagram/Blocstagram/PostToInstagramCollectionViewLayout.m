//
//  PostToInstagramCollectionViewLayout.m
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/21/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import "PostToInstagramCollectionViewLayout.h"

@implementation PostToInstagramCollectionViewLayout

- (id)init {
    self = [super init];
    
    if(self){
        self.itemSize = CGSizeMake(44, 64);
        self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        self.minimumInteritemSpacing = 10;
        self.minimumLineSpacing = 10;
        
    }
    return self;
}




@end
