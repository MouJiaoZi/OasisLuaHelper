---@meta

---@class EGenericCharacterAnimSharingState
---@field Idle number @待机
---@field Run number @移动
---@field Attack number @攻击
---@field Hurt number @受击
---@field Dead number @死亡
---@field Invalid number
EGenericCharacterAnimSharingState = {}


---@class UGenericCharacterAnimSharingStateProc: UAnimationSharingStateProcessor
local UGenericCharacterAnimSharingStateProc = {}


---@class UGenericMonsterAnimSharingStateProc: UGenericCharacterAnimSharingStateProc
local UGenericMonsterAnimSharingStateProc = {}
