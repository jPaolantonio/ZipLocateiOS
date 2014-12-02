//
//  ZipLocationTest.m
//  ZipLocateSample
//
//  Created by James Paolantonio on 9/2/14.
//  Copyright (c) 2014 James Paolantonio. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JPZipLocation.h"

@interface JPZipLocationTest : XCTestCase

@end

@implementation JPZipLocationTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testParsing {
    NSDictionary *dict = @{@"lat" : @"40.1",
                           @"lng" : @"1.88",
                           @"zip" : @"12345"};
    
    JPZipLocation *loc = [[JPZipLocation alloc] initWithDictionary:dict];
    
    XCTAssertEqualObjects(loc.lat, @"40.1");
    XCTAssertEqualObjects(loc.lng, @"1.88");
    XCTAssertEqualObjects(loc.zip, @"12345");
}

@end
