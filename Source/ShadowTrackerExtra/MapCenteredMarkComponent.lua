---@meta

---@class UMapCenteredMarkComponent: UActorComponent
---@field TargetPointWidgetPath string
---@field NewMoveAdjustValue number
---@field CircleMiniMapRadius number
---@field bAdjustMiniMapScale boolean
---@field MiniMapScale number
---@field bLerpToTargetPoint boolean
---@field LerpToTargetPointSpeed number
---@field LerpToTargetPointTolerance number
---@field CacheTargetLoc FVector
---@field LastMiniMapLayout FAnchorData
---@field LastMoveAdjustValue number
---@field bMoveAdjustValueModified boolean
---@field bMiniMapAdjusted boolean
---@field bCenterMiniMapAtTargetPoint boolean
local UMapCenteredMarkComponent = {}

---@param Location FVector
function UMapCenteredMarkComponent:ShowMiniMapCenteredMark(Location) end

---@param Location FVector
function UMapCenteredMarkComponent:SetTargetPointLoc(Location) end

function UMapCenteredMarkComponent:HideMinimapCenteredMark() end

function UMapCenteredMarkComponent:AdjustMiniMapLayout() end

function UMapCenteredMarkComponent:RestoreMiniMapLayout() end

---@param MiniMap UUserWidget
function UMapCenteredMarkComponent:AdjustMiniMapScale(MiniMap) end

---@param MiniMap UUserWidget
function UMapCenteredMarkComponent:RestoreMiniMapScale(MiniMap) end

---@param Location FVector
function UMapCenteredMarkComponent:AdjustMiniMapForTargeting(Location) end

function UMapCenteredMarkComponent:RestoreMiniMapFromTargeting() end

---@param bEnable boolean
function UMapCenteredMarkComponent:EnableCenteredMiniMap(bEnable) end

---@param Location FVector
function UMapCenteredMarkComponent:InitMiniMapTargetPoint(Location) end

---@param bRotate boolean
function UMapCenteredMarkComponent:SetRotateMiniMap(bRotate) end
