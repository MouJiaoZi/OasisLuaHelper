---@meta

---@class ESlotVisibilityCondition
---@field Self_Low number @Self Low Device Quality
---@field Self_Middle number @Self Middle Device Quality
---@field Self_High number @Self High Device Quality
---@field Team_Low number @Teammate Low Device Quality
---@field Team_Middle number @Teammate Middle Device Quality
---@field Team_High number @Teammate High Device Quality
---@field Enemy_Low number @Enemy Low Device Quality
---@field Enemy_Middle number @Enemy Middle Device Quality
---@field Enemy_High number @Enemy High Device Quality
---@field AllVisible number
ESlotVisibilityCondition = {}


---@class FSlotItemVisibilityCondition
---@field VisibilityConfig number
FSlotItemVisibilityCondition = {}


---@class FSlotVisiblityItem
---@field NormalVisibilityConfig FSlotItemVisibilityCondition
---@field SkinVisibilityConfig FSlotItemVisibilityCondition
---@field VehicleVisibilityConfig FSlotItemVisibilityCondition
FSlotVisiblityItem = {}


---@class FAvatarSlotVisibilityConfigItem
---@field ConfigSlot EAvatarSlotType
FAvatarSlotVisibilityConfigItem = {}


---@class FAvatarVisibilityConfig
---@field AvatarSlotVisibilityConfigList ULuaArrayHelper<FAvatarSlotVisibilityConfigItem>
FAvatarVisibilityConfig = {}


---@class FWeaponAttachmentSlotVisibilityConfigItem
---@field ConfigSlot EWeaponAttachmentSocketType
FWeaponAttachmentSlotVisibilityConfigItem = {}


---@class FWeaponSlotVisiblityConfigItem
---@field ConfigSlot ESurviveWeaponPropSlot
FWeaponSlotVisiblityConfigItem = {}


---@class FWeaponVisibilityConfig
---@field WeaponSlotVisibilityConfigList ULuaArrayHelper<FWeaponSlotVisiblityConfigItem>
---@field WeaponAttachmentSlotVisibilityConfigList ULuaArrayHelper<FWeaponAttachmentSlotVisibilityConfigItem>
FWeaponVisibilityConfig = {}


---@class FSlotVisiblityConfigItem
---@field GameModeID number
---@field bSelfAlwaysVisible boolean
---@field bOBAlwaysVisible boolean
---@field bGMAlwaysVisible boolean
---@field AvatarVisibilityConfig FAvatarVisibilityConfig
---@field WeaponVisibilityConfig FWeaponVisibilityConfig
FSlotVisiblityConfigItem = {}
