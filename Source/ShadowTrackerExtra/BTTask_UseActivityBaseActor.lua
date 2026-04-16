---@meta

---@class UBTTask_UseActivityBaseActor: UBTTaskNode
---@field InTargetActor FBlackboardKeySelector
local UBTTask_UseActivityBaseActor = {}

---@param AIC AAIController
---@param TargetActor AActivityBaseActor
---@return boolean
function UBTTask_UseActivityBaseActor:IsCanUseActivityBaseActor(AIC, TargetActor) end

---@param AIC AAIController
---@param TargetActor AActivityBaseActor
---@return boolean
function UBTTask_UseActivityBaseActor:IsUsingActivityBaseActor(AIC, TargetActor) end

---@param AIC AAIController
---@param TargetActor AActivityBaseActor
function UBTTask_UseActivityBaseActor:UseActivityBaseActor(AIC, TargetActor) end

---@param AIC AAIController
---@param TargetActor AActivityBaseActor
function UBTTask_UseActivityBaseActor:CancelUseActivityBaseActor(AIC, TargetActor) end
