#ifndef __SHIM__H__
#define __SHIM__H__
#import <Foundation/Foundation.h>

@class SwiftEnd;

@interface Shim : NSObject
-(instancetype) init:(SwiftEnd*)swift_end;
-(int) callToCpp:(int) val;
-(int) callToSwift:(int) val;
@end

#endif /*__SHIM_OBJC_H__*/
