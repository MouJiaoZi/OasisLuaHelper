---@meta

---@class UActivityUIWidget: UUAEUserWidget
---@field bShowInPCVer boolean
---@field bShowInPrecise boolean
---@field OwingActor UObject
---@field UIIndex number
local UActivityUIWidget = {}

---@param Actor UObject
---@param InUIIndex number
function UActivityUIWidget:Init(Actor, InUIIndex) end

function UActivityUIWidget:Exit() end

---@param Actor UObject
---@param InUIIndex number
function UActivityUIWidget:Init_BP(Actor, InUIIndex) end

function UActivityUIWidget:Exit_BP() end

function UActivityUIWidget:RefreshHiddenByPCConfig() end

---@param NewInteractionMode EPCInteractionMode
function UActivityUIWidget:OnSwitchPreciseInteraction(NewInteractionMode) end
