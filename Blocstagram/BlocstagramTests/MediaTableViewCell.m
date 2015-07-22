//
//  MediaTableViewCell.m
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/22/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface MediaTableViewCell : XCTestCase

@end

@implementation MediaTableViewCell

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

NSBundle *bundle = [NSBundle bundleForClass:self];
NSString *imagePath = [bundle pathForResource:@"1" ofType:@"jpg"];
UIImage *image = [UIImage imageWithContentsOfFile:imagePath];

- (instancetype)initWithPath:[bundle pathForResource]
}

@end
