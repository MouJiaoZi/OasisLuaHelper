---@meta

---@class UTopTipWidget: UUAEUserWidget
---@field bDoUseSingleInstance boolean
---@field WidgetAnimations ULuaArrayHelper<UWidgetAnimation>
local UTopTipWidget = {}

function UTopTipWidget:BPInitWhenSpawned() end

---@param data FAdvancedTipConfig
function UTopTipWidget:BPDoActionsWhenNewTipBegin(data) end

---@param data FPopUpWindowConfig
function UTopTipWidget:BPDoActionsWhenNewPopUpWindowBegin(data) end

function UTopTipWidget:BPDoActionsWhenNewTipEnd() end

function UTopTipWidget:Reset() end

function UTopTipWidget:RegisterWidgetAnimations() end
