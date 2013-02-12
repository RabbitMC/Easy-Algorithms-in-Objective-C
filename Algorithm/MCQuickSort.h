//
//  MCQuickSort.h
//  Algorithm
//
//  Created by Miralem Cebic on 12.02.13.
//  Copyright (c) 2013 Miralem Cebic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MCQuickSort : NSObject
- (id)initWithArray:(NSArray*)array_;
- (NSArray*)sort;
+ (NSArray*)sortArray:(NSArray*)array_;
@end
