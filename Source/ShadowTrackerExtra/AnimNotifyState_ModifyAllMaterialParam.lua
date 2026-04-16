---@meta

---@class FAllMaterialParamInput
---@field MatSlotName string
---@field MatParamName string
---@field SlotID EAvatarSlotType
---@field bUseFloatCurve boolean
---@field bUseLoopTime boolean
---@field LoopTime number
---@field CurrentPlatformTime number
---@field DynamicMatInstanceArray ULuaArrayHelper<UMaterialInstanceDynamic>
---@field OriginalCurveFloatValue number
---@field OriginalCurveLinearColor FLinearColor
FAllMaterialParamInput = {}


---@class FAllMaterialParamInputArray
---@field ParamInputItem ULuaArrayHelper<FAllMaterialParamInput>
FAllMaterialParamInputArray = {}


---@class UAnimNotifyState_ModifyAllMaterialParam: UAnimNotifyState
---@field bHasAnyChildActors boolean
---@field bNeedRevertParam boolean
---@field bNeedSkipTick boolean
---@field bSetCustomOriginalValue boolean
---@field bFilterSameActor boolean
---@field ActorName string
---@field ParamInput ULuaArrayHelper<FAllMaterialParamInput>
---@field ParamInputMap ULuaMapHelper<USkeletalMeshComponent, FAllMaterialParamInputArray>
---@field TargetMeshComponentArray ULuaArrayHelper<UActorComponent>
local UAnimNotifyState_ModifyAllMaterialParam = {}

---@return boolean
function UAnimNotifyState_ModifyAllMaterialParam:CheckParamValid() end
