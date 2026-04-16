---@meta

---@class FSCCAnimCurveNameInfo
---@field CurveValue number
---@field AnimName string
---@field NodeResult EConditionNodeResult
---@field EnterNodeResult EConditionNodeResult
---@field FirstEnterNodeResult EConditionNodeResult
FSCCAnimCurveNameInfo = {}


---@class FSCCWeaponStateResultInfo
---@field NodeResult EConditionNodeResult
---@field EnterNodeResult EConditionNodeResult
---@field FirstEnterNodeResult EConditionNodeResult
FSCCWeaponStateResultInfo = {}


---@class USTExtraSCC_OtherStateCheck: USightConditionNode
---@field bCheckFalling boolean
---@field bCheckBoneLoad boolean
---@field bCheckMeshSightID boolean
---@field bCheckSightIDAndType boolean
---@field bCheckSightType boolean
---@field bCheckScopeID boolean
---@field DefSightTypeResult EConditionNodeResult
---@field SightModifyAttrName string
---@field FailWeaponStateType ULuaMapHelper<EFreshWeaponStateType, FSCCWeaponStateResultInfo>
---@field FailAnimCurveNameList ULuaArrayHelper<FSCCAnimCurveNameInfo>
---@field NewFPPScopeIgnoreWeaponStateTypeList ULuaArrayHelper<EFreshWeaponStateType>
local USTExtraSCC_OtherStateCheck = {}

---@param WeapinInstanceID number
function USTExtraSCC_OtherStateCheck:OnAngleChange(WeapinInstanceID) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function USTExtraSCC_OtherStateCheck:HandleScopeMeshLoaded(WeaponSlotID, IsEquipped) end
