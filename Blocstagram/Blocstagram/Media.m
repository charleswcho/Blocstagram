//
//  Media.m
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/8/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import "Media.h"
#import <UIKit/UIKit.h>
#import "User.h"
#import "DataSource.h"

@interface Media ()
@property (nonatomic, strong) Media *items;

@end
@implementation Media

-(Media *) numberOfItems:(NSArray *)mediaItems {
    Media *items = [DataSource sharedInstance].mediaItems[indexPath.row];
    return [self items].count
}
@end
