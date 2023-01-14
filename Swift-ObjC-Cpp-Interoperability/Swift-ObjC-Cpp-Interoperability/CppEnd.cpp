#include <iostream>

class Shim; // This declaration is needed to keep ReverseShim.h ObjC-free.
#include "CppEnd.hpp"
#include "ReverseShim.h"

CppEnd::CppEnd(ReverseShim* reverse_shim )
    :m_reverse_shim{ reverse_shim }
{
}
    
CppEnd::~CppEnd()
{
}

int32_t CppEnd::receiveFromSwift( int32_t val )
{
    std::cerr << "BEGIN CppEnd::receiveFromSwift(" << val << ")\n";
    const int32_t rtn_val = this->callToSwift( val );
    std::cerr << "END CppEnd::receiveFromSwift()\n";
    return rtn_val;
}

int32_t CppEnd::callToSwift( int32_t val )
{
    std::cerr << "BEGIN CppEnd::callToSwift(" << val << ")\n";
    const int32_t rtn_val = m_reverse_shim->callToSwift( val );
    std::cerr << "END CppEnd::callToSwift()\n";
    return rtn_val;
}
