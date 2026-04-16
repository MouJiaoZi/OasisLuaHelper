---@meta

---@class UAddonSkillUITemplate: UUTSkillIconWidgetTemplate
---@field HasProgressBar boolean
local UAddonSkillUITemplate = {}

---@param SkillIndex number
---@param bActive boolean
function UAddonSkillUITemplate:OnAddonSkillActive(SkillIndex, bActive) end

---@param SkillIndex number
function UAddonSkillUITemplate:OnAddonSkillStart(SkillIndex) end

---@param SkillIndex number
---@param StopReason UTSkillStopReason
function UAddonSkillUITemplate:OnAddonSkillStop(SkillIndex, StopReason) end

function UAddonSkillUITemplate:LuaOnSkillStart() end

function UAddonSkillUITemplate:LuaOnSkillStop() end
