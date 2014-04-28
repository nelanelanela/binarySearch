//
//  binarySearchTests.m
//  binarySearchTests
//
//  Created by Natalia on 25/04/14.
//  Copyright (c) 2014 Natalia. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "BINBinarySearch1.h"

@interface binarySearchTests : XCTestCase


@end

@implementation binarySearchTests


- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:3 inTheArray:@[]]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:3 inTheArray:@[@1]]);
    XCTAssertEqual(0,  [BINBinarySearch1 searchMeThisNumber:1 inTheArray:@[@1]]);

    NSArray *ar = @[@1, @2, @3];
    XCTAssertEqual(0, [BINBinarySearch1 searchMeThisNumber:1 inTheArray:ar]);
    
    ar = @[@1, @3, @5];
    XCTAssertEqual(1,  [BINBinarySearch1 searchMeThisNumber:3 inTheArray:ar]);
    XCTAssertEqual(2,  [BINBinarySearch1 searchMeThisNumber:5 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:0 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:2 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:4 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:6 inTheArray:ar]);

    ar = @[@1, @3, @5, @7];
    XCTAssertEqual(0,  [BINBinarySearch1 searchMeThisNumber:1 inTheArray:ar]);
    XCTAssertEqual(1,  [BINBinarySearch1 searchMeThisNumber:3 inTheArray:ar]);
    XCTAssertEqual(2,  [BINBinarySearch1 searchMeThisNumber:5 inTheArray:ar]);
    XCTAssertEqual(3,  [BINBinarySearch1 searchMeThisNumber:7 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:0 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:2 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:4 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:6 inTheArray:ar]);
    XCTAssertEqual(-1, [BINBinarySearch1 searchMeThisNumber:8 inTheArray:ar]);
}

@end
