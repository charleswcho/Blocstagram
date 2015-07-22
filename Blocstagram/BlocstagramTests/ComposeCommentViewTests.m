//
//  ComposeCommentViewTests.m
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/22/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ComposeCommentView.h"

@interface ComposeCommentViewTests : XCTestCase

@end

@implementation ComposeCommentViewTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatInitializationWorks
{

    ComposeCommentView *testComposeCommentView = [[ComposeCommentView alloc] init];
    testComposeCommentView.text = @"asdfsda";
    
    XCTAssertEqual(testComposeCommentView.isWritingComment, YES);
   
    testComposeCommentView.text = @"";
    
    XCTAssertEqual(testComposeCommentView.isWritingComment, NO);

}



@end
