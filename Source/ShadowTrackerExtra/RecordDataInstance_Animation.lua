---@meta

---@class FRecordData_BlackPropertyRow
---@field PropertyName string
FRecordData_BlackPropertyRow = {}


---@class FRecordData_AnimationFlattenedDebugData
---@field DebugLine string
---@field AbsoluteWeight number
---@field Indent number
---@field ChainID number
---@field bPoseSource boolean
FRecordData_AnimationFlattenedDebugData = {}


---@class FRecordData_ProDebugInfo
---@field Data ULuaArrayHelper<string>
FRecordData_ProDebugInfo = {}


---@class FRecordData_ProDebugData
---@field Data ULuaMapHelper<string, FRecordData_ProDebugInfo>
FRecordData_ProDebugData = {}


---@class FRecordData_AnimationDebugFrame
---@field Data ULuaMapHelper<string, FRecordData_ProDebugData>
FRecordData_AnimationDebugFrame = {}


---@class FRecordData_AnimationKeyFrame
---@field time number
---@field CurrentFrame number
---@field BonLocation ULuaArrayHelper<FTransform>
---@field DebugFrame FRecordData_AnimationDebugFrame
FRecordData_AnimationKeyFrame = {}


---@class URecordData_Animation: URecordData
---@field KeyFrame ULuaArrayHelper<FRecordData_AnimationKeyFrame>
local URecordData_Animation = {}


---@class URecordDataInstance_Animation: URecordDataInstance
---@field WhiteList ULuaArrayHelper<string>
---@field OverrideThreshold number
local URecordDataInstance_Animation = {}
