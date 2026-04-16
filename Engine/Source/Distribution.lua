---@meta

---@class DistributionParamMode
---@field DPM_Normal number
---@field DPM_Abs number
---@field DPM_Direct number
---@field DPM_MAX number
DistributionParamMode = {}


---@class FDistributionLookupTable
---@field Op number
---@field EntryCount number
---@field EntryStride number
---@field SubEntryStride number
---@field TimeScale number
---@field TimeBias number
---@field Values ULuaArrayHelper<number>
---@field LockFlag number
FDistributionLookupTable = {}


---@class FRawDistribution
---@field Table FDistributionLookupTable
FRawDistribution = {}


---@class UDistribution: UObject, FCurveEdInterface
local UDistribution = {}
