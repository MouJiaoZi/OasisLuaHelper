---@meta

---@class ASTExtraPlayerStart: APlayerStart
---@field bAutoResetOccupiedMark boolean
---@field ResetOccupiedMarkTime number
---@field UseForActivity boolean @优先占用活动出生点, AI不使用；同组玩家预先占位置；2人队占两坑，4人队占4坑, feishen, 20200515
---@field PlayerBornPointID number
---@field PlayerBornRegionID number
---@field bMarkOccupied boolean
---@field PlayerStartSerialNum number
local ASTExtraPlayerStart = {}

---@return boolean
function ASTExtraPlayerStart:IsMarkOccupied() end

function ASTExtraPlayerStart:SetMarkOccupied() end

function ASTExtraPlayerStart:SetMarkNotOccupied() end
