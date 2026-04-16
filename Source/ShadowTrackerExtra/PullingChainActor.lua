---@meta

---@class EChainState
---@field ChainState_None number @初始状态
---@field ChainState_FlyOut number @绳索飞出
---@field ChainState_Wait number @等待触发
---@field ChainState_FlyBack number @带人飞回
---@field ChainState_FlyBackAlone number @绳索飞回
EChainState = {}


---@class FSplineData
---@field SocketName string
---@field StartLocationOffest FVector
---@field LengthPerPiece number
---@field FinishedTime number
FSplineData = {}


---@class FMovingSpeedCurve
---@field DistanceThreshold number
FMovingSpeedCurve = {}


---@class FTargetParticleInfo
---@field ParticleSocketName string
---@field ParticleOffestLocation FVector
---@field ParticleOffestRotation FRotator
FTargetParticleInfo = {}


---@class APullingChainActor: AActor, IUAESkillInterface
---@field bUseChainState_Wait boolean
---@field NotAllowTargetState ULuaArrayHelper<EPawnState>
---@field bStopUseControllerRotationYaw boolean
---@field bWaistFollowingController boolean
---@field MaxDeltaYawBetweenControlAndActor number
---@field SplineDataArray ULuaArrayHelper<FSplineData>
---@field SplineFlyOutSpeed number
---@field SplineFlyBackAloneSpeed number
---@field MaxSplineDistance number
---@field MaxRunAwayDistance number
---@field bNotUseCurveSpeed boolean
---@field LaunchSpeed number
---@field LaunchSpeedCurves ULuaArrayHelper<FMovingSpeedCurve>
---@field AcceptableRadius number
---@field OverrideZOrder boolean
---@field bSlowDownWhenStopLaunch boolean
---@field LaunchUpDistSquaredRatio number
---@field LaunchUpVelocityZ number
---@field LaunchUpVelocityZMinDistance number
---@field ParticlesInfo ULuaArrayHelper<FTargetParticleInfo>
---@field CurChainState EChainState
---@field TotalLaunchDistance number
---@field SplineFlyTime number
---@field ParticlesComponent ULuaArrayHelper<UParticleSystemComponent>
local APullingChainActor = {}

---@param LastState EChainState
function APullingChainActor:OnRep_ChainState(LastState) end

---@param SkillEventType EUAESkillEvent
---@param SkillOwner AActor
function APullingChainActor:TriggerFunction(SkillEventType, SkillOwner) end
