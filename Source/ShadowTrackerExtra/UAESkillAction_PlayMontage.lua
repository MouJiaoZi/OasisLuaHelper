---@meta

---@class FSAPlayMontageInstanceStruct
FSAPlayMontageInstanceStruct = {}


---@class UUAESkillAction_PlayMontage: USTExtraBuffAction
---@field bFemaleUseDifferentAnim boolean
---@field StopPrevMontage number
---@field bResetStopAnim number
---@field bUndoStopAnim number
---@field bOnlySimulation number
---@field StartPosition number
---@field StartSectionName string
---@field OnlyChangeNextSection boolean
---@field SectionNameToChange string
---@field NextSectionName string
---@field AnimCacheList ULuaArrayHelper<UAnimMontage>
local UUAESkillAction_PlayMontage = {}
