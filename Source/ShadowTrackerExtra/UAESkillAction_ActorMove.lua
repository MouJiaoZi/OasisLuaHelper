---@meta

---@class FSAActorMoveStruct
FSAActorMoveStruct = {}


---@class UUAESkillAction_ActorMove: UUAESkillAction
---@field Speed number
---@field Acceleration number
---@field MaxSpeed number
---@field bShouldFollowTarget boolean
---@field bShouldCheckOverlap boolean
---@field MinDistanceFromTarget number
---@field OverlapObjectTypes ULuaArrayHelper<EObjectTypeQuery>
local UUAESkillAction_ActorMove = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UUAESkillAction_ActorMove:HandleOnActorHit(SelfActor, OtherActor, NormalImpulse, Hit) end
