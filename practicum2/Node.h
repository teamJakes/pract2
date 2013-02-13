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

typedef Person ListItemType;

//constructs object
@interface Node : NSObject {
    ListItemType data;
    Node *next;
}

//properties
@property (nonatomic, assign) ListItemType data;
@property (nonatomic, assign) Node *next;

- (id) init;

@end
