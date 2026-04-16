---@meta

---@class FGenericCharacterSubAnimTagConfig
---@field SubAnimTag FGameplayTag
---@field SubAnimClass USTExtraGenericCharacterSubAnimInstanceBase
---@field DisplayInfo string
FGenericCharacterSubAnimTagConfig = {}


---@class FGenericCharacterAnimSharingStateEntry
---@field State EGenericCharacterAnimSharingState @Enum value linked to this state
---@field bOnDemand boolean
---@field bAdditive boolean
---@field Animations ULuaArrayHelper<FGameplayTag> @状态动画列表
---@field NumInstances number @每个动画的实例数量
---@field BlendTime number
FGenericCharacterAnimSharingStateEntry = {}


---@class FGenericCharacterAnimationSharingSetup
---@field StateAnimBlueprint UAnimSharingStateInstance @Animation blueprint to use for playing back the Animation Sequence
---@field AdditiveAnimBlueprint UAnimSharingAdditiveInstance
---@field BlendAnimBlueprint UAnimSharingTransitionInstance
---@field StateProcessorClass UGenericCharacterAnimSharingStateProc
---@field UseBlendTransitions boolean
---@field MaximumNumberConcurrentBlends number
---@field bDynamicDisableSharing boolean
---@field DisableSharingBlendTime number
---@field bOverrideAnimUpdateRateParameters boolean
---@field BaseNonRenderedUpdateRate number
---@field BaseVisibleDistanceFactorThesholds ULuaArrayHelper<number>
---@field AnimationStates ULuaArrayHelper<FGenericCharacterAnimSharingStateEntry>
FGenericCharacterAnimationSharingSetup = {}


---@class FGenericCharacterAnimConfigData
---@field bCanEditAnimTag boolean
---@field AnimGameplayTag FGameplayTag
---@field bIsConfigCorrect boolean
---@field bShowDisplayInfo boolean
---@field DisplayInfo string
---@field ErrorDisplayInfo string
FGenericCharacterAnimConfigData = {}


---@class FGenericCharacterSubAnimParamConfigData
---@field ParamTag FGameplayTag
---@field DisplayInfo string
---@field ParamType EGenericCharacterSubAnimParamType
---@field FloatParam number
---@field IntParam number
---@field BoolParam boolean
---@field VectorParam FVector
FGenericCharacterSubAnimParamConfigData = {}


---@class UGenericCharacterSubAnimListData: UDataAsset
---@field TagSlotMap ULuaMapHelper<FGameplayTag, string>
local UGenericCharacterSubAnimListData = {}


---@class UGenericCharacterRuntimeSubAnimData: UDataAsset
---@field MainAnimClass USTExtraGenericCharacterAnimInstanceBase
---@field SubAnimTagList ULuaArrayHelper<FGenericCharacterSubAnimTagConfig>
---@field EnableAnimSharing boolean
---@field AnimSharingSetup FGenericCharacterAnimationSharingSetup
local UGenericCharacterRuntimeSubAnimData = {}


---以 GameTag 为 Key 的支持自定义动画列表 （区分角色武器默认显示Tag，以及怪物）
---@class USTExtraGenericCharacterAnimListComponent: UUAEAnimListComponentBase, IAnimationAccessInterface
---@field GameplayTagAnimDataListDefault ULuaArrayHelper<FGenericCharacterAnimConfigData>
---@field GameplayTagAnimDataListExtend ULuaArrayHelper<FGenericCharacterAnimConfigData>
---@field SubAnimParamList ULuaArrayHelper<FGenericCharacterSubAnimParamConfigData>
---@field SerializationDataAnimLength ULuaMapHelper<FGameplayTag, number>
---@field RuntimeAnimMap ULuaMapHelper<string, FAnimListMapValueData>
---@field RuntimeAnimOverrideList ULuaArrayHelper<FGenericCharacterAnimOverrideData>
local USTExtraGenericCharacterAnimListComponent = {}

function USTExtraGenericCharacterAnimListComponent:ResetAnim() end

---@param State EGenericCharacterAnimSharingState
---@param InPlayRate number
function USTExtraGenericCharacterAnimListComponent:PlaySharingOnDemandStateAnim(State, InPlayRate) end
