---@meta

---@class WolfKind
---@field wolf_Day number @普通狼白天
---@field wolf_Night number @普通狼晚上
---@field werewolf number @狼人
---@field werewolf_Tank number @肉盾狼人
---@field werewolf_Venom number @毒液狼人
---@field werewolf_Detonation number @自爆狼人
WolfKind = {}


---@class ASTExtraWolfCharacter: ASTExtraSimpleCharacter, IManagedActorInterface
---@field WolfKD WolfKind
local ASTExtraWolfCharacter = {}

function ASTExtraWolfCharacter:BroadcastClientsShowHpBar() end
