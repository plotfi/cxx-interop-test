import CXX

let IsCoalescedModeVal = CK.IsCoalescedMode()
CK.CoalescedWillRenderRenderComponent(IsCoalescedModeVal != 0)
CK.CoalescedDidRenderRenderComponent()

let WritingDirection = CKGetWritingDirection()
CKOverrideWritingDirection(WritingDirection)

print("Done.")
