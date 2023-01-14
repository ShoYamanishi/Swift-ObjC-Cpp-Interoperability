#ifndef __REVERSE_SHIM_H__
#define __REVERSE_SHIM_H__

// This header file is included from CppEnd.cpp and it must be ObjC-free.

#include <cstdint>

class ReverseShim {
public:
    ReverseShim(Shim* shim);
    ~ReverseShim();
    int32_t callToSwift( int32_t val );
private:
    Shim* m_shim;
};

#endif /*__REVERSE_SHIM_H__*/
