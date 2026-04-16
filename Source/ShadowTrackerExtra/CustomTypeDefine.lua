---@meta

---@class EPEGetterType
---@field EPEGetterType_Property number @Property
---@field EPEGetterType_Attribute number @Attribute
EPEGetterType = {}


---@class FGameplayTagGroups
---@field BlockTag FGameplayTagContainer
---@field ActiveTag FGameplayTagContainer
---@field InterruptTag FGameplayTagContainer
---@field DisableTag FGameplayTagContainer
---@field Version number
FGameplayTagGroups = {}


---@class FUISlotSelector
---@field UISlotName FGameplayTag
---@field ZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
---@field AnchorData FAnchorData
FUISlotSelector = {}


---在Mesh上的位置
---@class FMeshSocketSelector
---@field bUsePartType boolean
---@field PartType EAvatarDamagePosition
---@field Socket string @Mesh上的Socket名字
---@field Offset FTransform @相对于Socket的偏移
FMeshSocketSelector = {}


---@class FBindFunctionSelector
---@field FunctionName string
FBindFunctionSelector = {}


---@class FPECommonGMPEventParam
---@field TargetEventTag FGameplayTag
FPECommonGMPEventParam = {}


---@class FPropetyGetter
---@field PropertyName string
FPropetyGetter = {}


---@class FFloatGetter
---@field GetterType EPEGetterType
---@field Value number
---@field GameAttributeX FGameAttributeContainer @要使用的属性名
---@field ValueA number @公式参数A
---@field ValueB number @公式参数B
FFloatGetter = {}


---@class FTransformGetter
---@field Value FTransform
FTransformGetter = {}


---@class FPropetySetter
---@field PropertyName string
FPropetySetter = {}


---@class FFloatSetter
---@field Value number
FFloatSetter = {}


---@class FActorSetter
FActorSetter = {}


---@class FTransformSetter
---@field Value FTransform
FTransformSetter = {}


---@class FVectorSetter
---@field Value FVector
FVectorSetter = {}


---@class FArraySetter
---@field Value ULuaArrayHelper<UObject>
FArraySetter = {}


---@class FIntGetter
---@field GetterType EPEGetterType
---@field Value number
---@field GameAttributeX FGameAttributeContainer @要使用的属性名
---@field ValueA number @公式参数A
---@field ValueB number @公式参数B
FIntGetter = {}


---@class FArrayGetter
---@field Value ULuaArrayHelper<UObject>
FArrayGetter = {}


---@class FActorComponentSelector
---@field ComponentName string
FActorComponentSelector = {}


---@class FSceneComponentSelector
FSceneComponentSelector = {}


---@class FPrimitiveComponentSelector
FPrimitiveComponentSelector = {}


---@class FShapeComponentSelector
FShapeComponentSelector = {}


---@class FChildActorComponentSelector
FChildActorComponentSelector = {}


---@class FOverlapCheckAreaComponentSelector
FOverlapCheckAreaComponentSelector = {}


---@class FEditorWikiLink
---@field WebLink string
FEditorWikiLink = {}


---@class UPESkillTaskLuaParamsBase: UObject
local UPESkillTaskLuaParamsBase = {}


---@class UComponentSelectorStatics: UBlueprintFunctionLibrary
local UComponentSelectorStatics = {}

---@param OwnerActor AActor
---@param ComponentSelector FActorComponentSelector
---@param OutComponent UActorComponent
function UComponentSelectorStatics:GetComponentBySelector(OwnerActor, ComponentSelector, OutComponent) end
