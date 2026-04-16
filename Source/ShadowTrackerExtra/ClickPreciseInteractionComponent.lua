---@meta

---@class EClickInteractSortType
---@field Distance number @距离优先
---@field ClickCompPriority number @组件优先
---@field Custom number @自定义
EClickInteractSortType = {}


---@class EClickDetectionType
---@field Line number @射线检测
---@field Capsule number @胶囊体检测
EClickDetectionType = {}


---@class FClickCollisionData
---@field CapsuleHalfHeight number
---@field CapsuleRadius number
---@field CapsuleOffset FVector
FClickCollisionData = {}


---@class FClickCompOverlapResult
---@field Actor AActor
---@field Component UPrimitiveComponent
---@field DistanceOrder number
FClickCompOverlapResult = {}


---@class UClickPreciseInteractionComponent: UActorComponent
---@field bEnablePreciseInteration boolean
---@field MaxShowPreciseAtSameTime number
---@field MaxShowPreciseActorAtSameTime number
---@field PreciseTraceDist number
---@field PreciseTraceOffset FVector
---@field SortType EClickInteractSortType
---@field DetectionType EClickDetectionType
---@field IgnorePreciseTraceTag string
---@field InteractionCollisionData FClickCollisionData
---@field QueryObjectTypes ULuaArrayHelper<ECollisionChannel>
---@field CurInteractWrapper ULuaArrayHelper<FClickPreciseWrapper>
---@field LastInteractWrapper ULuaArrayHelper<FClickPreciseWrapper>
local UClickPreciseInteractionComponent = {}

---@return boolean
function UClickPreciseInteractionComponent:IsEnablePreciseInteraction() end

function UClickPreciseInteractionComponent:UpdatePreciseInteraction() end

---@param OverlapResults ULuaArrayHelper<FClickCompOverlapResult>
function UClickPreciseInteractionComponent:GetOverlapActors(OverlapResults) end

---@param OverlapResults ULuaArrayHelper<FClickCompOverlapResult>
function UClickPreciseInteractionComponent:GetClickInteractWrapper(OverlapResults) end

---@param CurWrapper ULuaArrayHelper<FClickPreciseWrapper>
---@param LastWrapper ULuaArrayHelper<FClickPreciseWrapper>
function UClickPreciseInteractionComponent:HandleInteractWrapper(CurWrapper, LastWrapper) end

---@param World UWorld
---@param Character ASTExtraBaseCharacter
---@param Overlaps ULuaArrayHelper<FClickCompOverlapResult>
function UClickPreciseInteractionComponent:SortOverlapsByCustom(World, Character, Overlaps) end

---@param World UWorld
---@param Character ASTExtraBaseCharacter
---@param Result FClickCompOverlapResult
---@return number
function UClickPreciseInteractionComponent:GetClickComponentDistanceOrder(World, Character, Result) end

---@param Wrapper FClickPreciseWrapper
---@param Result FClickCompOverlapResult
function UClickPreciseInteractionComponent:ResetPreciseOrder(Wrapper, Result) end

---@param Actor AActor
---@return boolean
function UClickPreciseInteractionComponent:ActorHasClickComponent(Actor) end
