// Original Author: Maria Segura
// Modified-By Author: Team Awesome
//Refactored By Author: Elijah Davis
// Date Last Modified: 02/13/2013
// Purpose: Inherits the instance of person class and holds setters and getters for the variables gpa, major and gradYear.

#import "Student.h"

@implementation Student

@synthesize major, gradYear, gradePA;

-(id) init
{
	if(self =[super init]){
        return (self);
	}
	return nil;
}

-(id) initWithFirst: (NSString*) a andLast: (NSString*) b andID: (int) c andisStudent: (bool) d andMajor: (NSString *) e andGradYear: (int) f andGPA: (float) g
{
    if(self = [super initWithFirst:(NSString *)a andLast:(NSString *)b andID:(int)c andIs:(bool)d])
    {
        major = e;
        gradYear = f;
        gradePA = g;
        return(self);
    }
    return nil;
}

@end
