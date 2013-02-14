// Original Author: Maria Segura
// Modified-By Author: David Banker
//Modified-By Author: Josh Yanowitz
// Date Last Modified: 02/01/2013, 02/01/2013
// Purpose: An object that holds a first and last name, and an 
// identification number.
//convert to 

#ifndef PERSON_H
#define	PERSON_H


#import <foundation/foundation.h>


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



 
    
@end
    
	
    


#endif	/* PERSON_H */

