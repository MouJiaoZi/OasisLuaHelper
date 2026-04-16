---@meta

---Task FindItemSpot
---@class UBTTask_FindActivityActor: UBTTaskNode
---@field MaxSearchRadius number
---@field MinSearchRadius number
---@field InSearchPoint FBlackboardKeySelector
---@field OutActivityActor FBlackboardKeySelector
---@field ActivityActorTag string
---@field ExcludeTag string
---@field bFindOnce boolean
---@field bDiscardNearZombieBox boolean
---@field MonsterSearchRadius number
---@field ZombieClass ASTExtraZombieCharacter
local UBTTask_FindActivityActor = {}
