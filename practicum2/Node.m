//
//  Node.m
//  Practicum_2
//
//  Created by Katharine E Levittan on 2/12/13.
//  Copyright (c) 2013 Ithaca College. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize new, data;

/* Method constructor
 * parameters:  none
 * returns:	none
 * precondition: none
 * postcondition: next value is null
 * Algorithm: sets next value of the node to null
 */
- (id) init {
    if (self = [super init]) {
        return (self);
    }
    return nil;
}

@end
