---@meta

---@class FTraceRefBugRepStruct
---@field ID number
FTraceRefBugRepStruct = {}


---@class UTraceRefBugEffect: UPersistEffectBase
---@field ID number
local UTraceRefBugEffect = {}


---@class UTraceRefBugComponent: UActorComponent
---@field TraceRefBugRepArray ULuaArrayHelper<FTraceRefBugRepStruct>
local UTraceRefBugComponent = {}

function UTraceRefBugComponent:OnRep_TraceRefBugRepArray() end
