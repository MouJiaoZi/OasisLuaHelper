---@meta

---@class FLandscapeDeformEvent
FLandscapeDeformEvent = {}


---@class FLandscapeDeformEventREP
---@field Origin FVector2D
---@field Radius number
---@field Depth number
FLandscapeDeformEventREP = {}


---@class FLandscapeDeformEventREPPacked
FLandscapeDeformEventREPPacked = {}


---@class FOnTriggerLandscapeDeformEffect : ULuaMulticastDelegate
FOnTriggerLandscapeDeformEffect = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FVector, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTriggerLandscapeDeformEffect:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FVector
---@param Param2 number
function FOnTriggerLandscapeDeformEffect:Broadcast(Param1, Param2) end


---@class ALandscapeDeform: AActor
local ALandscapeDeform = {}

---@param WorldContextObject UObject
---@return boolean
function ALandscapeDeform:IsDeformable(WorldContextObject) end


---@class ULandscapeDeformComponent: UPrimitiveComponent
---@field TileSizeVerts number
---@field MaxComponentId FIntPoint
---@field LandscapeOffset FVector2D
---@field ComponentSizeSubsections number
---@field LandscapeXScale number
---@field LandscapeZScale number
---@field ComponentSizeQuads number
---@field LevelSizeQuads number
---@field ExplosionEffectTemplate AActor
---@field ExplosionEffectTemplatePtr AActor
---@field EffectRadius number
local ULandscapeDeformComponent = {}


---@class ALandscapeDeformReplicatedActor: AActor
---@field DeformedEventNumInitial number
---@field UsePackedDeformEvents boolean
---@field DeformEvents ULuaArrayHelper<FLandscapeDeformEventREP>
---@field PackedDeformEvents ULuaArrayHelper<FLandscapeDeformEventREPPacked>
local ALandscapeDeformReplicatedActor = {}

function ALandscapeDeformReplicatedActor:OnRep_DeformEvents() end


---@class ALandscapeDeformReplicatedMgr: AActor
local ALandscapeDeformReplicatedMgr = {}

---@param WorldContextObject UObject
---@param Box FBox2D
---@param OutDeformEvents ULuaArrayHelper<FLandscapeDeformEventREP>
function ALandscapeDeformReplicatedMgr:GetServerDeformEvents(WorldContextObject, Box, OutDeformEvents) end


---@class ALandscapeDeformDebugger: AActor
local ALandscapeDeformDebugger = {}
