---@meta

---@class ASTPopkartRaceAward: AActor
---@field ShowDropBox boolean
---@field BeginPlayProcessDropBox boolean
---@field DropItemDelayTime number
---@field HideDropBoxTime number
---@field HideDropBoxElapse number
---@field CurDropAwardList ULuaArrayHelper<FPopRaceAwardConfig> @当前正在发放物资的队列
---@field AwardInterval number
---@field EndRaceShowTipsID number
local ASTPopkartRaceAward = {}

function ASTPopkartRaceAward:OnRep_ShowDropBox() end

function ASTPopkartRaceAward:ProcessDropBox() end

---负责具体掉落逻辑
---@param AwardConfig FPopRaceAwardConfig
function ASTPopkartRaceAward:ProduceDropItem(AwardConfig) end

---@param Award FPopRaceAwardConfig
function ASTPopkartRaceAward:EnterAwardQueue(Award) end
