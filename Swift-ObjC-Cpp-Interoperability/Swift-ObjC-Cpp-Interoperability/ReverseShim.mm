#import "Shim.h"
#import "ReverseShim.h"

ReverseShim::ReverseShim(Shim* shim)
    :m_shim{shim}
{

}
ReverseShim::~ReverseShim()
{
}

int32_t ReverseShim::callToSwift( int32_t val )
{
    NSLog( @"BEGIN ReverseShim callToSwift( %d )", val );
    const int32_t rtn_val = [ m_shim callToSwift: val ];
    NSLog( @"END ReverseShim callToSwift()" );
    return rtn_val;
}
