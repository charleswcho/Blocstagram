//
//  MediaFullScreenViewController.h
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/14/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Media;

@interface MediaFullScreenViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

- (instancetype) initWithMedia:(Media *)media;

- (void) centerScrollView;

@end
