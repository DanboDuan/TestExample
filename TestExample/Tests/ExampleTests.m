//
//  ExampleTests.m
//  TestExample-Unit-Tests
//
//  Created by Zoe on 30/4/2020.
//

#import <XCTest/XCTest.h>
#import "TestExample.h"

@interface ExampleTests : XCTestCase

@end

@implementation ExampleTests

- (void)testExample {
    TestExample *a = [TestExample new];
    XCTAssertNotNil(a);
    XCTAssertEqualObjects([a testMethod], @"testMethod");
    NSLog(@"%@",a);
}

@end
