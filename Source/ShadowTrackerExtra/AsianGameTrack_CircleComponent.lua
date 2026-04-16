---@meta

---@class FAsianGameTrack_CircleComponentPlayerDevDebugInfo
FAsianGameTrack_CircleComponentPlayerDevDebugInfo = {}


---@class FAsianGameTrack_CircleComponentDevDebugInfo
---@field bDrawDebug boolean
---@field Radius number
---@field PlayerDevDebugInfos ULuaArrayHelper<FAsianGameTrack_CircleComponentPlayerDevDebugInfo>
FAsianGameTrack_CircleComponentDevDebugInfo = {}


---@class UAsianGameTrack_CircleComponent: UAsianGameTrackComponent
---@field Radius number
---@field AsianGameTrack_CircleComponentDevDebugInfo FAsianGameTrack_CircleComponentDevDebugInfo
local UAsianGameTrack_CircleComponent = {}

function UAsianGameTrack_CircleComponent:OnRep_AsianGameTrack_CircleComponentDevDebugInfo() end
