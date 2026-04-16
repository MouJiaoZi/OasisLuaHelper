---@meta

---@class BehaviorState
---@field Wild number
---@field NoWildWalking number
---@field NoWildTurning number
---@field NoWildJumping number
BehaviorState = {}


---@class ObsAvoidDir
---@field LeftAvoid number
---@field RightAvoid number
ObsAvoidDir = {}


---@class FEnvReponseObstacle
---@field ActorLocation FVector
---@field ActorRotator FRotator
---@field RelativeHeight number
---@field Distance number
---@field HitNormal FVector
---@field TopPoint FVector
FEnvReponseObstacle = {}


---@class UMyriapodEnvReponseComponent: UVehicleComponent
---@field bEnableAutoJumping number
---@field bEnableObstacleAvoiding number
---@field bEnableCliffAvoiding number
---@field bDebugDraw number
---@field bEnableClientControl number
---@field bNeedFindRondomLoc boolean
---@field WildWalkWayLength number
---@field StopTime number
---@field StayTime number
---@field MaxJumpingHeight number
---@field BigJumpObsHeight number
---@field JumpMinSlopeObs number
---@field fHigSpeedJumpTime number
---@field fServerSpeedLarpSpeed number
---@field fLowSpeedJumpTime number
---@field fDSTickTimer number
---@field bJumpUseAnimRot boolean
---@field fUpdateServerSpeedTime number
---@field fMaxSpeedMyriapodEnvReponse number
---@field ObstacleAvoidingTickFrequency number
---@field ObstacleCheckingBoxSize FVector
---@field UpdateAngularCliffAvoidingTickFrequency number
---@field UpdateAngularCliffAvoidingTickFrequencyNoUpdateAngular number
---@field CliffAvoidingTickFrequency number
---@field EnableCliffAvoidingWeight number
---@field CliffAvoidingBrakingDistance number
---@field DepthRegardAsCliff number
---@field CliffAvoidingBrakingAngle number
---@field CliffAvoidingEnableDistance number
---@field CliffAvoidingSlowDownFactor number
---@field CliffAvoidingSteeringFactor number
---@field CliffCheckingBoxSize FVector
---@field fCliffAvoidingDepth number
---@field bUseVehicleViewForwardToFindPawn boolean
---@field FindPawnStartOffset number
---@field FindVehicleEndOffset number
---@field FindCharacterEndOffset number
---@field BoxZOffset number
---@field PawnwValidAngel number
---@field VehicleValidAngel number
---@field CurFollowWalkType EWalkType
---@field FollowDisOffset number
---@field StopFollowDis number
---@field WalkFollowDisRange FVector2D
---@field CanterFollowDisRange FVector2D
---@field RunFollowDisRange FVector2D
---@field RunFollowDis number
---@field WalkFollowVehicleSpeed number
---@field CanterFollowVehicleSpeed number
---@field RunFollowVehicleSpeed number
---@field WalkFollowCharacterSpeed number
---@field CanterFollowCharacterSpeed number
---@field RunFollowCharacterSpeed number
---@field fFindFollowPawnRadius number
---@field bUpdateAngularSpeed boolean
---@field bMustCharacter boolean
---@field bUseClientFindFollowPawn boolean
---@field LowSpeedCheckSweepLength number
---@field HighSpeedCheckSweepLength number
---@field bUseAngularSpeedUpdateVelocity boolean
---@field CurBehavior BehaviorState
---@field LastFollowDistanceLevel number
---@field fFollowPawnAndHorseAngleMax number
local UMyriapodEnvReponseComponent = {}

---@param BhState BehaviorState
function UMyriapodEnvReponseComponent:SetBehaviorStateBP(BhState) end
