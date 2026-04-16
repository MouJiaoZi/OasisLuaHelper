---@meta

---@class UWidgetCollapseManagerComp: UActorComponent
local UWidgetCollapseManagerComp = {}

---@return boolean
function UWidgetCollapseManagerComp:HasWidgetToBeCollpased() end

---@param TagName string
---@return boolean
function UWidgetCollapseManagerComp:HasWidgetToBeCollapsedWithTag(TagName) end

---@return boolean
function UWidgetCollapseManagerComp:CollapseHighestPriorityWidget() end

function UWidgetCollapseManagerComp:CollapseAllWidgets() end

---@param Info FWidgetCollapseInfo
function UWidgetCollapseManagerComp:AddWidgetCollapseInfo(Info) end

---@param Info FWidgetCollapseInfo
function UWidgetCollapseManagerComp:RemoveWidgetCollapseInfo(Info) end

---@param OldVisibility ESlateVisibility
---@param NewVisibility ESlateVisibility
---@param Widget UWidget
function UWidgetCollapseManagerComp:HandleVisibilityChanged(OldVisibility, NewVisibility, Widget) end

function UWidgetCollapseManagerComp:InitCollapseHeap() end

function UWidgetCollapseManagerComp:PrintWidgetCollapseInfo() end
