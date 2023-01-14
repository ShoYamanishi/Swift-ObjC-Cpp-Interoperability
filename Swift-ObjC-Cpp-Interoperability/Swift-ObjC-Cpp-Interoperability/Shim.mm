#import "Shim.h"
#import "ReverseShim.h" // This must be below "Shim.h"
#include "CppEnd.hpp"

#import "Swift_ObjC_Cpp_Interoperability-Swift.h"

@implementation Shim {
    CppEnd*      _m_cpp_end;
    SwiftEnd*    _m_swift_end;
    ReverseShim* _m_reverse_shim;
}

-(instancetype) init:(SwiftEnd*)swift_end
{
    self = [super init];
    if (self) {
        _m_reverse_shim = new ReverseShim( self );
        _m_cpp_end = new CppEnd( _m_reverse_shim );
        _m_swift_end = swift_end;
    }
    return self;
}

-(void)dealloc {
    delete _m_cpp_end;
    delete _m_reverse_shim;
    _m_swift_end = nil;
}

-(int) callToCpp:(int) val
{
    NSLog( @"BEGIN Shim callToCpp (%d )", val );
    const int rtn_val = _m_cpp_end->receiveFromSwift( val );
    NSLog( @"END Shim callToCpp()");
    return rtn_val;
}

-(int) callToSwift:(int) val
{
    NSLog( @"BEGIN Shim callToSwift: %d", val );
    const int rtn_val = [ _m_swift_end receiveFromCpp: val ];
    NSLog( @"END Shim callToSwift" );
    return rtn_val;
}
@end
