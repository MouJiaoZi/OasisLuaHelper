---@meta

---@class EUGCAIAmmoEnoughType
---@field ClipAmmo number @弹夹子弹/弹夹容量
---@field BackpackAmmo number @背包子弹/弹夹容量
---@field Max number
EUGCAIAmmoEnoughType = {}


---@class UBTDecorator_UGC_IsAmmoEnough: UBTDecorator
---@field AmmoEnoughType EUGCAIAmmoEnoughType
---@field EnoughPercent number
---@field bSpecifyWeaponSlot boolean
---@field WeaponSlot ESurviveWeaponPropSlot
local UBTDecorator_UGC_IsAmmoEnough = {}
