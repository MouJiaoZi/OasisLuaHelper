---@meta

---@class FUGCGameplayTagAnimTypeData
---@field GameplayTagAnimType FGameplayTag
---@field AnimAssetType string
FUGCGameplayTagAnimTypeData = {}


---UGC GameplayTag 映射角色对应动画枚举类型
---@class UUGCGameplayTagAnimTypeDataAsset: UDataAsset
---@field GameplayTagAnimTypeSet ULuaArrayHelper<FUGCGameplayTagAnimTypeData>
local UUGCGameplayTagAnimTypeDataAsset = {}


---@class UUGCGameplayTagToCharacterAnimTypeDataAsset: UDataAsset
---@field GameplayTagToCharacterAnimTypeSet ULuaMapHelper<FGameplayTag, ECharacterAnimType>
local UUGCGameplayTagToCharacterAnimTypeDataAsset = {}
