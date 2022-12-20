//
//  CalculatorTests.m
//  CalculatorTests
//
//  Created by Alexander Jackson on 12/5/22.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface CalculatorTests : XCTestCase

@property ViewController* viewController;

@end

@implementation CalculatorTests

- (void)setUp {
    [super setUp];
    _viewController = [[ViewController alloc]init];
}

- (void)tearDown {
    [super tearDown];
    _viewController = nil;
}

-(void)testAdd {
    NSString * expectedAnswer = @"10";
    [_viewController add:@"3" withValue:@"7"];
    XCTAssertEqualObjects(expectedAnswer, _viewController.answer);
}

- (void)testPlusMinus {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
