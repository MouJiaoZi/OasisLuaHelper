---@meta

---@class FGameplayTask_LockWeapon_Data
---@field KeyName string
---@field WeaponNewTypeWhiteList ULuaArrayHelper<EWeaponTypeNew>
---@field WeaponIDWhiteList ULuaArrayHelper<number>
---@field MsgID number
FGameplayTask_LockWeapon_Data = {}


---@class UGameplayTask_LockWeapon: UUAEGameplayTask
---@field GameplayTask_LockWeapon_Data FGameplayTask_LockWeapon_Data
local UGameplayTask_LockWeapon = {}
