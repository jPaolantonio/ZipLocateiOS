//
//  JPZipLocationClientTest.m
//  ZipLocateSample
//
//  Created by James Paolantonio on 9/2/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JPZipLocationClient.h"

@interface JPZipLocationClient (Private)
@property (copy, nonatomic) NSURL *url;
@end

@interface JPZipLocationClientTest : XCTestCase
@property (copy, nonatomic) NSURL *url;
@end

@implementation JPZipLocationClientTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSingleton {
    XCTAssertNotNil([JPZipLocationClient client]);
    
    XCTAssertEqualObjects([JPZipLocationClient client], [JPZipLocationClient client]);
}

- (void)testInitParams {
    XCTAssertEqualObjects([[JPZipLocationClient client].url absoluteString],
                          @"http://ziplocate.us/api/v1/");
}

- (void)testURLChange {
    [[JPZipLocationClient client] setURL:@"http://jpaol.co"];
    
    XCTAssertEqualObjects([[JPZipLocationClient client].url absoluteString],
                          @"http://jpaol.co");
}

@end
