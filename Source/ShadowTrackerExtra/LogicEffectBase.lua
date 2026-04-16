---@meta

---@class ILogicEffectInterface: IInterface
ILogicEffectInterface = {}

---@param State FGameplayTag
---@param StateOp EGameplayStateOp
function ILogicEffectInterface:LE_ChangeGameplayState(State, StateOp) end

---@param State FGameplayTag
---@return boolean
function ILogicEffectInterface:LE_HasGameplayState(State) end


---通用轻量级逻辑封装
---@class ULogicEffectBase: UObject
---@field LoopInterval number
---@field SubEffectListWrapper FLogicEffectSequenceWrapper
---@field LoopTimerHandle FTimerHandle
local ULogicEffectBase = {}

---@param InOwnerActor AActor
function ULogicEffectBase:Init(InOwnerActor) end

function ULogicEffectBase:ApplyEffect() end

function ULogicEffectBase:UnApplyEffect() end
