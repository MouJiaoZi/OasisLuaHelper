---@meta

---@class FWeaponPlayAnimInstanceState
---@field bHasFindedRequiredSkeleton boolean
---@field AccmulateTime number
FWeaponPlayAnimInstanceState = {}


---@class UAnimNotifyState_WeaponPlayAnimMontage: UAnimNotifyState
---@field BlendOutTime number
---@field bInterruptPreviousMontage boolean
---@field InterruptBlendOutTime number
---@field WeaponPlayAnimStateInstanceStateMap ULuaMapHelper<string, FWeaponPlayAnimInstanceState>
local UAnimNotifyState_WeaponPlayAnimMontage = {}
