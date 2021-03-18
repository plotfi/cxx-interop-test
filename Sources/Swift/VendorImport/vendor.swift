import Foundation
import CXX

let IsCoalescedModeVal = CK.IsCoalescedMode()
CK.CoalescedWillRenderRenderComponent(IsCoalescedModeVal)
CK.CoalescedDidRenderRenderComponent()

let WritingDirection = CKGetWritingDirection()
CKOverrideWritingDirection(WritingDirection)

let IndexSet = NSIndexSet(index: 42)
let Str = CK.indexSetDescription(IndexSet, "foobar", 42)

print("Done.")
