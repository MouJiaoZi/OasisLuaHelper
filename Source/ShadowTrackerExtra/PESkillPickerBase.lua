---@meta

---@class APESkillPickerPreviewActor: AActor
local APESkillPickerPreviewActor = {}

---Picker 开始
---@param Skill UPersistEffectSkill
---@param Picker UPESkillPickerBase
function APESkillPickerPreviewActor:OnPickerStarted(Skill, Picker) end

function APESkillPickerPreviewActor:OnPickerEnded() end

---@param ValidTransform boolean
---@param Transforms ULuaArrayHelper<FTransform>
function APESkillPickerPreviewActor:OnSelectedTransformsUpdate(ValidTransform, Transforms) end

---@param Direction FVector
function APESkillPickerPreviewActor:OnSelectedDirectionUpdate(Direction) end

---@param Targets ULuaArrayHelper<AActor>
function APESkillPickerPreviewActor:OnSelectedTargetsUpdate(Targets) end


---@class UPESkillPickerBase: UObject
---@field Color FLinearColor
---@field bProgressRevers boolean
---@field IndicatorVisiable EPESkillIndicatorVisiable
---@field IndicatorType EPESkillIndicatorType
---@field CustomPickerPreviewActorClass APESkillPickerPreviewActor
---@field Progress number
---@field EmptyProgress number
local UPESkillPickerBase = {}

---@param InOwnerSkill UPersistEffectSkill
function UPESkillPickerBase:InitPicker(InOwnerSkill) end

function UPESkillPickerBase:UnInitPicker() end

function UPESkillPickerBase:ActivatePicker() end

---@param InProgress number
function UPESkillPickerBase:SetProgress(InProgress) end
