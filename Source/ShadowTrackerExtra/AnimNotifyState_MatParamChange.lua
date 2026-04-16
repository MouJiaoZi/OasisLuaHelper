---@meta

---@class FMatParamInput
---@field MatSlotName string
---@field MatParamName string
---@field SlotID EAvatarSlotType
---@field bUseAllAvatar boolean
---@field ItemIdArray ULuaArrayHelper<number>
---@field ParticleName string
---@field ParticleParamName string
---@field bUseFloatCurve boolean
---@field bUseLoopTime boolean
---@field LoopTime number
---@field CurrentPlatformTime number
---@field OriginalCurveFloatValue number
---@field OriginalCurveLinearColor FLinearColor
FMatParamInput = {}


---@class FMatParamInputArray
---@field ParamInputItem ULuaArrayHelper<FMatParamInput>
FMatParamInputArray = {}


---@class FSwitchMaterialConfig
---@field MaterialSlotName string
FSwitchMaterialConfig = {}


---@class UAnimNotifyState_MatParamChange: UAnimNotifyState
---@field bMatOnParticle boolean
---@field bHasAnyChildActors boolean
---@field bNeedRevertParam boolean
---@field bFilterSameActor boolean
---@field ActorName string
---@field ParamInput ULuaArrayHelper<FMatParamInput>
---@field ParamInputMap ULuaMapHelper<USkeletalMeshComponent, FMatParamInputArray>
---@field TargetMeshComponentArray ULuaArrayHelper<UActorComponent>
---@field bSwitchMaterial boolean
---@field SwitchMaterialConfigList ULuaArrayHelper<FSwitchMaterialConfig>
---@field bUseInBattleField boolean
local UAnimNotifyState_MatParamChange = {}

---@return boolean
function UAnimNotifyState_MatParamChange:CheckParamValid() end

function UAnimNotifyState_MatParamChange:ReceivedParticleMatBegin() end
