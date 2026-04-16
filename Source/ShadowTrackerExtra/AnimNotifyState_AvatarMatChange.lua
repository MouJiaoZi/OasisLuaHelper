---@meta

---@class FDynamicMatInstSetUp
---@field OriginalCurveFloatValue number
---@field OriginalCurveLinearColor FLinearColor
FDynamicMatInstSetUp = {}


---@class FMatParamSet
---@field bUseAllSlotNameMat boolean
---@field MatSlotName string
---@field MatParamName string
---@field bUseAllAvatar boolean
---@field SlotArray ULuaArrayHelper<EAvatarSlotType>
---@field bUseFloatCurve boolean
---@field bUseLoopTime boolean
---@field LoopTime number
---@field CurrentPlatformTime number
---@field MatInsSetUpArray ULuaArrayHelper<FDynamicMatInstSetUp>
FMatParamSet = {}


---@class FMatParamSetArray
---@field ParamInputItem ULuaArrayHelper<FMatParamSet>
FMatParamSetArray = {}


---@class UAnimNotifyState_AvatarMatChange: UAnimNotifyState
---@field bNeedRevertParam boolean
---@field ParamInputArray FMatParamSetArray
---@field ParamInputMap ULuaMapHelper<USkeletalMeshComponent, FMatParamSetArray>
local UAnimNotifyState_AvatarMatChange = {}

---@param InputItem FMatParamSet
---@param MyAvatarCom UCharacterAvatarComponent
function UAnimNotifyState_AvatarMatChange:SetUpParamInputMap(InputItem, MyAvatarCom) end

---@param InputItem FMatParamSet
---@param CurMeshComp UMeshComponent
---@param SlotId number
function UAnimNotifyState_AvatarMatChange:SetUpParamInputMapInner(InputItem, CurMeshComp, SlotId) end
