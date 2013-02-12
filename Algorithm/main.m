//
//  main.m
//  Algorithm
//
//  Created by Miralem Cebic on 04.12.12.
//  Copyright (c) 2012 Miralem Cebic. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MCBubbleSort.h"
#import "MCSelectionSort.h"
#import "MCInsertionSort.h"
#import "MCQuickSort.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSArray * a = [NSArray arrayWithObjects:
                       [NSNumber numberWithInt:1],
                       [NSNumber numberWithInt:35],
                       [NSNumber numberWithInt:8],
                       [NSNumber numberWithInt:1],
                       [NSNumber numberWithInt:6],
                       [NSNumber numberWithInt:3],
                       [NSNumber numberWithInt:2],
                       [NSNumber numberWithInt:5],
                       [NSNumber numberWithInt:4],
                       [NSNumber numberWithInt:3],nil];

//        MCBubbleSort * bubbleSort = [[MCBubbleSort alloc] initWithArray:a];
//        MCSelectionSort * selectionSort = [[MCSelectionSort alloc] initWithArray:a];
//        MCInsertionSort * insertionSort = [[MCInsertionSort alloc] initWithArray:a];
        MCQuickSort * quickSort = [[MCQuickSort alloc] initWithArray:a];

//        NSLog(@"%@", [bubbleSort sort]);
//        NSLog(@"%@", [selectionSort sort]);
//        NSLog(@"%@", [insertionSort sort]);
        NSLog(@"%@", [quickSort sort]);
        
    }
    return 0;
}

