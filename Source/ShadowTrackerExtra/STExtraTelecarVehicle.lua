---@meta

---遥控车
---@class ASTExtraTelecarVehicle: ASTExtraUAVVehicleBase
---@field telecarSfxLoop FSTExtraVehicleSfxLoop
---@field SelfDestructTimeConfig number
---@field SelfDestructExplosionBaseDamage number
---@field SelfDestructExplosionMinimumDamage number
---@field SelfDestructExplosionRadiusInner number
---@field SelfDestructExplosionRadiusOuter number
---@field SelfDestructExplosionDamageFalloff number
---@field SelfDestructExplosionBaseMomentumMag number
---@field SelfDestructExplosionDamageType UDamageType
---@field SelfDestructWarningTime number
---@field selfDestructleftTime number
---@field SelfDestruct_Explosion UParticleSystem
---@field LinearDamping number
---@field AngularDamping number
---@field MaxValidSpeed number
---@field InWaterLiveTime number
---@field ViewCameraRotation FRotator
---@field STReplicatedState FSTReplicatedVehicleState
local ASTExtraTelecarVehicle = {}

---自爆请求
function ASTExtraTelecarVehicle:SendToServerReqSelDestruct() end

function ASTExtraTelecarVehicle:BroadcastSelfDstructExplosionEffect() end

function ASTExtraTelecarVehicle:OnRep_ViewCameraRotation() end

---@param InRotator FRotator
function ASTExtraTelecarVehicle:ServerViewCameraRotation(InRotator) end

---Pass current state to server
---@param InSteeringInput number
---@param InThrottleInput number
---@param InBrakeInput number
---@param InHandbrakeInput number
---@param CurrentGear number
function ASTExtraTelecarVehicle:STServerUpdateState(InSteeringInput, InThrottleInput, InBrakeInput, InHandbrakeInput, CurrentGear) end

function ASTExtraTelecarVehicle:OnRep_ReplicatedState() end
