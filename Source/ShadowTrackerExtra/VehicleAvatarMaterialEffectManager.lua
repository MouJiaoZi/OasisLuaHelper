---@meta

---@class UVehicleAvatarMaterialEffectManager: UAvatarMaterialEffectManager
---@field TickUpdateStateInterval number
---@field MinRunSpeed number
---@field UpdateStateTimerHandle FTimerHandle
---@field IsUpdateStateTickStart boolean
local UVehicleAvatarMaterialEffectManager = {}

function UVehicleAvatarMaterialEffectManager:InitTriggerVehicleState() end

---@param InState EAvatarVehicleState
---@param IsAdd boolean
---@param Value number
function UVehicleAvatarMaterialEffectManager:OnAvatarVehicleStateChanged(InState, IsAdd, Value) end

function UVehicleAvatarMaterialEffectManager:OnActiveParticlesChanged() end

function UVehicleAvatarMaterialEffectManager:TryStartTickUpdateState() end

function UVehicleAvatarMaterialEffectManager:TryStopTickUpdateState() end

function UVehicleAvatarMaterialEffectManager:TickUpdateState() end

---@param InState EAvatarVehicleState
---@return number
function UVehicleAvatarMaterialEffectManager:GetStateID(InState) end

---@param InState number
---@return EAvatarVehicleState
function UVehicleAvatarMaterialEffectManager:GetStateEnum(InState) end

---@param CurVehicle ASTExtraVehicleBase
---@return boolean
function UVehicleAvatarMaterialEffectManager:CheckVehicleIsInWater(CurVehicle) end

---@param CurVehicle ASTExtraVehicleBase
---@return boolean
function UVehicleAvatarMaterialEffectManager:CheckVehicleIsEntirelyUnderWater(CurVehicle) end

---@return boolean
function UVehicleAvatarMaterialEffectManager:CanClearCurrentValue() end
