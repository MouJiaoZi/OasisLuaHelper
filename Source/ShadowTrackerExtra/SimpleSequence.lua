---@meta

---通用轻量级Sequnce逻辑封装
---@class USimpleSequence: UObject, IUAESharedModuleInterface
---@field NodeTemplateList ULuaArrayHelper<USimpleSequenceNodeBase>
---@field UAEBlackboardParamList ULuaArrayHelper<FUAEBlackboardParameter>
---@field OnSequenceFinishedDelegate FOnSequenceFinishedDelegate
---@field OnSequenceBreakDelegate FOnSequenceBreakDelegate
---@field NodeList ULuaArrayHelper<USimpleSequenceNodeBase>
---@field CurPlaySequnceTime number
---@field SequenceStatus ESimpleSequenceStatus
---@field CurProcessNodeIndex number
---@field bHasInit boolean
---@field CustomNodeDelayList ULuaArrayHelper<number>
---@field SubSequenceList ULuaArrayHelper<USimpleSequence>
local USimpleSequence = {}

---@param InOwnerActor AActor
function USimpleSequence:PreInit(InOwnerActor) end

---@param InOwnerActor AActor
function USimpleSequence:Init(InOwnerActor) end

---@param bPlayerReverse boolean
function USimpleSequence:Play(bPlayerReverse) end

function USimpleSequence:PlayBack() end

function USimpleSequence:Flush() end

function USimpleSequence:Break() end

---@param bFlush boolean
function USimpleSequence:Finish(bFlush) end

---@param InPendingSequence USimpleSequence
function USimpleSequence:AddNextPendingSequence(InPendingSequence) end
