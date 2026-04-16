---@meta

---@class FRotorDamageConfig
---@field DamageCheckInterval number
---@field MinRPMForDamage number
---@field MaxSpeedInKmForTrace number
---@field Damage number
---@field LaunchSpeed number
---@field LaunchUpScale number
---@field RotorDamageBone string
---@field ComponentTraceOffset FVector
---@field BoxExtent FVector
---@field DamageType UDamageType
FRotorDamageConfig = {}


---@class FAirVehicleAudioState
FAirVehicleAudioState = {}


---摩托滑翔机
---@class ASTExtraMotorgliderVehicle: ASTExtraWheeledVehicle
---@field PersistenceTimeDriver number
---@field PersistenceTimeNoDriver number
---@field EnginOnMinHP number
---@field SetEngineAlreadyOnWhenSpeedIsLarge boolean
---@field bVehicleEngineOn boolean
---@field HitImpluseStopEngineThreshold number
---@field bNotAllowLeaveVehicleWhenFlyHigh boolean
---@field MaxLeaveVehicleHeight number
---@field CanNotLeveVehicleTips number
---@field GetInputDirReturnCustomInput boolean
---@field FastRotorEffectName string
---@field ViewYawLimit FVector2D
---@field LastRotorDamageCheckTime number
---@field RotorDamageConfig FRotorDamageConfig
---@field VehicleRotorDamageTypeClass UDamageType @螺旋桨伤害类型
---@field WindSfxLoop FSTExtraVehicleSfxLoop
---@field PropellerSfxLoop FSTExtraVehicleSfxLoop
---@field MoveMotorgliderRightRate number
---@field MoveMotorgliderForwardRate number
---@field bEnableVehicleBaseInput boolean
---@field PropellerBladesBoneName string
local ASTExtraMotorgliderVehicle = {}

---@param input number
function ASTExtraMotorgliderVehicle:SetPitchInput(input) end

---@param input number
function ASTExtraMotorgliderVehicle:SetThrottleInput(input) end

---@param input number
function ASTExtraMotorgliderVehicle:SetRollInput(input) end

---@return boolean
function ASTExtraMotorgliderVehicle:CanLeaveVehilce() end

function ASTExtraMotorgliderVehicle:OnRep_VehicleEngineOn() end

---@return boolean
function ASTExtraMotorgliderVehicle:IsFastRotorActive() end

---@param rate number
function ASTExtraMotorgliderVehicle:MoveMotorgliderForward(rate) end

---@param rate number
function ASTExtraMotorgliderVehicle:MoveMotorgliderRight(rate) end

---@param rate number
function ASTExtraMotorgliderVehicle:MoveMotorgliderUp(rate) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraMotorgliderVehicle:ClientExitVehicle(Character, SeatType, IsSucc) end

---@return number
function ASTExtraMotorgliderVehicle:GetForwardSpeed() end

function ASTExtraMotorgliderVehicle:OnUpdateEffects() end

---@return number
function ASTExtraMotorgliderVehicle:GetDistanceToLand() end
