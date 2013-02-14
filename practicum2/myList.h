//Original Author: ???
//Modified-By Author: Sam Horwath
//Date Last Modified: 2/13/2013
//Purpose: 

#import <Foundation/Foundation.h>
#include "Node.h"
#include "Person.h"

@interface myList : NSObject{

// Constructs the object
NSString *department;
double salary;
bool tenure;
}
/*********************Properties******************************/

@property (nonatomic, retain) NSString *department;
@property (nonatomic, assign) double salary;
@property (nonatomic, assign) bool tenure;

/*************************************************************/

-(id) init;

-(id) initWithFirst: (NSString*) a andDept: (double) b andSal: (bool) c andTen: d;

- (bool) isEmpty;
- (int) getLength;
- (bool) remove: (int) index;
- (bool) insert: (int) index andData: (Person*) newItem;


//not really sure how to set up this function...
- (bool) retrieve: (int) index andData: (Person*) newItem;

@end
