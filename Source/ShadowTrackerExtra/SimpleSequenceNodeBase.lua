---@meta

---通用轻量级Sequnce节点逻辑封装
---@class USimpleSequenceNodeBase: UObject
---@field NodeDuration number
---@field NodeStartTime number
---@field NodeEndTime number
---@field bHasDo boolean
---@field bHasReverseDo boolean
local USimpleSequenceNodeBase = {}

---@param InOwnerActor AActor
---@param Sequence USimpleSequence
function USimpleSequenceNodeBase:Init(InOwnerActor, Sequence) end

function USimpleSequenceNodeBase:Do() end

function USimpleSequenceNodeBase:ReverseDo() end

function USimpleSequenceNodeBase:CheckDo() end

function USimpleSequenceNodeBase:CheckReverseDo() end

function USimpleSequenceNodeBase:BreakSequence() end

function USimpleSequenceNodeBase:FinishSequence() end
