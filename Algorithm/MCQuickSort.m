//
//  MCQuickSort.m
//  Algorithm
//
//  Created by Miralem Cebic on 12.02.13.
//  Copyright (c) 2013 Miralem Cebic. All rights reserved.
//


#import "MCQuickSort.h"

@interface MCQuickSort()
@property (nonatomic, strong) NSMutableArray * array;
@end

@implementation MCQuickSort
- (id)initWithArray:(NSArray*)array_
{
    if ((self =[super init])) {
        _array = [NSMutableArray arrayWithArray:array_];
    }
    return self;
}

- (void)quickSort:(int)left right:(int)right
{
    int i = left, j = right;
    int tmp;
    int pivot = [[_array objectAtIndex:(floor((left + right) / 2))] intValue];
    
    /* partition */
    while (i <= j) {
        while ([[_array objectAtIndex:i] intValue] < pivot) {
            i++;
        }
        while ([[_array objectAtIndex:j] intValue] < pivot) {
            j--;
        }
        if (i <= j) {
            tmp = [[_array objectAtIndex:i] intValue];
            int tmpJ = [[_array objectAtIndex:j] intValue];
            [_array replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:tmpJ]];
            [_array replaceObjectAtIndex:tmpJ withObject:[NSNumber numberWithInt:tmpJ]];
            i++;
            j--;
        }
    }
    
    /* recursion */
    if (left < j)
    {
        [self quickSort:left right:j];
    }
    if (i < right) {
        [self quickSort:i right:right];
    }
}

- (NSArray*)sort
{
    [self quickSort:1 right:3];
    
    return [NSArray arrayWithArray:_array];
}

+ (NSArray*)sortArray:(NSArray*)array_
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:array_];
    
    return [NSArray arrayWithArray:array_];
}
@end
