---@meta

---@class USTBaseBuffCarrierBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local USTBaseBuffCarrierBlueprintFunctionLibrary = {}

---@param TargetObject UObject
---@param BuffName string
---@param SkillActor AController
---@param LayerCount number
---@param BuffApplierActor AActor
---@param CauserActor AActor
---@return number
function USTBaseBuffCarrierBlueprintFunctionLibrary:AddBuff(TargetObject, BuffName, SkillActor, LayerCount, BuffApplierActor, CauserActor) end

---@param TargetObject UObject
---@param BuffName string
---@param RemoveLayerOnly boolean
---@param BuffApplierActor AActor
---@return boolean
function USTBaseBuffCarrierBlueprintFunctionLibrary:RemoveBuff(TargetObject, BuffName, RemoveLayerOnly, BuffApplierActor) end

---@param TargetObject UObject
---@param BuffName string
---@return boolean
function USTBaseBuffCarrierBlueprintFunctionLibrary:HasBuff(TargetObject, BuffName) end

---@param TargetObject UObject
---@param BuffName string
---@return boolean
function USTBaseBuffCarrierBlueprintFunctionLibrary:ShouldAddBuff(TargetObject, BuffName) end

---@param TargetObject UObject
---@param BuffName string
---@param ExpirySecondsFromNow number
function USTBaseBuffCarrierBlueprintFunctionLibrary:SetBuffExpiry(TargetObject, BuffName, ExpirySecondsFromNow) end
