//
//  NSArray+LinearSearch.m
//  search-algorithms
//
//  Created by Fabian Celdeiro on 1/25/15.
//  Copyright (c) 2015 Fabian Celdeiro. All rights reserved.
//

#import "NSArray+LinearSearch.h"

@implementation NSArray (LinearSearch)


-(id) sa_linearSearch:(id) objectToFind{
    
    __block id objectToReturn = nil;
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        
        
        if ([obj isEqual:objectToFind]){
            objectToReturn = obj;
            *stop = YES;
        }
    }];
    
    return objectToReturn;
}

@end
