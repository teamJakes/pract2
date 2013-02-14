//Original Author: Maria
//Modified-By Author: Sam Horwath
//Date Last Modified: 2/13/2013
//Purpose: declares variables for Professor class variables:
//         salary (int), tenure status (boolean), department (string).

#import <Foundation/Foundation.h>

@interface Professor : NSObject{

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

@end
