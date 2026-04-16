---@meta

---@class ERespawnPointType
---@field Plane number
---@field BornPoint number
ERespawnPointType = {}


---@class FRespawnKeepItemData
---@field ItemTypeID number
---@field Count number
---@field InsatnceId number
---@field bEquipped boolean
---@field bUseCachedEquipStatus boolean
FRespawnKeepItemData = {}


---@class FRespawnKeepWeaponData
---@field WeaponSlot ESurviveWeaponPropSlot
---@field AttachmentDatas ULuaArrayHelper<FRespawnKeepItemData>
FRespawnKeepWeaponData = {}


---@class FRespawnKeepAllItemData
---@field ItemDatas ULuaArrayHelper<FRespawnKeepItemData>
---@field WeaponDatas ULuaArrayHelper<FRespawnKeepWeaponData>
FRespawnKeepAllItemData = {}


---@class FRespawnKeepItemsConfig
---@field bEffectiveForAI boolean
---@field bDeathAutoRecord boolean
---@field bAllPlayerRespawnRecord boolean
---@field bUseKeepItemTypeWhiteList boolean
---@field KeepItemTypeWhiteList ULuaArrayHelper<number>
---@field KeepItemTypeBlackList ULuaArrayHelper<number>
---@field KeepItemIDWhiteList ULuaArrayHelper<number>
---@field KeepItemIDBlackList ULuaArrayHelper<number>
FRespawnKeepItemsConfig = {}


---@class UGMDataSource_PlayerRespawn: UGMDataSource
---@field DefaultPlayerRespawnTime number
---@field DefaultRespawnInvincibleTime number
---@field RespawnPointType ERespawnPointType
---@field bIsRespawnGenerateInitialItems boolean
---@field bIsRespawnKeepSuitSkinConfig boolean
---@field bIsEnableRespawnKeepItemsConfig boolean
---@field RespawnKeepItemsConfig FRespawnKeepItemsConfig
local UGMDataSource_PlayerRespawn = {}
