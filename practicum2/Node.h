//
//  Node.h
//  Practicum_2
//
//  Created by Katharine E Levittan on 2/12/13.
//  Copyright (c) 2013 Ithaca College. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Professor.h"

//constructs object
@interface Node : NSObject {
    Person *data;
    Node *next;
}

//properties
@property (nonatomic, retain) Person *data;
@property (nonatomic, retain) Node *next;

- (id) init;

@end
