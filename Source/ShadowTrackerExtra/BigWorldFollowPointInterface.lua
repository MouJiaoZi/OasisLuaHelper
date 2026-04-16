---@meta

---@class FFollowPointMode
---@field bUseMoveableFollowMode boolean
FFollowPointMode = {}


---@class IBigWorldFollowPointInterface
IBigWorldFollowPointInterface = {}

---@param ScenePoints ULuaArrayHelper<UActorComponent>
function IBigWorldFollowPointInterface:GetScenePoint(ScenePoints) end

---@param FollowPointMode FFollowPointMode
function IBigWorldFollowPointInterface:GetFollowPointMode(FollowPointMode) end

---@param BaseCharacter ASTExtraBaseCharacter
---@param FinalTargetPointActor AActor
---@param ScenePoints ULuaArrayHelper<UActorComponent>
---@param FollowPointMode FFollowPointMode
---@param OutLocation FVector
---@param Radius number
---@param TryFindLocNum number
---@return boolean
function IBigWorldFollowPointInterface:FindNearByPoint(BaseCharacter, FinalTargetPointActor, ScenePoints, FollowPointMode, OutLocation, Radius, TryFindLocNum) end
