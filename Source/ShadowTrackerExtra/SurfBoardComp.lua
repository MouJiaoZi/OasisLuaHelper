---@meta

---冲浪板状态
---@class ESurfBoardState
---@field ESBS_InWater number
---@field ESBS_FLYING0 number
---@field ESBS_FLYING1 number
---@field ESBS_FLYING2 number
---@field ESBS_FALLING number
---@field ESBS_FALLING2 number
---@field ESBS_PRONE number
ESurfBoardState = {}


---冲浪板
---@class USufBoardLogic: UFloatLogic
local USufBoardLogic = {}


---冲浪板移动组件
---@class USurfBoardComp: UActorComponent
---@field ShouldCheckAntiCheat boolean
---@field SpeedThresholds number
---@field JumpImpulse number @起跳时的冲量大小
---@field JumpImpulseBig number @起跳时的冲量大小
---@field MaxStateTime_Jump number
---@field RealStateTime_Jump number
---@field FloorInWaterLow number
---@field HalfInWaterLow number
---@field RealInWaterLow number
---@field MaxHalfInWaterLowTime number
---@field JumpCeilingHeight number
---@field HalfJumpHeight number
---@field RealJumpHeight number
---@field MaxInHalfJumpHeightTime number
---@field MaxSpeed number
---@field RealMaxSpeed number
---@field InWaterTolerance number
---@field LeaveFlyPointNum number @脱离飞行逻辑需要的进入水中的浮力点的个数 Note: 防止一些较远的浮力点导致过早的脱离飞行状态
---@field FlyingStateMinTime number
---@field bShouldDoAutoExitCheck boolean
---@field PersistanceLeaveWaterTimeThreshold number
---@field AutoExitHeightThreshold number
---@field HitTestToSeaLevelBias number
---@field MaxProneTime number
---@field CanProne boolean
---@field SurfBoardState ESurfBoardState @状态维护
---@field bNoSkeletonUpdate boolean
---@field JumpDelayTime number
---@field bSurfboardFlying boolean
---@field bSurfboardRoll boolean
---@field SurfboardRollSpeedThreshold number
---@field SurfboardRollSpeed number
---@field SurfboardTargetRoll number
---@field SurfboardCurrentRoll number
---@field bDisableSurfboardSteeringInAir boolean
---@field InWaterPointsNum_DisableSteering number
---@field bEnableBreakUprightConstraintOnLand boolean
---@field bEnableFallingAnim boolean
---@field FallingAnimLeaveWaterTime number
---@field FallingAnimLeaveWaterHeight number
local USurfBoardComp = {}

function USurfBoardComp:VehicleJump() end

function USurfBoardComp:Prone() end

---@param InState ESurfBoardState
function USurfBoardComp:ServerSetSurfBoardState(InState) end

---@param InState ESurfBoardState
function USurfBoardComp:ClientSetSurfBoardState(InState) end

function USurfBoardComp:OnRep_SurfBoardState() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function USurfBoardComp:HandleOnVehicleEnterServer(Character, SeatType, IsSucc) end

---@param DeltaTime number
function USurfBoardComp:HandleOnUpdateEffects(DeltaTime) end

---@param bEnable boolean
function USurfBoardComp:MulticastEnableUprightConstraint(bEnable) end
