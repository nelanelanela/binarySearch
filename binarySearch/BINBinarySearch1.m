//
//  BINBinarySearch1.m
//  binarySearch
//
//  Created by Natalia on 25/04/14.
//  Copyright (c) 2014 Natalia. All rights reserved.
//

#import "BINBinarySearch1.h"

@implementation BINBinarySearch1

#pragma mark - + BINBinarySearch1

+ (NSInteger)searchMeThisNumber:(NSInteger)number inTheArray:(NSArray *)array
{
    NSInteger lowestSearchIndex = 0;
    NSInteger highestSearchIndex = [array count];
    NSInteger currentIndex = highestSearchIndex/2;
    NSInteger indexOfNumber = currentIndex;

    if (highestSearchIndex > 0) {
    
        NSInteger previousIndex = highestSearchIndex;
        NSInteger currentNumber = [[array objectAtIndex:currentIndex] integerValue];

        while ((currentNumber != number) && (currentIndex != previousIndex)) {
            
            previousIndex = currentIndex;
            
            if (number > currentNumber) {
                lowestSearchIndex = currentIndex;
                currentIndex = (highestSearchIndex-lowestSearchIndex)/2 + lowestSearchIndex;
            }
            else if (number < currentNumber) {
                highestSearchIndex = currentIndex;
                currentIndex = (highestSearchIndex-lowestSearchIndex)/2;
            }
            currentNumber = [[array objectAtIndex:currentIndex] integerValue];
        }
        
        indexOfNumber = currentNumber == number ? currentIndex : -1;
    }
    
    else {
        indexOfNumber = -1;
    }
    
    return indexOfNumber;
}

@end

