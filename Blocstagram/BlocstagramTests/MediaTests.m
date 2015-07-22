//
//  MediaTests.m
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/22/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"

@interface MediaTests : XCTestCase

@end

@implementation MediaTests

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
    NSDictionary *sourceDictionary = @{@"id": @"8675309",
                                       //@"user": @"Mr. Ugly",
                                       //@"image": @"www.mugshot.jpg",
                                        @"caption" : @"",
                                       //@"comments" : @{@"yellow guy":@1,
                                       //                @"Much hunger":@2,
                                       //                @"Very fat":@3},
                                                      
                                       @"user_has_liked" : @YES
                                       };
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    //XCTAssertEqualObjects(testMedia.user, sourceDictionary[@"user"], @"The user should be equal");
    //XCTAssertEqualObjects(testMedia.mediaURL, [NSURL URLWithString:sourceDictionary[@"image"]] @"The image should be equal");
    XCTAssertEqualObjects(testMedia.caption, sourceDictionary[@"caption"], @"The caption should be equal");
    //XCTAssertEqualObjects(testMedia.comments, sourceDictionary[@"comments"][@"data"], @"The comment should be equal");
    
    XCTAssertEqualObjects(testMedia.likeState, sourceDictionary[@"user_has_liked"], @"The comment should be equal");


}

@end
