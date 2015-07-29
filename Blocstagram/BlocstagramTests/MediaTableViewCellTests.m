//
//  MediaTableViewCellTests.m
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/29/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "MediaTableViewCell.h"
#import "Media.h"
#import "ComposeCommentView.h"

@interface MediaTableViewCellTests : XCTestCase

@end

@implementation MediaTableViewCellTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatHeightForMediaItem:widthWorks
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *imagePath = [bundle pathForResource:@"1.jpg" ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:imagePath];
    
    MediaTableViewCell *testMediaTableViewCell = [[MediaTableViewCell alloc] init];
    
    Media *MediaItem = [[Media alloc] init];
    MediaItem.image = image;
    
    testMediaTableViewCell.mediaItem = MediaItem;
    
    XCTAssertEqual(CGRectGetMaxY(testMediaTableViewCell.commentView.frame), 500.0, @"The ID number should be equal");

}



@end
