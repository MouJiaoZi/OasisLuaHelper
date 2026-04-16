---@meta

---@class UPlayerSimpleCharacterPositionWidget: UObjectPositionWidget
---@field BHideInPlane boolean
---@field BBindHPChange boolean
---@field BUseHelmetSocket boolean
---@field BDeadHide boolean
---@field DeadLocOffset FVector
---@field HelmetSocketOffset number
---@field BeHitShowDuration number
---@field HelmetSocketName string
---@field OcclusionSocketName string
local UPlayerSimpleCharacterPositionWidget = {}

---@param InHPCurrent number
---@param InHPMax number
function UPlayerSimpleCharacterPositionWidget:OnPlayerCharacterHPChange(InHPCurrent, InHPMax) end

---@param InHPCurrent number
---@param InHPMax number
---@param PrevHP number
function UPlayerSimpleCharacterPositionWidget:OnBaseCharacterHPChange(InHPCurrent, InHPMax, PrevHP) end

---@param InHPCurrent number
---@param InHPMax number
function UPlayerSimpleCharacterPositionWidget:Event_PlayerCharacterHPChange(InHPCurrent, InHPMax) end

function UPlayerSimpleCharacterPositionWidget:OnCharacterPostNetInit() end

function UPlayerSimpleCharacterPositionWidget:Event_OnCharacterPostNetInit() end
