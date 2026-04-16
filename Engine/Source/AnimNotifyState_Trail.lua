---@meta

---@class UAnimNotifyState_Trail: UAnimNotifyState
---@field FirstSocketName string @Name of the first socket defining this trail.
---@field SecondSocketName string @Name of the second socket defining this trail.
---@field FirstSocketRelativeOffset FTransform
---@field SecondSocketRelativeOffset FTransform
---@field WidthScaleMode ETrailWidthMode @Controls the way width scale is applied. In each method a width scale of 1.0 will mean the width is unchanged from the position of the sockets. A width scale of 0.0 will cause a trail of zero width. From Centre = Trail width is scaled outwards from the centre point between the two sockets. From First = Trail width is scaled outwards from the position of the first socket. From Second = Trail width is scaled outwards from the position of the Second socket.
---@field WidthScaleCurve string @Name of the curve to drive the width scale.
---@field bRecycleSpawnedSystems number
local UAnimNotifyState_Trail = {}
