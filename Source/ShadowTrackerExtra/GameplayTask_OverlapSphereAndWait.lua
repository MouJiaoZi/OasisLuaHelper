---@meta

---@class FGameplayTask_OverlapAndWait_Data
---@field OverlapSphereStartForwardDistance number
---@field OverlapSpherePosDelta FVector
---@field OverlapSphereRadius number
---@field DegreeNeededToSuccessCondition number
---@field OverlapChannel ECollisionChannel
---@field bClientCastOverlapSphere boolean
---@field ActorCanCollisionClass AActor
---@field bDrawDebugLine boolean
FGameplayTask_OverlapAndWait_Data = {}


---@class UGameplayTask_OverlapSphereAndWait: UUAEGameplayTask
---@field OnHittedActor FOverlapSphereFinishedDelegate
---@field OnInitialNotOverlapEvent FInitialNotOverlapDelegate
---@field CacheDirection FVector
---@field HittedActorList ULuaArrayHelper<AActor>
---@field OverlapAndWaitData FGameplayTask_OverlapAndWait_Data
local UGameplayTask_OverlapSphereAndWait = {}

---@return boolean
function UGameplayTask_OverlapSphereAndWait:OverlapCheck() end
