---@meta

---@class UCapybaraStackCheckSkill: UPersistEffectBase
---@field TickStackConditionInterval number
---@field TriggerStackDistance number
---@field InterruptStackPlayerDistance number
---@field AnimalStackEffectClass UPersistEffectWithState
---@field ForbidStackAnimalStates ULuaArrayHelper<EAnimalState>
---@field ForbidStackAnimalDynamicStates ULuaArrayHelper<FGameplayTag>
---@field ForbidStackPawnDynamicStates ULuaArrayHelper<FGameplayTag>
local UCapybaraStackCheckSkill = {}

---@param AnimalPawn AAnimalPartnerBase
---@param InterruptDistance number
---@return boolean
function UCapybaraStackCheckSkill:IsOwnerInExitStackCheckArea(AnimalPawn, InterruptDistance) end

function UCapybaraStackCheckSkill:TickAnimalStackCondition() end

---@param OverlapAnimalList ULuaArrayHelper<AAnimalPartnerBase>
function UCapybaraStackCheckSkill:OnOverlapStackableCheck(OverlapAnimalList) end

---@param PrevAnimal AAnimalPartnerBase
---@return boolean
function UCapybaraStackCheckSkill:CanStackOnAnimal(PrevAnimal) end

---@param AnimalPawn AAnimalPartnerBase
---@return boolean
function UCapybaraStackCheckSkill:IsAnimalInSameStack(AnimalPawn) end

---@param PrevAnimal AAnimalPartnerBase
function UCapybaraStackCheckSkill:JoinAnimalStack(PrevAnimal) end

---@param AnimalPawn AAnimalPartnerBase
---@return boolean
function UCapybaraStackCheckSkill:IsAnimalStackTop(AnimalPawn) end

---@param AnimalPawn AAnimalPartnerBase
---@return boolean
function UCapybaraStackCheckSkill:IsInAnimalStack(AnimalPawn) end

---@param AnimalPawn AAnimalPartnerBase
---@return boolean
function UCapybaraStackCheckSkill:IsStackOnOtherAnimal(AnimalPawn) end
