---@meta

---@class UGenericCharacterPositionWidget: UObjectPositionWidget
---@field bBindHPChange boolean
---@field bBindNameChange boolean
---@field LocOffset FVector
---@field bDeadHide boolean
---@field DeadLocOffset FVector
---@field BeHitShowDuration number
---@field bUseHelmetSocket boolean
---@field HelmetSocketName string
---@field HelmetSocketOffset FVector
---@field OcclusionSocketName string
---@field bOcclusionPostEvent boolean
---@field IsCurActorOcclusion boolean
---@field OnHPChangeDelegate FOnAttrValueChangedDynamicDelegate
local UGenericCharacterPositionWidget = {}

---@param AttrName string
---@param InNewValue number
function UGenericCharacterPositionWidget:OnCharacterHPChange(AttrName, InNewValue) end

---@param Name string
function UGenericCharacterPositionWidget:OnCharacterNameChange(Name) end

---@param InHPCurrent number
---@param InHPMax number
function UGenericCharacterPositionWidget:BP_CharacterHPChange(InHPCurrent, InHPMax) end

---@param Name string
function UGenericCharacterPositionWidget:BP_CharacterNameChange(Name) end

---@param bBlockState boolean
function UGenericCharacterPositionWidget:Event_ActorOcclusionChangeUIState(bBlockState) end
