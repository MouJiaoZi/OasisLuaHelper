---@meta

---@class FCustomMovementRegisterInfo
---@field Tag FGameplayTag
---@field CustomMovementCls UCustomMovementBase
---@field CustomMovementMode ECustomMovmentMode
---@field SkillID number
---@field bIsTag boolean
FCustomMovementRegisterInfo = {}


---@class UCustomMovementManager: UObject
---@field CustomMovementClsMap ULuaMapHelper<ECustomMovmentMode, UCustomMovementBase>
---@field CustomMovementTagClsMap ULuaMapHelper<FGameplayTag, UCustomMovementBase>
---@field CustomMovementMap ULuaMapHelper<ECustomMovmentMode, UCustomMovementBase>
---@field FlyingMode2Mode ULuaMapHelper<ECustomFlyingMoveMode, ECustomMovmentMode>
---@field WaitingForRegisters ULuaArrayHelper<FCustomMovementRegisterInfo>
local UCustomMovementManager = {}

---@return string
function UCustomMovementManager:GetToString() end

function UCustomMovementManager:OnRespawned() end

function UCustomMovementManager:OnRecycled() end

---@param _MovementOwner USTCharacterMovementComponentBase
function UCustomMovementManager:UpdateMovementOwner(_MovementOwner) end

---@param CustomMovementMode ECustomMovmentMode
---@param CustomMovementCls UCustomMovementBase
---@param SkillID number
function UCustomMovementManager:RegisterCustomMovement(CustomMovementMode, CustomMovementCls, SkillID) end

---@param CustomMovementMode ECustomMovmentMode
function UCustomMovementManager:UnRegisterCustomMovement(CustomMovementMode) end

---@param Tag FGameplayTag
---@param CustomMovementCls UCustomMovementBase
---@param SkillID number
---@return boolean
function UCustomMovementManager:RegisterCustomMovementByTag(Tag, CustomMovementCls, SkillID) end

---@param Tag FGameplayTag
function UCustomMovementManager:UnRegisterCustomMovementByTag(Tag) end

---@param FlyingMode ECustomFlyingMoveMode
---@return ECustomMovmentMode
function UCustomMovementManager:GetCustomMovementModeByFlyingMode(FlyingMode) end

---@return number
function UCustomMovementManager:GetFreeSkillMovementMode() end

function UCustomMovementManager:OnRep_CustomMovementOnwerRepData() end

function UCustomMovementManager:OnRep_CustomMovementSimulateRepData() end

function UCustomMovementManager:OnRep_GamePlayTagCustomMovementModePair() end

---@param InRepData FCurveRootMotionRepData
function UCustomMovementManager:OnRep_CustomCurveRootMotionData(InRepData) end
