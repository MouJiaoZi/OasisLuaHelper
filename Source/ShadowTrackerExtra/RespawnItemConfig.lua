---@meta

---@class FRespawnItem
---@field ItemTableID number
---@field Count number
FRespawnItem = {}


---@class FRespawnItemMinorGroup
---@field RandomWeight number
---@field ItemList ULuaArrayHelper<FRespawnItem>
FRespawnItemMinorGroup = {}


---@class FRespawnItemMajorGroup
---@field RandomTimes number
---@field MinorGroupList ULuaArrayHelper<FRespawnItemMinorGroup>
FRespawnItemMajorGroup = {}


---@class FRespawnItemConfigInst
---@field RandomWeight number
---@field RespawnItemConfigClass URespawnItemConfig
---@field bSpecialUsage boolean
FRespawnItemConfigInst = {}


---@class URespawnItemConfig: UDataAsset
---@field MajorGroupList ULuaArrayHelper<FRespawnItemMajorGroup>
local URespawnItemConfig = {}
