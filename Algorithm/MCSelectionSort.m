//
//  MCSelectionSort.m
//  Algorithm
//
//  Created by Miralem Cebic on 04.12.12.
//  Copyright (c) 2012 Miralem Cebic. All rights reserved.
//

#import "MCSelectionSort.h"

@interface MCSelectionSort()
@property (nonatomic, strong) NSMutableArray * array;
@end

@implementation MCSelectionSort
- (id)initWithArray:(NSArray*)array_
{
    if ((self =[super init])) {
        _array = [NSMutableArray arrayWithArray:array_];
    }
    return self;
}

- (NSArray*)sort
{
    //i < (int)_array.count-1 weil index nur bis einschlieslich dem vorletzen gehen muss
    for (int i = 0; i < (int)_array.count-1; i++) { 
        
        int actValue = [[_array objectAtIndex:i] intValue];

        int smallestValue = actValue;
        int counterForSmallestValue = i;
        
        for (int j = i+1; j < (int)_array.count ; j++) {
            
            int nextValue = [[_array objectAtIndex:j] intValue];
            if (nextValue < smallestValue) {
                smallestValue = nextValue;
                counterForSmallestValue = j;
            }
            
            if (j == (int)_array.count-1 && counterForSmallestValue != i) {
                int left = [[_array objectAtIndex:i] intValue];
                int right = [[_array objectAtIndex:counterForSmallestValue] intValue];
                
                [_array replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:right]];
                [_array replaceObjectAtIndex:counterForSmallestValue withObject:[NSNumber numberWithInt:left]];
            }
        }
    }
    
    return [NSArray arrayWithArray:_array];
}

+ (NSArray*)sortArray:(NSArray*)array_
{
    NSMutableArray * array = [NSMutableArray arrayWithArray:array_];
    for (int i = 0; i < (int)array.count-1; i++) {
        
        int actValue = [[array objectAtIndex:i] intValue];
        
        int smallestValue = actValue;
        int counterForSmallestValue = i;
        
        for (int j = i+1; j < (int)array.count ; j++) {
            
            int nextValue = [[array objectAtIndex:j] intValue];
            if (nextValue < smallestValue) {
                smallestValue = nextValue;
                counterForSmallestValue = j;
            }
            
            if (j == (int)array.count-1 && counterForSmallestValue != i) {
                int left = [[array objectAtIndex:i] intValue];
                int right = [[array objectAtIndex:counterForSmallestValue] intValue];
                
                [array replaceObjectAtIndex:i withObject:[NSNumber numberWithInt:right]];
                [array replaceObjectAtIndex:counterForSmallestValue withObject:[NSNumber numberWithInt:left]];
            }
        }
    }
    
    return [NSArray arrayWithArray:array];
}
@end
