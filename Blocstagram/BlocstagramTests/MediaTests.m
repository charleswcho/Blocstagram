//
//  MediaTests.m
//  Blocstagram
//
//  Created by Charles Wesley Cho on 7/22/15.
//  Copyright (c) 2015 Charles Wesley Cho. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Media.h"
#import "User.h"
#import "Comment.h"

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
                                       @"user": @{@"id": @"8675309",
                                                  @"username" : @"d'oh",
                                                  @"full_name" : @"Homer Simpson",
                                                  @"profile_picture" : @"http://www.example.com/example.jpg"},
                                       @"images" : @{@"standard_resolution" : @{@"url" : @"www.testurl.com"}},
                                       @"downloadState" : @1,
                                       @"caption" : @"",
                                       //@"comment" : @{@"data" : @{@"idNumber": @"8675602",
                                       //                               @"from" : @"d'oh",
                                       //                               @"text" : @"Owww"}},
                                       @"user_has_liked" : @1
                                       };
    
    Media *testMedia = [[Media alloc] initWithDictionary:sourceDictionary];
    
    XCTAssertEqualObjects(testMedia.idNumber, sourceDictionary[@"id"], @"The ID number should be equal");
    XCTAssertEqualObjects(testMedia.user.userName, sourceDictionary[@"user"][@"username"], @"The user should be equal");
    XCTAssertEqualObjects(testMedia.user.fullName, sourceDictionary[@"user"][@"full_name"], @"The user should be equal");
    
    XCTAssertEqualObjects(testMedia.mediaURL, [NSURL URLWithString:sourceDictionary[@"images"][@"standard_resolution"][@"url"]], @"The image should be equal");
    
    XCTAssertEqual(testMedia.downloadState, MediaDownloadStateNeedsImage, @"The downloadState should be equal");

    
    XCTAssertEqualObjects(testMedia.caption, sourceDictionary[@"caption"], @"The caption should be equal");
    //XCTAssertEqualObjects(testMedia.comments[0], sourceDictionary[@"comments"][@"data"], @"The comment should be equal");
    
    XCTAssertEqual(testMedia.likeState, LikeStateLiked, @"The comment should be equal");


}

@end
