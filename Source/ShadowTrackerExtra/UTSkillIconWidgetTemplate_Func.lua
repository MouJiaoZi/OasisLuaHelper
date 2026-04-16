---@meta

---技能初始化时的UI
---@class UUTSkillIconWidgetTemplate_Func: UObject
local UUTSkillIconWidgetTemplate_Func = {}

---@param widget UUTSkillIconWidgetTemplate
function UUTSkillIconWidgetTemplate_Func:Init(widget) end

function UUTSkillIconWidgetTemplate_Func:InitParams() end

function UUTSkillIconWidgetTemplate_Func:OnInitEvent() end

---@param deltaTime number
function UUTSkillIconWidgetTemplate_Func:TickEvent(deltaTime) end

---@param widgetRoot UWidget
function UUTSkillIconWidgetTemplate_Func:GetAllChildWidget(widgetRoot) end

---@param SkillIconState ESkillIconStatus
function UUTSkillIconWidgetTemplate_Func:SetSkillIcon_Cpp(SkillIconState) end
