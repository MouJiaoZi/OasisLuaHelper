---@meta

---@class AnimalAnimListType
---@field Idle number @待机
---@field Idle_Arder number @休闲
---@field Walk number @走路（待机移动）
---@field Trot number @小跑（快递移动）
---@field Run number @跑步（战斗移动）
---@field Watch number @注视目标
---@field Dead number @死亡
---@field BeHit number @受击
---@field Fear number @恐惧
---@field Cute number @卖萌
---@field Swimming number @游泳
---@field Cute2 number @卖萌2
---@field Stun number @眩晕
---@field Hold number @举着
---@field Falling number @下落
---@field Max number
AnimalAnimListType = {}


---@class FAnimalMoveAnimSpeed
---@field PoseType AnimalAnimListType
---@field Speed number
FAnimalMoveAnimSpeed = {}


---@class FAnimalAnimData
---@field PoseType AnimalAnimListType
---@field AnimSoftPtr UAnimationAsset
FAnimalAnimData = {}


---@class UAnimalAnimListComponent: USimpleAnimListBaseComponent
---@field AnimalAnimDatas ULuaArrayHelper<FAnimalAnimData>
---@field AnimalMoveAnimSpeeds ULuaArrayHelper<FAnimalMoveAnimSpeed>
local UAnimalAnimListComponent = {}

function UAnimalAnimListComponent:RefreshAnimList() end
