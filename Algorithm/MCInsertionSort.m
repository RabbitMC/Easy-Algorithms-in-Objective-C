//
//  MCInsertionSort.m
//  Algorithm
//
//  Created by Miralem Cebic on 04.12.12.
//  Copyright (c) 2012 Miralem Cebic. All rights reserved.
//

#import "MCInsertionSort.h"

@interface MCInsertionSort()
@property (nonatomic, strong) NSMutableArray * array;
@end

@implementation MCInsertionSort
- (id)initWithArray:(NSArray*)array_
{
    if ((self =[super init])) {
        _array = [NSMutableArray arrayWithArray:array_];
    }
    return self;
}

- (NSArray*)sort
{
    int i,j,x;
    
    for(i=1;i<=_array.count-1;i++) {
        j=i;
        x=[[_array objectAtIndex:i]intValue];
        while ([[_array objectAtIndex:j-1]intValue]>x && j>0) {
            [_array replaceObjectAtIndex:j withObject:[_array objectAtIndex:(j-1)]];
            j--;
        }
        [_array replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:x]];
    }
    
    return [NSArray arrayWithArray:_array];
}

+ (NSArray*)sortArray:(NSArray*)array_
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:array_];
    
    int i,j,x;
    
    for(i=1;i<=array.count-1;i++) {
        j=i;
        x=[[array objectAtIndex:i]intValue];
        while ([[array objectAtIndex:j-1]intValue]>x && j>0) {
            [array replaceObjectAtIndex:j withObject:[array objectAtIndex:(j-1)]];
            j--;
        }
        [array replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:x]];
    }
    
    return [NSArray arrayWithArray:array_];
}
@end
