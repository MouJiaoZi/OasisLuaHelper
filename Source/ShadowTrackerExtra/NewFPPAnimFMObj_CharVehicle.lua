---@meta

---@class ELeanOutStatus
---@field Idle number
---@field LeanOutUnEquip number
---@field LeanOutEquip number
---@field Aim number
---@field LeanInUnEquip number
---@field LeanInEquip number
ELeanOutStatus = {}


---@class UNewFPPAnimFMObj_CharVehicle: UAnimFunctionModule_ObjInstance
---@field bIsInNewFPPMode boolean
---@field VehAnimParam FAnimVehParamList
---@field bIsDriverUsePistol boolean
---@field bEnableEquipMode boolean
---@field LeanOutTotalTime number
---@field LeanOutEquipPercentage number
---@field LeanOutIdlePercentage number
---@field LeanOutAimPercentage number
---@field DisableEquipAnimStates ULuaArrayHelper<EPawnState>
---@field DisableEquipAnimWeaponStates ULuaArrayHelper<EFreshWeaponStateType>
---@field CurLeanOutStatus ELeanOutStatus
---@field NextLeanOutStatus ELeanOutStatus
---@field bDisableScope boolean
local UNewFPPAnimFMObj_CharVehicle = {}

---@param NewState EFreshWeaponStateType
function UNewFPPAnimFMObj_CharVehicle:HandlePlayerWeaponStateChanged(NewState) end

---@param InVehicle ASTExtraVehicleBase
function UNewFPPAnimFMObj_CharVehicle:OnOwnerAttachedToVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UNewFPPAnimFMObj_CharVehicle:OnOwnerDetachFromVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function UNewFPPAnimFMObj_CharVehicle:PreOwnerAttachedToVehicle(InVehicle, SeatType) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param LeavePos FVector
function UNewFPPAnimFMObj_CharVehicle:PreOwnerDetachFromVehicle(InVehicle, SeatType, LeavePos) end

function UNewFPPAnimFMObj_CharVehicle:OnOwnerChangeSeatFromVehicle() end

---@param AnimInstance UAnimInstanceBase
---@param LeanOutStatus ELeanOutStatus
function UNewFPPAnimFMObj_CharVehicle:PlayMontageByLeanOutStatus(AnimInstance, LeanOutStatus) end
