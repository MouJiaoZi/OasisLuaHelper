---@meta

---@class EGameplayTagAnimListCompType
---@field AnimListComp_Character number
---@field AnimListComp_Weapon number
---@field AnimListComp_Monster number
---@field AnimListComp_Max number
EGameplayTagAnimListCompType = {}


---@class FGameplayTagAnimLayerData
---@field AnimLayerName string
---@field AnimLayerPriority number
FGameplayTagAnimLayerData = {}


---@class FAnimGameplayTagData
---@field OwnerAnimListCompType EGameplayTagAnimListCompType
---@field AnimGameplayTag FGameplayTag
---@field PoseType ECharacterPoseType
FAnimGameplayTagData = {}


---UGC  以 GameTag 为 Key 的支持自定义动画列表 （区分角色武器默认显示Tag，以及怪物）
---@class UUGCAnimListCompWithGameplayTag: UUAEAnimListComponentBase
---@field GameplayTagAnimLayerList ULuaArrayHelper<FGameplayTagAnimLayerData>
---@field GameplayTagAnimDataListDefault ULuaArrayHelper<FAnimGameplayTagData>
---@field GameplayTagAnimDataListExtend ULuaArrayHelper<FAnimGameplayTagData>
---@field GameplayTagAnimListMap ULuaMapHelper<string, FAnimListMapValueData>
---@field AnimListCompType EGameplayTagAnimListCompType
---@field AnimPlayerActor IUGCCharacterAnimPlayInterfaceBase
---@field AnimLayerCacheLoopAnimation ULuaMapHelper<string, UAnimationAsset>
local UUGCAnimListCompWithGameplayTag = {}

---@param AnimationToPlay UAnimationAsset
---@param AnimLayerName string
---@param bIsLoop boolean
---@return boolean
function UUGCAnimListCompWithGameplayTag:PlayAnimation(AnimationToPlay, AnimLayerName, bIsLoop) end
