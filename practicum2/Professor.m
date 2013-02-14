//Original Author: Maria
//Modified-By Author: Sam Horwath
//Date Last Modified: 2/13/2013
//Purpose: Inharites the instance of a Person class and holds
//         settera and getters for the variable : tenure, salary, department name.

#import "Professor.h"

@implementation Professor

@synthesize department, salary, tenure;

-(id) init
{
    if(self = [super init])
    {
        return(self);
    }
    return nil;
}

-(id) initWithFirst: (NSString*) a andLast: (NSString*) b andID: (int) c andisStudent: (bool) d andDept: (NSString *) e andSal: (double) f andTen: (bool) g
{
    if(self = [super initWithFirst:(NSString *)a andLast:(NSString *)b andID:(int)c andIs:(bool)d])
    {
        department = e;
        salary = f;
        tenure = g;
        return(self);
    }
    return nil;
}

@end
