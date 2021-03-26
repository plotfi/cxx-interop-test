#ifndef CXX_H
#define CXX_H

#ifndef __ONLY_VENDOR__
#include <string_view>

int cxx_f(int);

bool is_str_42(std::string_view view) {
    return view == "42";
}
#else

#ifdef __VENDOR_HEADERS__
// Include some headers that are Almost ObjC++.
// Most are extracted from ComponentKit or other ObjC++ frameworks.
#include "VendorHeaders/FB/CKCoalescedSpecSupport.h"
#include "VendorHeaders/FB/CKWritingDirection.h"
#endif
#endif

#endif
