//
//  MCBubbleSort.m
//  Algorithm
//
//  Created by Miralem Cebic on 04.12.12.
//  Copyright (c) 2012 Miralem Cebic. All rights reserved.
//

#import "MCBubbleSort.h"

@interface MCBubbleSort()

@property (nonatomic, strong) NSMutableArray * array;

@end

@implementation MCBubbleSort

- (id)initWithArray:(NSArray*)array_
{
    self = [super init];
    if (self) {
        _array = [NSMutableArray arrayWithArray:array_];
    }
    return self;
}

- (NSArray*)sort
{
    for (int i = (int)_array.count; i > 1; i--) {
        for (int j = 0; j<i-1; j++) {
            if ([[_array objectAtIndex:j] intValue] > [[_array objectAtIndex:j+1] intValue]) {
                int left = [[_array objectAtIndex:j] intValue]; // left ist bigger than right
                int right = [[_array objectAtIndex:j+1] intValue];
                
                [_array replaceObjectAtIndex:j+1 withObject:[NSNumber numberWithInt:left]];
                [_array replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:right]];
            }
        }
    }
    return [NSArray arrayWithArray:_array];
}

+ (NSArray*)sortArray:(NSArray*)array_
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:array_];
    for (int i = (int)array.count; i > 1; i--) {
        for (int j = 0; j<i-1; j++) {
            if ([[array objectAtIndex:j] intValue] > [[array objectAtIndex:j+1] intValue]) {
                int left = [[array objectAtIndex:j] intValue];
                int right = [[array objectAtIndex:j+1] intValue];
                
                [array replaceObjectAtIndex:j+1 withObject:[NSNumber numberWithInt:left]];
                [array replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:right]];
            }
        }
    }
    return [NSArray arrayWithArray:array];
}

@end
