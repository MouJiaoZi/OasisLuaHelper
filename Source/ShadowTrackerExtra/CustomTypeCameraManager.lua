---@meta

---@class EViewLimitType
---@field EVLT_Pitch number @Pitch
---@field EVLT_Yaw number @Yaw
---@field EVLT_Roll number @Roll
---@field EVLT_None number @无效
EViewLimitType = {}


---@class FViewLimitRange
---@field LimitName string
---@field ViewLimitType EViewLimitType
---@field bIsAdditive boolean
---@field LimitMin number
---@field LimitMax number
FViewLimitRange = {}


---@class FViewLimitRangeList
---@field LimitList ULuaArrayHelper<FViewLimitRange>
FViewLimitRangeList = {}


---@class FValidLimitName
FValidLimitName = {}


---@class FCustom_ViewLimit
---@field ViewLimits_Override ULuaMapHelper<EViewLimitType, FViewLimitRangeList>
---@field ViewLimits_Additive ULuaMapHelper<EViewLimitType, FViewLimitRangeList>
FCustom_ViewLimit = {}
