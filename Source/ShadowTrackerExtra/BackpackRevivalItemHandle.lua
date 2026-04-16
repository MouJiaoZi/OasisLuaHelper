---@meta

---@class UBackpackRevivalItemHandle: UBackpackSkillHandleBase
---@field WrapperClassSoft APickUpWrapperActor
---@field LimitedQuantities number
---@field PickupFailureTipID number
---@field RevivalHealth number
---@field RevivalTime number
local UBackpackRevivalItemHandle = {}

---@return boolean
function UBackpackRevivalItemHandle:IsConditionOK() end

function UBackpackRevivalItemHandle:TryInitSkill() end
