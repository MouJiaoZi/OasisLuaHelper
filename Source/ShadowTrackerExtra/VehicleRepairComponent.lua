---@meta

---@class UVehicleRepairComponent: UActorComponent
---@field DisableDynamicStateList ULuaArrayHelper<FGameplayTag>
---@field SpareTireItemID number
---@field ChangeTireSkillClass AUTSkill
---@field ChangeTireCheckInterval number
---@field ChangeTireHorizontalDis number
---@field ChangeTireVerticalDis number
---@field ChangeTireInteractiveAngle FVector2D
---@field ChangeTireFaceAngle FVector2D
---@field ChangeTireStartPosOffset FVector
---@field ChangeTireDist number
---@field ChangeTireSweepCheckChannels ULuaArrayHelper<ECollisionChannel>
---@field SpareTireNumErrorMsgID number
---@field SpareTireTaskID number
---@field SpareTireTargetErrorMsgID number
---@field RepairBoxItemID number
---@field RepairBoxSkillClass AUTSkill
---@field RepairVehicleCheckInterval number
---@field RepairVehicleStartPosOffset FVector
---@field RepairVehicleCheckDis number
---@field RepairVehicleAvailableHPPercentage number
---@field RepairVehicleHP number
---@field RepairVehicleConsumeTipsID number
---@field RepairVehicleBlockCheckOffset FVector
---@field RepairVehicleBlockCheckCapsuleHalfHeight number
---@field RepairVehicleBlockCheckCapsuleRadius number
---@field RepairBoxTargetErrorMsgID number
---@field RepairBoxBlockErrorMsgID number
---@field RepairBoxDurabilityErrorMsgID number
---@field RepairBoxVehicleDurabilityErrorMsgID number
---@field RepairBoxNumErrorMsgID number
---@field RepairBoxRepairingErrorMsgID number
---@field RepairBoxTaskID number
---@field RepairBoxDurabilityName string
---@field RepairVehicleSweepCheckChannels ULuaArrayHelper<ECollisionChannel>
---@field bDebugDraw boolean
---@field DebugTime number
---@field SweepCapsuleHalfHeight number
---@field SweepCapsuleRadius number
---@field SweepCapsuleHalfHeightOffset number
---@field SweepCapsuleRadiusOffset number
---@field VehicleVelocityLimit number
---@field ChangeTireVehicle ASTExtraVehicleBase
---@field RepairBoxVehicle ASTExtraVehicleBase
---@field ChangeTireAvailable boolean
---@field ClosestVehicleChangeTireAvailable boolean
---@field ChangeTireIndex number
---@field RepairVehicleAvailable boolean
---@field ClosestVehicleRepairVehicleAvailable boolean
---@field IsVehicleRepairing boolean
---@field IsChangingTire boolean
---@field VehicleRepairBoxItemData FBattleItemData
---@field CheckChangeTireTimerHandle FTimerHandle
---@field CheckRepairVehicleTimerHandle FTimerHandle
---@field OwnerCharacter ASTExtraBaseCharacter
---@field OwnerBackpackComp UBackpackComponent
local UVehicleRepairComponent = {}

function UVehicleRepairComponent:InitItemUpdateDelegate() end

function UVehicleRepairComponent:RemoveItemUpdateDelegate() end

---@param DefineID FItemDefineID
function UVehicleRepairComponent:ClientUpdateSingleItem(DefineID) end

function UVehicleRepairComponent:CheckChangeTireAvailableByTimer() end

function UVehicleRepairComponent:CheckRepairVehicleAvailableByTimer() end

function UVehicleRepairComponent:CheckChangeTireAvailable() end

function UVehicleRepairComponent:CheckRepairVehicleAvailable() end

---@return number
function UVehicleRepairComponent:GetVehicleRepairBoxItemDurability() end

function UVehicleRepairComponent:SetChangeTireRotateRotation() end

function UVehicleRepairComponent:ChangeTire() end

---@param InChangingTire boolean
function UVehicleRepairComponent:SetChangingTire(InChangingTire) end

function UVehicleRepairComponent:ResetChangeTireState() end

---@return boolean
function UVehicleRepairComponent:IsChangeTireAvailable() end

---@return boolean
function UVehicleRepairComponent:IsVehicleRepairBoxAvailable() end

---@return boolean
function UVehicleRepairComponent:CheckChangeTire() end

---@return boolean
function UVehicleRepairComponent:CheckVehicleRepair() end

---@return boolean
function UVehicleRepairComponent:IsShowChangeTireButton() end

---@return boolean
function UVehicleRepairComponent:IsShowVehicleRepairButton() end

---@return boolean
function UVehicleRepairComponent:IsCastingChangeTireSkill() end

---@return boolean
function UVehicleRepairComponent:IsCastingVehicleRepairSkill() end

function UVehicleRepairComponent:RepairVehicle() end

function UVehicleRepairComponent:UpdateRepairVehicle() end

---@param InConsumeDurability number
---@return boolean
function UVehicleRepairComponent:ConsumeRepairBoxDurability(InConsumeDurability) end

function UVehicleRepairComponent:ResetVehicleRepair() end

---@param InVehicleRepairing boolean
function UVehicleRepairComponent:SetVehicleRepairing(InVehicleRepairing) end

function UVehicleRepairComponent:RepairVehicleSucceed() end

---@param bIsSucceed boolean
function UVehicleRepairComponent:OnRepairVehicleSucceed(bIsSucceed) end

function UVehicleRepairComponent:SelectVehicleRepairBoxItem() end

---@return boolean
function UVehicleRepairComponent:CheckRepairVehicleBlock() end

---@param OutStratPos FVector
---@param OutEndPos FVector
---@return boolean
function UVehicleRepairComponent:GetCheckChangeTirePos(OutStratPos, OutEndPos) end

---@param OutStratPos FVector
---@param OutEndPos FVector
---@return boolean
function UVehicleRepairComponent:GetCheckRepairVehiclePos(OutStratPos, OutEndPos) end

---@param VehicleActor ASTExtraVehicleBase
---@param BoneName string
---@return number
function UVehicleRepairComponent:GetWheelIndexByBoneName(VehicleActor, BoneName) end

---@param VehicleActor ASTExtraVehicleBase
---@return number
function UVehicleRepairComponent:GetWheelIndexToChangeTire(VehicleActor) end

---@param VehicleActor ASTExtraVehicleBase
---@param WheelHP FSTExtraVehicleWheelHP
---@param WheelIndex number
---@return boolean
function UVehicleRepairComponent:IsLeftWheel(VehicleActor, WheelHP, WheelIndex) end

function UVehicleRepairComponent:CastRefreshVehicleRepairButtonShowUIMsg() end

---@param MsgID number
function UVehicleRepairComponent:DisplayVehicleRepairTips(MsgID) end

---@return number
function UVehicleRepairComponent:GetVehicleRepairProgress() end

---@param HitVehicle ASTExtraVehicleBase
---@return boolean
function UVehicleRepairComponent:IsVehicleMoveing(HitVehicle) end

---@return FVector
function UVehicleRepairComponent:GetChangeTireBonePos() end

function UVehicleRepairComponent:OnReceiveBackpackComponent() end

---@return boolean
function UVehicleRepairComponent:CheckDisableDynamicState() end
