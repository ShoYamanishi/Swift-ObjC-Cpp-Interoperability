#ifndef __CPP_END_HPP__
#define __CPP_END_HPP__

#include <cstdint>

class ReverseShim;

class CppEnd {
public:
    CppEnd(ReverseShim* reverse_shim);
    ~CppEnd();

    int32_t receiveFromSwift( int32_t val );
    int32_t callToSwift( int32_t val );
private:
    ReverseShim* m_reverse_shim;
};

#endif /*__CPP_END_HPP__*/
