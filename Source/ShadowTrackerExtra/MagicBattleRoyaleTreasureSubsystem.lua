---@meta

---@class AMagicBattleRoyaleTreasureSubsystem: AActivityBaseActor
---@field AppearCount number
---@field OpenCount number
---@field BoxNum number
---@field AllTreasureArray ULuaArrayHelper<AMagicBattleRoyaleTreasureBase>
---@field ActiveTreasureArray ULuaArrayHelper<AMagicBattleRoyaleTreasureBase>
local AMagicBattleRoyaleTreasureSubsystem = {}

---@param Treasure AMagicBattleRoyaleTreasureBase
function AMagicBattleRoyaleTreasureSubsystem:RegisterTreasure(Treasure) end

function AMagicBattleRoyaleTreasureSubsystem:ShuffleAndSelectTreasure() end

---@param State string
function AMagicBattleRoyaleTreasureSubsystem:ActiveTreasuresJumpingToState(State) end

---@param TipsID number
function AMagicBattleRoyaleTreasureSubsystem:ShowTips(TipsID) end

---@param TipsID number
---@param param string
function AMagicBattleRoyaleTreasureSubsystem:ShowTipsWithOneParam(TipsID, param) end
