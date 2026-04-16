---@meta

---@class UUGCCharacterPositionWidget: UObjectPositionWidget
---@field bBindHPChange boolean
---@field bBindNameChange boolean
---@field bUseHelmetSocket boolean
---@field bDeadHide boolean
---@field DeadLocOffset FVector
---@field HelmetSocketOffset number
---@field BeHitShowDuration number
---@field HelmetSocketName string
---@field OcclusionSocketName string
---@field OnHPChangeDelegate FOnAttrValueChangedDynamicDelegate
local UUGCCharacterPositionWidget = {}

---@param AttrName string
---@param InHPCurrent number
function UUGCCharacterPositionWidget:OnMobCharacterHPChange(AttrName, InHPCurrent) end

---@param Name string
function UUGCCharacterPositionWidget:OnMobCharacterNameChange(Name) end

---@param InHPCurrent number
---@param InHPMax number
function UUGCCharacterPositionWidget:Event_MobCharacterHPChange(InHPCurrent, InHPMax) end

---@param MobName string
function UUGCCharacterPositionWidget:Event_MobCharacterNameChange(MobName) end

function UUGCCharacterPositionWidget:OnMobCharacterPostNetInit() end

function UUGCCharacterPositionWidget:Event_OnMobCharacterPostNetInit() end
