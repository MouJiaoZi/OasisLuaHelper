---@meta

---@class FBicycleSprintSettings
---@field SprintBufferRaise number
---@field SprintBufferFallLow number
---@field SprintBufferFallHigh number
---@field MinCharBoostForSprintAdditive number
---@field BoostSprintPushScale number
---@field MinBoostSprintThrottleMax number
---@field CharBoostBufferFallScale number
---@field SprintBufferMinThrottleMapIn FVector2D
---@field SprintBufferMinThrottleMapOut FVector2D
---@field SprintMashDecayFactor number
---@field SprintMashLerpAlpha number
FBicycleSprintSettings = {}


---@class FBicycleSprintData
---@field ThrottleMax number
---@field MaxThrottleBoostLowerValue number
---@field SprintPushScale number
---@field AverageSprintPushTime number
---@field LastSprintPushGT number
---@field LastForwardSign number
FBicycleSprintData = {}


---@class FBicycleJumpSettings
---@field BufferInterpSpeed number
---@field MeshUpVectorFraction number
---@field ForceMap FVector2D
---@field SpeedToForceMapIn FVector2D
---@field SpeedToForceMapOut FVector2D
---@field BoostToForceMapIn FVector2D
---@field BoostToForceMapOut FVector2D
---@field LeanForceMapIn FVector2D
---@field LeanForceMapOut FVector2D
---@field MinContactAlphaForJump number
---@field JumpTimeOut number
---@field JumpBalanceAngularVelocityMapOut FVector2D
FBicycleJumpSettings = {}


---@class FBicycleJumpData
---@field bWantsToJump boolean
FBicycleJumpData = {}


---@class FBicyclePedalSettings
---@field PedalRotScale number
---@field PedalRotScaleMapIn FVector2D
---@field PedalRotScaleMapOut FVector2D
---@field NoContactPedalScale number
---@field AirPedalRotAlphaTarget number
---@field AirPedalRotInterpSpeed number
---@field AbsThrottleMapIn FVector2D
---@field AbsThrottleMapOut FVector2D
FBicyclePedalSettings = {}


---@class FBicycleAudioSettings
---@field MinSpeedInKm number
---@field MinPedalSpeed number
---@field PedalSpeedRTPC_Name string
---@field PedalAudioTimeOut number
FBicycleAudioSettings = {}


---自行车
---@class ASTExtraBicycleVehicle: ASTExtraWheeledVehicle
---@field bLimitThrottleInAir boolean
---@field AirThrottleLimit number
---@field bIsUsingBoost boolean
---@field bIsUsingSprint boolean
---@field SprintSettings FBicycleSprintSettings
---@field SprintData FBicycleSprintData
---@field JumpSettings FBicycleJumpSettings
---@field PedalSettings FBicyclePedalSettings
---@field AudioSettings FBicycleAudioSettings
---@field BoostGauge number
---@field JumpData FBicycleJumpData
---@field bShouldProcessContact boolean
---@field bHasContact boolean @Wheel contact
---@field bHasAllContact boolean
---@field LastFrameContactAlphaUnclamped number
---@field ContactAlphaUnclamped number
---@field ContactAlpha number
---@field ContactAlpha_RiseRate number
---@field ContactAlpha_FallRate number
---@field ContactAlpha_LowerClamp number
---@field ContactAlpha_MapPitchIn FVector2D
---@field ContactAlpha_MapRollIn FVector2D
---@field ContactAlphaRemoteMultiplier number
---@field PedalReferenceWheelIndex number
---@field bCanCanAssignBicyclePer boolean
local ASTExtraBicycleVehicle = {}

function ASTExtraBicycleVehicle:SendToServerClientInitOK() end

function ASTExtraBicycleVehicle:ResetSprint() end

function ASTExtraBicycleVehicle:AddSprintMash() end

function ASTExtraBicycleVehicle:OnStartVehicleJump() end

function ASTExtraBicycleVehicle:OnStopVehicleJump() end

function ASTExtraBicycleVehicle:TryPlayJumpEffects() end

---@param InBuffer number
---@param InLean number
function ASTExtraBicycleVehicle:Server_VehicleJump(InBuffer, InLean) end

function ASTExtraBicycleVehicle:Multi_PlayJump() end

---@param InNewWantsToJump boolean
function ASTExtraBicycleVehicle:Server_SetVehicleWantsToJump(InNewWantsToJump) end

---@return boolean
function ASTExtraBicycleVehicle:CanAssignVehiclePer() end
