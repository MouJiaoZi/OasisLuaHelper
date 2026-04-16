---@meta

---@class FMaterialParamInput
---@field MatSlotName string
---@field MatParamName string
---@field SlotID EAvatarSlotType
---@field ItemIdArray ULuaArrayHelper<number>
---@field ParticleName string
---@field ParticleParamName string
---@field bUseFloatCurve boolean
---@field bUseLoopTime boolean
---@field LoopTime number
---@field CurrentPlatformTime number
---@field OriginalCurveFloatValue number
---@field OriginalCurveLinearColor FLinearColor
FMaterialParamInput = {}


---@class FMaterialParamInputArray
---@field ParamInputItem ULuaArrayHelper<FMaterialParamInput>
FMaterialParamInputArray = {}


---@class FSwitchMaterialConfigSetting
---@field MaterialSlotName string
FSwitchMaterialConfigSetting = {}


---@class UAnimNotifyState_SimpleModifyMaterialParam: UAnimNotifyState
---@field bMatOnParticle boolean
---@field bHasAnyChildActors boolean
---@field bNeedRevertParam boolean
---@field bNeedSkipTick boolean
---@field bSetCustomOriginalValue boolean
---@field bFilterSameActor boolean
---@field ActorName string
---@field ParamInput ULuaArrayHelper<FMaterialParamInput>
---@field ParamInputMap ULuaMapHelper<USkeletalMeshComponent, FMaterialParamInputArray>
---@field TargetMeshComponentArray ULuaArrayHelper<UActorComponent>
---@field bSwitchMaterial boolean
---@field SwitchMaterialConfigList ULuaArrayHelper<FSwitchMaterialConfigSetting>
local UAnimNotifyState_SimpleModifyMaterialParam = {}

---@return boolean
function UAnimNotifyState_SimpleModifyMaterialParam:CheckParamValid() end
