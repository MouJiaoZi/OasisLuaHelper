---@meta

---@class EPlaneType
---@field BigPlane number
---@field WingPlane number
EPlaneType = {}


---队友乘坐飞机时候显示的UI 在大飞机上UI显示在屏幕正中央，在僚机上UI显示在僚机上方
---@class UTeammateInPlaneWidget: UUAEUserWidget, FPositionWidget
---@field BigPlaneScreenOffset FVector2D
---@field WingPlaneScreenOffset FVector2D
---@field HideDynamicPawnState FGameplayTag
---@field PassagerTeamIDList ULuaArrayHelper<number>
---@field PlaneType EPlaneType
local UTeammateInPlaneWidget = {}

function UTeammateInPlaneWidget:ActivateWidget() end

function UTeammateInPlaneWidget:UpdateWidgetPosition() end

---@param State FGameplayTag
function UTeammateInPlaneWidget:OnLocalPawnDynamicStateEnter(State) end

---@param State FGameplayTag
function UTeammateInPlaneWidget:OnLocalPawnDynamicStateLeave(State) end

function UTeammateInPlaneWidget:UpdatePassager() end

function UTeammateInPlaneWidget:TickWidget() end

function UTeammateInPlaneWidget:Init() end

---@return boolean
function UTeammateInPlaneWidget:IsWidgetShouldBeVisible() end
