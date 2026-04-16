---@meta

---@class UWeaponStateManager: UWeaponLogicBaseComponent
---@field StateMap ULuaMapHelper<EFreshWeaponStateType, UWeaponStateBase>
local UWeaponStateManager = {}

---@return EFreshWeaponStateType
function UWeaponStateManager:GetCurrentFreshWeaponStateType() end

---@param NewStateType EFreshWeaponStateType
---@return boolean
function UWeaponStateManager:ChangeToState(NewStateType) end

---@param NewStateType EFreshWeaponStateType
---@return boolean
function UWeaponStateManager:CanChangeToState(NewStateType) end

---@param NewState UWeaponStateBase
---@return boolean
function UWeaponStateManager:ChangeState(NewState) end

---@param ToType EFreshWeaponStateType
function UWeaponStateManager:HandleChangeStateFailed(ToType) end

---@param NewState UWeaponStateBase
function UWeaponStateManager:DoChangeState(NewState) end
