---@meta

---Supported types of time for a linked element
---@class EAnimLinkMethod
---@field Absolute number @Element stays at a specific time without moving.
---@field Relative number @Element moves with its segment, but not when the segment changes size.
---@field Proportional number @Element moves with its segment and will stay at a certain proportion through the segment.
EAnimLinkMethod = {}


---Used to describe an element that can be linked to a segment in a montage or sequence. Usage: Inherit from FAnimLinkableElement and make sure to call LinkMontage or LinkSequence both on creation and on loading the element. From there SetTime and GetTime should be used to control where this element is in the montage or sequence. For more advanced usage, see this implementation used in FAnimNotifyEvent where we have a secondary link to handle a duration
---@class FAnimLinkableElement
---@field SlotIndex number @The slot index we are currently using within LinkedMontage
---@field SegmentIndex number @The index of the segment we are linked to within the slot we are using
---@field LinkMethod EAnimLinkMethod @The method we are using to calculate our times
---@field CachedLinkMethod EAnimLinkMethod @Cached link method used to transform the time when LinkMethod changes, always relates to the currently stored time
---@field SegmentBeginTime number @The absolute time in the montage that our currently linked segment begins
---@field SegmentLength number @The absolute length of our currently linked segment
---@field LinkValue number @The time of this montage. This will differ depending upon the method we are using to link the time for this element
FAnimLinkableElement = {}
