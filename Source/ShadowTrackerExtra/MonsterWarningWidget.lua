---@meta

---@class UMonsterWarningWidget: UUAEUserWidget
---@field MaxWidgetNum number
---@field MaxWarningDistance number
---@field InvisibleAngle number
---@field VisibleAngle number
---@field NewbieTriggerAlpha number
---@field NewbieGuideStep number
---@field ZUpDistance number @检测玩家上下Z轴范围内的
---@field ZDownDistance number
---@field GridRange number
---@field WarningCanvasPanelArr ULuaArrayHelper<UCanvasPanel>
---@field CachedNearMonsterArr ULuaArrayHelper<UObject> @缓存的僵尸队列
---@field CurQueryTime number @当前查询时间
---@field QueryZombieInterval number @查询间隔
---@field bWarningEnabled boolean
local UMonsterWarningWidget = {}

---@param WarningCanvasPanel UCanvasPanel
---@param AngleToForward number
---@param FinalAng number
function UMonsterWarningWidget:UpdateCanvasOpacity(WarningCanvasPanel, AngleToForward, FinalAng) end

function UMonsterWarningWidget:DisableWarning() end

function UMonsterWarningWidget:EnableWarning() end
