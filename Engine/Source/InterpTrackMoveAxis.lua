---@meta

---List of axies this track can use
---@class EInterpMoveAxis
---@field AXIS_TranslationX number
---@field AXIS_TranslationY number
---@field AXIS_TranslationZ number
---@field AXIS_RotationX number
---@field AXIS_RotationY number
---@field AXIS_RotationZ number
EInterpMoveAxis = {}


---@class UInterpTrackMoveAxis: UInterpTrackFloatBase
---@field MoveAxis EInterpMoveAxis @The axis which this track will use when transforming an actor
---@field LookupTrack any @Lookup track to use when looking at different groups for transform information
local UInterpTrackMoveAxis = {}
