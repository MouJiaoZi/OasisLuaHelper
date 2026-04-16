---@meta

---add by feishen, 20191115 history: 1. 遗忘的盒子，僵尸模式下营造死亡气氛，游戏开始刷一些死亡盒子。CG005
---@class ASimpleDeadBox: AUAERegionActor
---@field DropIdList ULuaArrayHelper<number>
---@field ItemBoxZ number
---@field PickUpBoxType EPickUpBoxType
local ASimpleDeadBox = {}
