---@meta

---@class ESnowballLaunchState
---@field ESLS_None number @不推出
---@field ESLS_Pushing number @普通推出中
---@field ESLS_JumpingIn number @跟随推出中
---@field ESLS_RollingAfterLaunch number @推出滚动中
---@field ESLS_Finish number @推出结束,正在刹车中
ESnowballLaunchState = {}


---@class FSnowballWheelConfig
---@field WheelRadius number
---@field WheelBoneLoc FVector
---@field LocationOffset FVector
FSnowballWheelConfig = {}


---@class FSnowballSizeConfig
---@field SnowballMeshScale FVector
---@field SnowballMeshScaledSocketLocationOffset FVector
---@field CollisionScaleShapeIndices ULuaArrayHelper<number>
---@field CollisionScaledTransform ULuaArrayHelper<FTransform>
---@field WheelConfigs ULuaArrayHelper<FSnowballWheelConfig>
FSnowballSizeConfig = {}


---@class FSnowballLaunchState
---@field State ESnowballLaunchState
---@field StateTime number
---@field NextState ESnowballLaunchState
FSnowballLaunchState = {}


---@class FSnowballLaunchStateWrapper
---@field State ESnowballLaunchState
---@field InStateTime number
FSnowballLaunchStateWrapper = {}


---@class FSnowballAutoInputWrapper
---@field EnableAutoThrottleInput boolean
---@field ThrottleInputRate number
---@field EnableAutoSteerInput boolean
---@field SteerInputRate number
FSnowballAutoInputWrapper = {}


---@class ASTExtraSnowball: ASTExtraWheeledVehicle
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
---@field SnowballSize number
---@field MaxSnowballSize number
---@field MaxSnowballSize_RollingDistance number
---@field SnowballSize_RollingDistance number
---@field SnowballSize_Passenger number
---@field SnowballSizeConfigs ULuaArrayHelper<FSnowballSizeConfig>
---@field ShouldRefreshParticlesNames ULuaArrayHelper<string>
---@field ChangeSizeDistanceThreshold number
---@field CurMoveDistance number
---@field LaunchStateConfig ULuaArrayHelper<FSnowballLaunchState>
---@field LaunchState FSnowballLaunchStateWrapper
---@field RollingThrottleInput number
---@field FinishRollingSpeedThreshold number
---@field CurStateTimer number
---@field LaunchImpulse number
---@field AutoInputState FSnowballAutoInputWrapper
---@field LaunchThrottleInput number
---@field OnlyDoLaunchOnServer boolean
---@field ShouldMoveWhenBlock boolean
---@field TraceRadiusOffset number
---@field LastSnowballLocationOffsetWhenLaunch FVector
---@field ShouldDynamicHideBackWheel boolean
---@field ShouldDynamicChangeWheels boolean
---@field DynamicBackWheelClass ULuaArrayHelper<UVehicleWheel>
---@field ShouldEnableBackWheel boolean
---@field ShouldFixSnowballLocIgnoreZ boolean
---@field JumpingInSnowballSeatIndex number
---@field SnowballServerAuthSpeed number
---@field bEnbaleSnowballCustomSharpSlope boolean
---@field EnbaleSnowballCustomSharpSlopeCheckInterval number
---@field EnbaleSnowballCustomSharpSlopeCheckTimer number
---@field CurrentSnowballOnSharpSlope boolean
local ASTExtraSnowball = {}

---@param RollingDistance number
---@param Passenger number
function ASTExtraSnowball:UpdateSnowballSize(RollingDistance, Passenger) end

---@param NewSnowballSize number
function ASTExtraSnowball:SetSnowballSize(NewSnowballSize) end

function ASTExtraSnowball:OnRep_SnowballSize() end

function ASTExtraSnowball:BPOnRep_SnowballSize() end

---@return FSnowballSizeConfig
function ASTExtraSnowball:GetCurrentSnowballSizeConfig() end

---@return FSnowballSizeConfig
function ASTExtraSnowball:GetNextSnowballSizeConfig() end

---@param UpdateSize boolean
---@param UpdateLoc boolean
---@param UpdateBackWheel boolean
function ASTExtraSnowball:UpdateSnowball(UpdateSize, UpdateLoc, UpdateBackWheel) end

---@param UpdateSize boolean
---@param UpdateLoc boolean
function ASTExtraSnowball:BPUpdateSnowball(UpdateSize, UpdateLoc) end

function ASTExtraSnowball:RefreshParticle() end

---@param DeltaTime number
function ASTExtraSnowball:TickUpdateSnowballMoveDistance(DeltaTime) end

---@param NewLaunchState ESnowballLaunchState
function ASTExtraSnowball:SetLaunchState(NewLaunchState) end

---@param DeltaTime number
function ASTExtraSnowball:TickUpdateLaunchState(DeltaTime) end

---@param DeltaTime number
function ASTExtraSnowball:TickServerSnowballLaunchState(DeltaTime) end

---@param DeltaTime number
function ASTExtraSnowball:TickClientSnowballLaunchState(DeltaTime) end

---@param LastState FSnowballLaunchStateWrapper
function ASTExtraSnowball:OnRep_LaunchState(LastState) end

---@param LastState FSnowballLaunchStateWrapper
function ASTExtraSnowball:BPOnRep_LaunchState(LastState) end

---@param NewAutoInputState FSnowballAutoInputWrapper
function ASTExtraSnowball:SetAutoInputState(NewAutoInputState) end

function ASTExtraSnowball:OnRep_AutoInputState() end

---@param InVehicle boolean
function ASTExtraSnowball:ReqLaunch(InVehicle) end

function ASTExtraSnowball:MulticastLaunch() end

function ASTExtraSnowball:DoLaunch() end

---@return FVector
function ASTExtraSnowball:GetSnowballLocationOffset() end

---@param InSnowballSize number
function ASTExtraSnowball:CheckSnowballSizeIsValidToPlace(InSnowballSize) end

function ASTExtraSnowball:UpdateSnowballLocationOffsetWhenLaunch() end

function ASTExtraSnowball:ResetVehiclePosAfterLaunch() end

---@param NewShouldEnableBackWheel boolean
function ASTExtraSnowball:SetShouldEnableBackWheel(NewShouldEnableBackWheel) end

function ASTExtraSnowball:OnRep_ShouldEnableBackWheel() end

---@param NewJumpingInSnowballSeatIndex number
function ASTExtraSnowball:SetJumpingInSnowballSeatIndex(NewJumpingInSnowballSeatIndex) end

function ASTExtraSnowball:OnRep_JumpingInSnowballSeatIndex() end

function ASTExtraSnowball:BPOnRep_JumpingInSnowballSeatIndex() end

---@param SteerInput number
function ASTExtraSnowball:SendSteerInputToServer(SteerInput) end

---@param DeltaTime number
function ASTExtraSnowball:TickSnowballSharpSlope(DeltaTime) end

---@return number
function ASTExtraSnowball:GetCurrentAvailableSnowballPassengerNum() end
