// Original Author: Maria Segura
// Modified-By Author: Team Awesome
//Refactored By Author: Elijah Davis
// Date Last Modified: 02/13/2013
// Purpose: Declares Variables for Student class variables:
//graduation (int), GPA (float) and major (string)

#import <foundation/foundation.h>
#import "Person.h"

@class Student;

@interface Student : Person {

//Constructs the student object
NSString *major;
int gradYear;
float gradePA;
}

/*********************Properties******************************/
@property (nonatomic, retain) NSString *major;
@property (nonatomic, assign) int gradYear;
@property (nonatomic, assign) float gradePA;
/****************************************************************/
-(id) init;

-(id) initWithFirst: (NSString*) a andLast: (NSString*) b andID: (int) c andisStudent: (bool) d andMajor: (NSString *) e andGradYear: (int) f andGPA: (float) g;

@end;