/* Original Author: Unknown
 * Refactored to Objective-C: Katie Levittan
 * Date Last Modified: 2/12/2013
 */

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
@property (nonatomic, retain) Node *next;

- (id) init;

- (id) initWithData: (ListItemType) a andNext: (Node *) b;
//a comment
@end
