---@meta

---@class FExchangeContentInfoEx
---@field FinishTime number
---@field ContentText string
FExchangeContentInfoEx = {}


---@class FExchangeConfigDataEx
---@field TargetItemID number
---@field DropProduceID number
---@field ActivityEventFlowType number
---@field ContentInfo FExchangeContentInfoEx
FExchangeConfigDataEx = {}


---@class FExchangeConfigGroupEx
---@field GroupIndex number
---@field ContentInfo FExchangeContentInfoEx
---@field ExchangeConfigDataList ULuaArrayHelper<FExchangeConfigDataEx>
FExchangeConfigGroupEx = {}


---@class UInteractionAction_Submit: UInteractionAction
---@field ExchangeImmediate boolean
---@field ShowButtonID number
---@field FailTipID number
---@field ShowTextInterval number
---@field HideTextTime number
---@field ExchangeConfigGroupList ULuaArrayHelper<FExchangeConfigGroupEx>
---@field TriggerSound UAkAudioEvent
---@field TriggerParticle UParticleSystem
---@field OffStateParticle UParticleSystem
---@field ShowParticleRangeSq number
---@field ExchangedItemList ULuaArrayHelper<number>
---@field TimerHandle FTimerHandle
local UInteractionAction_Submit = {}

---@param InExchangeList ULuaArrayHelper<number>
---@param InPlayerState ASTExtraPlayerState
function UInteractionAction_Submit:ClientTriggerInteraction(InExchangeList, InPlayerState) end
