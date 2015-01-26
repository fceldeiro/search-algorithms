//
//  NSArray+BinarySearch.m
//  search-algorithms
//
//  Created by Fabian Celdeiro on 1/25/15.
//  Copyright (c) 2015 Fabian Celdeiro. All rights reserved.
//

#import "NSArray+BinarySearch.h"

@implementation NSArray (BinarySearch)

-(id) sa_binarySearch:(id) objectToSearch{
    
    NSRange range;
    range.location = 0;
    range.length = self.count-1;
    

    NSUInteger index = [self indexOfObject:objectToSearch inSortedRange:range options:NSBinarySearchingFirstEqual usingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        return [obj1 compare:obj2];

    }];
    
    if (index != NSNotFound){
    
        return [self objectAtIndex:index];
    }
    else{
        return nil;
    }
}
@end
