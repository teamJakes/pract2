// Original Author: Maria Segura
// Modified-By Author: David Banker
//Modified-By Author: Josh Yanowitz
// Date Last Modified: 02/01/2013, 02/01/2013
// Purpose: An object that holds a first and last name, and an 
// identification number.
//convert to 

#ifndef PERSON_H
#define	PERSON_H

#include <string>
#include <foundation/foundation.h>
using namespace std;

@interface Person : NSObject {
    // Constructs the object
    NSString *firstName;
    NSString *lastName;
    int IDNum;
    bool isStudent;
}

/*********************Properties******************************/

@property (nonatomic, retain) NSString *firstName;
@property (nonatomic, retain) NSString *lastName;
@property (nonatomic, assign) int IDNum;
@property (nonatomic, assign) bool isStudent;

/*************************************************************/

-(id) init;

-(id) initWithFirst: (NSString*) a andLast: (NSString*) b andID: (int) c andIs: (bool) d;


/*******************virtual don't need**********************************
	// Accessor signatures of potential child objects of Person 
    virtual float getGPA();
    virtual int getGradYear();
    virtual string getMajor();
    virtual int getSalary();
    virtual bool getTenureStatus();
    virtual string getDepartment();
    
	// Mutator signatures of potential child classes of Person
    virtual void setSalary(int newSalary);
    virtual void setTenureStatus(bool newStatus);
    virtual void setDepartment(string newDepartment);
    virtual void setGPA(int newGPA);
    virtual void setGradYear(int newGradYear);
    virtual void setMajor(string newMajor);
    ********************************************************************/ 
	
	// Mutator signatures of Person

-(void) setFirstName: (NSString *) newFirstName;
    //void setFirstName(string newFirstName);
-(void) setLastName: (NSString *) newLastName;
    //void setLastName(string newLastName);
-(void) setIDNum: (int) newIDNum;
    //void setIDNum(int newIDNum);
-(void) setStatus: (bool) newIsStudent;
    //void setStatus(bool newIsStudent);
 
    
@end
    // Properties of Person
	
    


#endif	/* PERSON_H */

