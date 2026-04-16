---@meta

---MobAI 通用状态数据
---@class FMobAIStateData
FMobAIStateData = {}


---MobAI 控制器
---@class AMobAIController: ABasicAIController
---@field AIAttackCenterOffset FVector
---@field PlayerDisplayName string
---@field OwnerTeamID number
---@field bUseDynamicNAV boolean @是否启用Dynamic Navigation
---@field bUseInterpMove boolean
---@field ShootTargetLocation FVector @当前射击目标
---@field OuterActor AActor
---@field bUseOutActorForAIPath boolean
---@field CurAIPathActor AActor
---@field NotHurtTargetTimeOfAccelerate number
---@field FindSpawnPointZUpOffset number
---@field FindSpawnPointZDownOffset number
---@field FindSpawnPointTraceChannel ECollisionChannel
---@field bUseCrowdFollowing boolean @是否启用CrowdFollowing
---@field bRetainGamePlayTasks boolean @是否保留GamePlayTasks
local AMobAIController = {}

---@param NewRotation FRotator
function AMobAIController:BPSetControlRotation(NewRotation) end

---@param TargetLoc FVector
function AMobAIController:SetMoveTargetLoc(TargetLoc) end

---@param bEnable boolean
function AMobAIController:SwitchCrowdFollowing(bEnable) end
