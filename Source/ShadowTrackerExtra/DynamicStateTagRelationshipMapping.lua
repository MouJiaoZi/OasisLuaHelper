---@meta

---@class FDynamicStateTagRelationship
---@field Tag FGameplayTag @The tag that this container relationship is about. Single tag, but abilities can have multiple of these
---@field TagsToInterrupt FGameplayTagContainer
---@field TagsToDisable FGameplayTagContainer
FDynamicStateTagRelationship = {}


---@class UDynamicStateTagRelationshipMapping: UDataAsset
---@field PETagRelationships ULuaArrayHelper<FDynamicStateTagRelationship>
local UDynamicStateTagRelationshipMapping = {}


---@class UDynamicStateTagRelationshipSet: UObject
---@field PETagRelationships ULuaArrayHelper<FDynamicStateTagRelationship>
local UDynamicStateTagRelationshipSet = {}
