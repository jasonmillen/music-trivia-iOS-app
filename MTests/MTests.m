//
//  MTests.m
//  MTests
//
//  Created by Jason Millen on 4/29/15.
//  Copyright (c) 2015 Jason Millen. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface MTests : XCTestCase

@end

@implementation MTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
