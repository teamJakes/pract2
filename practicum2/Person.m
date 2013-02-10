// Original Author: Maria Segura
// Modified-By Author: David Banker
// Date Last Modified: 02/01/2013
// Purpose: Creates an instance of an object that holds a first and last
// name, and an identification number.

#include "Person.h"

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
        return(self);
    }
return nil;
}

/*
// Mutator functions of Person

-(void) setFirstName:(NSString *)newFirstName;
{
    firstName = newFirstName;
}

void Person::setFirstName(string newFirstName){
    firstName = newFirstName;
}
 


- (void) setLastName: (NSString *) newLastName;
{
    lastName = newLastName;
}


void Person::setLastName(string newLastName){
    lastName = newLastName;
}
 


-(void) setIDNum:(int)newIDNum;
{
    IDNum = newIDNum;
}


void Person::setIDNum(int newIDNum){
    IDNum = newIDNum;
}
 


- (void) setStatus:(bool)newIsStudent;
{
    isStudent = newIsStudent;
}


void Person::setStatus(bool newIsStudent){
    isStudent = newIsStudent;
}
*/
