---@meta

---Debugging node that displays the current value of a bone in a specific space.
---@class FAnimNode_ObserveBone
---@field BoneToObserve FBoneReference @Name of bone to observe.
---@field DisplaySpace EBoneControlSpace @Reference frame to display the bone transform in.
---@field bRelativeToRefPose boolean @Show the difference from the reference pose?
---@field Translation FVector @Translation of the bone being observed.
---@field Rotation FRotator @Rotation of the bone being observed.
---@field Scale FVector @Scale of the bone being observed.
FAnimNode_ObserveBone = {}
