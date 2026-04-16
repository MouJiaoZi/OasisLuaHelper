---@meta

---@class UBackpackRescueItemHandle: UBackpackSkillHandleBase
---@field WrapperClassSoft APickUpWrapperActor
---@field LimitedQuantities number
---@field PickupFailureTipID number
---@field TimeLimitInfo FBattleItemTimeLimitInfo
---@field bSelfRescuer boolean
---@field RescueSelfReducedTime number
---@field RescueOtherReducedTime number
local UBackpackRescueItemHandle = {}

---@param Wrapper APickUpWrapperActor
function UBackpackRescueItemHandle:AfterSpawnWrapper(Wrapper) end
