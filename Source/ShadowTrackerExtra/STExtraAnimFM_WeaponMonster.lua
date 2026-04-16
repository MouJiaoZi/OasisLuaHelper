---@meta

---@class USTExtraAnimFM_WeaponMonster: UAnimFunctionModule_ObjInstanceBP
---@field MoveSpeed number
---@field MoveForwardSpeed number
---@field MoveRightSpeed number
---@field bMoving boolean
---@field LandVerticalSpeed number
---@field bFalling boolean
---@field Pose EMonsterWeaponPose
---@field PeekPose EMonsterPeekPose
---@field PeekBSInput number
---@field bNeedUpdateAnimAssets boolean
local USTExtraAnimFM_WeaponMonster = {}

---@param bUpdate boolean
function USTExtraAnimFM_WeaponMonster:SetNeedUpdateAnimAssets(bUpdate) end


---@class USTExtraAnimFM_AimOffset_WeaponMonster: USTExtraAnimFM_AimOffset
local USTExtraAnimFM_AimOffset_WeaponMonster = {}
