// Original Author: Maria Segura
// Modified-By Author: David Banker
// Date Last Modified: 02/01/2013
// Purpose: Creates an instance of an object that holds a first and last
// name, and an identification number.

#import "Person.h"

@implementation Person

@synthesize firstName, lastName, IDNum, isStudent;

// Constructor
// Parameters: none
// Returns: the newly instantiated Person object
// Precondition: none
// Postcondition: none
// Algorithm: constructs the object without properties


-(id) init
{
    if(self = [super init])
    {
        firstName = @"John";
        lastName = @"Smith";
        IDNum = 000000;
        isStudent = false;
        return(self);
    }
return nil;
}

@end

