//
//  search_algorithmsTests.m
//  search-algorithmsTests
//
//  Created by Fabian Celdeiro on 1/25/15.
//  Copyright (c) 2015 Fabian Celdeiro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "NSArray+LinearSearch.h"
#import "NSArray+BinarySearch.h"


static const NSUInteger kArraySize = 100000;
static const NSUInteger kOffset = 50000;

static const NSUInteger kArrayTwentyFivePorcent = (NSUInteger)(kArraySize)*25/100+kOffset;
static const NSUInteger kArrayFiftyPorcent = (NSUInteger)(kArraySize)*50/100+kOffset;
static const NSUInteger kArraySeventyFivePorcent = (NSUInteger)(kArraySize)*75/100+kOffset;

static const NSUInteger kIterationCount = 100;




@interface search_algorithmsTests : XCTestCase

@end

@implementation search_algorithmsTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


-(NSArray*) sortedArrayWithNumbers{
    
    
    NSMutableArray * mutableArray = [NSMutableArray arrayWithCapacity:kArraySize];
    for (int i = 0 ; i<kArraySize ; i++){
        [mutableArray addObject:@(kOffset + i)];
    }
    return [NSArray arrayWithArray:mutableArray];
}


#pragma mark - Linear Search test
- (void) testLinearSearchFirst{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_linearSearch:@(kOffset)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kOffset));
    
}
- (void) testLinearSearchTwentyFiveProcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_linearSearch:@(kArrayTwentyFivePorcent)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArrayTwentyFivePorcent));

}
- (void) testLinearSearchFiftyPorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_linearSearch:@(kArrayFiftyPorcent)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArrayFiftyPorcent));
    
}
- (void) testLinearSearchSeventyFivePorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_linearSearch:@(kArraySeventyFivePorcent)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArraySeventyFivePorcent));
    
}
- (void) testLinearSearchLast{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_linearSearch:@(kArraySize-1)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArraySize-1));
    
}

#pragma mark  - Linear search performance
-(void) testLinearSearchPerformanceFirst{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount ; i++){
            [array sa_linearSearch:@(kOffset)];
        }
    }];
    
    
}
-(void) testLinearSearchPerformanceTwentyFivePorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount ; i++){
            [array sa_linearSearch:@(kArrayTwentyFivePorcent)];
        }
    }];
    

}
-(void) testLinearSearchPerformanceFityPorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount ; i++){
            [array sa_linearSearch:@(kArrayFiftyPorcent)];
        }
    }];
    
    
}

-(void) testLinearSearchPerformanceSeventyFivePorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount ; i++){
            [array sa_linearSearch:@(kArraySeventyFivePorcent)];
        }
    }];
    
    
}
-(void) testLinearSearchPerformanceLast{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount ; i++){
            [array sa_linearSearch:@(kArraySize-1)];
        }
    }];
    
    
}


#pragma mark - Binary search test
- (void) testBinarySearchFirst{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_binarySearch:@(kOffset)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kOffset));
    
}
- (void) testBinarySearchTwentyFivePorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_binarySearch:@(kArrayTwentyFivePorcent)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArrayTwentyFivePorcent));
    
}
- (void) testBinarySearchFiftyPorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_binarySearch:@(kArrayFiftyPorcent)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArrayFiftyPorcent));
    
}
- (void) testBinarySearchSeventyFivePorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_binarySearch:@(kArraySeventyFivePorcent)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArraySeventyFivePorcent));
    
}
- (void) testBinarySearchLast{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    id objectReturned = [array sa_binarySearch:@(kArraySize-1)];
    
    XCTAssertNotNil(objectReturned);
    XCTAssertEqualObjects(objectReturned, @(kArraySize-1));
    
}


#pragma mark - Binary search Performance test
- (void) testBinarySearchPerformanceFirst{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount*1000 ; i++){
            id objectReturned = [array sa_binarySearch:@(kOffset)];
            XCTAssertEqualObjects(objectReturned, @(kOffset));
        }
    }];
    
}
- (void) testBinarySearchPerformanceTwentyFivePorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount*1000 ; i++){
            id objectReturned = [array sa_binarySearch:@(kArrayTwentyFivePorcent)];
            XCTAssertEqualObjects(objectReturned, @(kArrayTwentyFivePorcent));
        }
    }];
    
}
- (void) testBinarySearchPerformanceFiftyPorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount*1000 ; i++){
            id objectReturned = [array sa_binarySearch:@(kArrayFiftyPorcent)];
            XCTAssertEqualObjects(objectReturned, @(kArrayFiftyPorcent));
        }
    }];
    
}
- (void) testBinarySearchPerformanceSeventyFivePorcent{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount*1000 ; i++){
            id objectReturned = [array sa_binarySearch:@(kArraySeventyFivePorcent)];
            XCTAssertEqualObjects(objectReturned, @(kArraySeventyFivePorcent));
        }
    }];
    
}
- (void) testBinarySearchPerformanceLast{
    
    NSArray * array = [self sortedArrayWithNumbers];
    
    [self measureBlock:^{
        for (int i=0 ; i<kIterationCount*1000 ; i++){
            id objectReturned = [array sa_binarySearch:@(kArraySize-1)];
            XCTAssertEqualObjects(objectReturned, @(kArraySize-1));
        }
    }];
    
}



//-(void) testBinarySearchPerformance{
//    
//    
//    NSArray * array = [self arrayWithElementForFindAtMiddle];
//    
//    [self measureBlock:^{
//        for (int i=0 ; i<kIterationCount ; i++){
//            [array sa_binarySearch:@(kArrayMiddle)];
//        }
//    }];
//}

@end
