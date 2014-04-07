//
//  RCComicDateTests.m
//  Marvelous
//
//  Created by Javier Cicchelli on 07/04/14.
//  Copyright (c) 2014 Rock & Code. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "RCComicDateObject.h"

@interface RCComicDateObjectTests : XCTestCase

@end

@implementation RCComicDateObjectTests

- (void)setUp
{
    [super setUp];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testInit
{
	RCComicDateObject *comicDate = [[RCComicDateObject alloc] init];

	XCTAssertNil(comicDate.type, @"\"%s\" is expecting the property 'type' to be NULL.", __PRETTY_FUNCTION__);
	XCTAssertNil(comicDate.date, @"\"%s\" is expecting the property 'date' to be NULL.", __PRETTY_FUNCTION__);
}

- (void)testInitWithDictionary
{
	NSDictionary *dictionary = @{RCResponseKeyType: @"TestType",
								 RCResponseKeyDate: @"2013-11-20T17:40:18-0500"};

	RCComicDateObject *comicDate = [[RCComicDateObject alloc] initWithDictionary:dictionary];

	XCTAssertNotNil(comicDate.type, @"\"%s\" is expecting the property 'type' to be not NULL.", __PRETTY_FUNCTION__);
	XCTAssertNotNil(comicDate.date, @"\"%s\" is expecting the property 'date' to be not NULL.", __PRETTY_FUNCTION__);
}

@end