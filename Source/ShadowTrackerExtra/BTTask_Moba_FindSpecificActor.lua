---@meta

---@class EMobaSpecificActorType
---@field MobaSpecificActorType_AccelerationPad number @加速垫
---@field MobaSpecificActorType_ShieldingWall number @宇宙帷幕
---@field MobaSpecificActorType_Tower number @防御塔
EMobaSpecificActorType = {}


---@class EMobaFindStrategy
---@field MobaFindStrategy_Any number @任意
---@field MobaFindStrategy_Nearest number @最近
EMobaFindStrategy = {}


---@class UBTTask_Moba_FindSpecificActor: UBTTaskNode
---@field ActorType EMobaSpecificActorType
---@field UseCamp boolean
---@field Camp ULuaArrayHelper<ECampRelation>
---@field UseActorTag boolean
---@field ActorTags ULuaArrayHelper<string>
---@field Distance number
---@field SelectStrategy EMobaFindStrategy
---@field OutSelectedActor any
local UBTTask_Moba_FindSpecificActor = {}
