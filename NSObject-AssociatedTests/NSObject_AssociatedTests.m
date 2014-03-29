//
//  NSObject_AssociatedTests.m
//  NSObject-AssociatedTests
//
//  Created by Konstantin Koval on 29/03/14.
//  Copyright (c) 2014 Konstantin Koval. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSObject+AssociatedTest.h"

@interface NSObject_AssociatedTests : XCTestCase

@end

@implementation NSObject_AssociatedTests

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

- (void)testAssociated
{
    NSObject *object = [NSObject new];
    object.name = @"aa";
    object.delegate = self;
    object.number = 1;
    object.otherNumber = 2.5;
    
    XCTAssertEqualObjects(object.name, @"aa", @"name property is not save to associated object");
    XCTAssertEqual(object.delegate, self, @"delegare property is not save to associated object");
    XCTAssertEqual(object.number, 1, @"number property is not save to associated object");
    XCTAssertEqualWithAccuracy(object.otherNumber, 2.5, 0.01, @"otherNumber property is not save to associated object");
 
}

@end
