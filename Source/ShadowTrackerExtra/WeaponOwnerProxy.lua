---@meta

---@class IWeaponOwnerProxyFactory
IWeaponOwnerProxyFactory = {}

---@return UWeaponOwnerProxy
function IWeaponOwnerProxyFactory:GetWeaponOwnerProxy() end


---@class UWeaponOwnerProxy: UObject
local UWeaponOwnerProxy = {}

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UWeaponOwnerProxy:HandlePlayerChangePose(LastPose, NewPose) end

---@param Mode EPlayerCameraMode
function UWeaponOwnerProxy:HandlePlayerSwitchCameraMode(Mode) end

function UWeaponOwnerProxy:HandleFireShot() end
