/* Original Author: Unknown
 * Refactored to Objective-C: Katie Levittan
 * Date Last Modified: 2/12/2013
 */

#import "Node.h"

@implementation Node

@synthesize next, data;

/* Method constructor
 * parameters:  none
 * returns:	none
 * precondition: none
 * postcondition: next value is null
 * Algorithm: sets next value of the node to null
 */
- (id) init {
    if (self = [super init]) {
        return (self);
    }
    return nil;
}

- (id) initWithData: (ListItemType *) a andNext: (Node *) b
{
    if (self = [super init]) {
        next = b;
        data = a;
        return (self);
    }
    return nil;
}
@end
