---@meta

---@class UFireWeaponState: UWeaponStateBase
---@field SupportSimDelayStopFirePendingStateList ULuaArrayHelper<EFreshWeaponStateType>
---@field bDisableTick boolean
---@field bWeaponUseConsistentFire boolean
---@field LastFireLevelTime number
---@field LastBurstFireLevelTime number
---@field StartFiringLevelTime number
---@field shootLockIndex number
---@field shootLockThreshold number
---@field InEmptyFireState boolean
---@field CurCheckShowShootVoiceTime number
---@field OpenPressBtnStay boolean
---@field SimulateFireDelayCheckTimer FTimerHandle
---@field IsFired boolean
---@field HandledStartTime number
---@field bSimClientCheckAndStopFire boolean
local UFireWeaponState = {}

---@param InRet boolean
---@param LastState EFreshWeaponStateType
---@return boolean
function UFireWeaponState:CheckConditionBP(InRet, LastState) end

function UFireWeaponState:ResetShootLock() end

---@param IsFirstShot boolean
function UFireWeaponState:HandleFire(IsFirstShot) end

---@return boolean
function UFireWeaponState:CheckSimulatCanStopFire() end

function UFireWeaponState:CalcShootLock() end

---@return boolean
function UFireWeaponState:IsLockEmptyFire() end

---@return boolean
function UFireWeaponState:IsInFreeCameraWhenFire() end

---@return boolean
function UFireWeaponState:CheckOwnerStateCanFire() end

---@return boolean
function UFireWeaponState:CheckShootInterval() end

function UFireWeaponState:ChangeState() end

function UFireWeaponState:PostIsLockEmptyFire() end

---@param IsFirstShot boolean
function UFireWeaponState:HandleFireShot(IsFirstShot) end

---@return boolean
function UFireWeaponState:NeedPressBtnStay() end

---@return boolean
function UFireWeaponState:IsPressFireBtn() end

---@return boolean
function UFireWeaponState:CheckBullet() end

function UFireWeaponState:HandleSimulateFireDelayCheck() end
