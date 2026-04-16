---@meta

---@class EMultiFunctionalShootModeType
---@field EMultiFunctionalShootModeType_Normal number @正常射击模式
---@field EMultiFunctionalShootModeType_GrenadeProject number @榴弹射击模式
---@field EMultiFunctionalShootModeType_FireLauncher number @喷火射击模式
---@field EMultiFunctionalShootModeType_MAX number
EMultiFunctionalShootModeType = {}


---@class FShootWeaponDataModeConfig
---@field WeaponLogicCompTemplateConfigList ULuaArrayHelper<UActorComponent>
---@field bDisableScopeIn boolean
FShootWeaponDataModeConfig = {}


---@class FShootWeaponDataModeSolution
---@field WeaponLogicCompList ULuaArrayHelper<UActorComponent>
---@field bEnableAmmoManager boolean
---@field ClipAmmoID number
---@field ClipAmmoCount number
---@field ClipAmmoTypeData ULuaMapHelper<number, number>
---@field ShootType number
---@field bDisableScopeIn boolean
FShootWeaponDataModeSolution = {}


---@class FSwitchShootWeaponDataModeRepData
---@field ShootModeType EMultiFunctionalShootModeType
---@field ShootID number
---@field ClipID number
---@field ClipAmmoID number
---@field ClipAmmoCount number
---@field MaxClipAmmoCount number
---@field ShootType number
FSwitchShootWeaponDataModeRepData = {}
