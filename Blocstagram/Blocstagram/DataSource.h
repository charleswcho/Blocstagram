//
//  DataSourse.h
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/8/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

+(instancetype) sharedInstance;
@property (nonatomic, strong, readonly) NSArray *mediaItems;


@end
