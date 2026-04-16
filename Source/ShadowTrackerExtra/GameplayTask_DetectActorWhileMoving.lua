---@meta

---@class FGameplayTask_DetectActorWhileMoving_Data
---@field ValidActorClasses ULuaArrayHelper<AActor>
---@field bAutoDiscardDuplicatedActor boolean
---@field bShouldCheckActorCamp boolean
---@field ValidCampRelation ECampRelation
---@field DetectedActors ULuaArrayHelper<AActor>
FGameplayTask_DetectActorWhileMoving_Data = {}


---@class UGameplayTask_DetectActorWhileMoving: UUAEGameplayTask
---@field OnDetectActorDelegate FDetectActorDelegate
---@field DetectActorData FGameplayTask_DetectActorWhileMoving_Data
local UGameplayTask_DetectActorWhileMoving = {}

---@param SelfRef ASTExtraCharacter
---@param HitResult FHitResult
function UGameplayTask_DetectActorWhileMoving:MoveBlockHitResult(SelfRef, HitResult) end
