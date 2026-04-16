---@meta

---@class ULostTombPESkillWidget: UPESkillWidget
---@field IsCasting boolean
---@field NeedCancelBtn boolean
---@field NowCastingTime number
---@field CastingDuration number
local ULostTombPESkillWidget = {}

---@param Skill UPersistEffectSkill
function ULostTombPESkillWidget:SetCurrentSkill(Skill) end

---@param _NeedCastingProgress boolean
---@param _NeedCancelBtn boolean
---@param _CastingDuration number
function ULostTombPESkillWidget:InitCDTimerTypeBtn(_NeedCastingProgress, _NeedCancelBtn, _CastingDuration) end

---@param _NeedCastingProgress boolean
---@param _NeedCancelBtn boolean
---@param _CastingDuration number
function ULostTombPESkillWidget:InitCDTimerTypeBtnInternal(_NeedCastingProgress, _NeedCancelBtn, _CastingDuration) end

---@param _CancelBtnPanel UCanvasPanel
---@param _CastingProgressImage UImage
---@param _CastingProgressPanel UCanvasPanel
function ULostTombPESkillWidget:InitCastingProgress(_CancelBtnPanel, _CastingProgressImage, _CastingProgressPanel) end

---@param _CancelBtnPanel UCanvasPanel
---@param _CastingProgressImage UImage
---@param _CastingProgressPanel UCanvasPanel
function ULostTombPESkillWidget:InitCastingProgressInternal(_CancelBtnPanel, _CastingProgressImage, _CastingProgressPanel) end

---@param Casting boolean
function ULostTombPESkillWidget:SetSkillCasting(Casting) end

---@param Casting boolean
function ULostTombPESkillWidget:SetSkillCasting_Lua(Casting) end
