/*
 *  Copyright (c) 2014-present, Facebook, Inc.
 *  All rights reserved.
 *
 *  This source code is licensed under the BSD-style license found in the
 *  LICENSE file in the root directory of this source tree. An additional grant
 *  of patent rights can be found in the PATENTS file in the same directory.
 *
 */

// Extracted from https://github.com/facebook/componentkit
// ComponentKit/Base/CKCoalescedSpecSupport.h

#include <objc/objc.h>

namespace CK {

inline void CoalescedWillRenderRenderComponent(bool ancestorHasStateUpdate) {}
inline void CoalescedDidRenderRenderComponent() {}
inline BOOL IsCoalescedMode() { return NO; }
}
