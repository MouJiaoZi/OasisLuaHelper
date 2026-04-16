---@meta

---@class FBTTaskCrowdMoveMemory
FBTTaskCrowdMoveMemory = {}


---@class UBTTask_CrowdMove: UBTTask_BlackboardBase
---@field StopMoveRadius number
---@field bRandomStopMoveRadius boolean
---@field RandomStopMoveRadiusRange FVector2D
---@field UpdateDestIntervel number
---@field bOpenPredictMovement boolean
---@field PredictMovementTime number
---@field ForceFacingTargetDist number
---@field TimeLimit number
---@field bIsHalfFrame boolean
---@field bSmoothLocation boolean
---@field bSmoothRotation boolean
---@field SmoothLocationTime number
---@field SmoothRotationTime number
---@field bOpenExceptCheck boolean
---@field bOpenDebug boolean
---@field bSetRotation boolean
---@field bOpenSeparetionAdjust boolean
---@field TempMoveLocationRadius number
---@field UpdateTempLocIntervel number
---@field MoveType EAIMovePose
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field bOpenEnableCustomSpeed boolean
---@field bEnableCustomSpeed boolean
---@field CustomSpeedValue number
---@field HeightOffsetForPathFinding number
---@field DestNotReachableToExceptionTimes number
---@field bEnableTrackDynamicSpeedScale boolean
---@field SpeedAttenuationStartDistance number
---@field SpeedAttenuationScalePerMeter number
---@field MaxSpeedAttenuationScale number
---@field bOpenSetCharMovementMode boolean
local UBTTask_CrowdMove = {}
