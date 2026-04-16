---@meta

---@class UCustomActorIndicatorWidget: UUAEUserWidget
---@field IsFixLocation boolean
---@field IsUseCameraLocation boolean
---@field IsEnableDistanceCheck boolean
---@field Limit FVector4
---@field UIOffset FVector2D
---@field LocOffset FVector
---@field MarkUIOffset FVector2D
---@field MarkLocOffset FVector
---@field ScaleBegin number
---@field ScaleEnd number
---@field ScaleStep number
---@field ScaleBeginDistance number
---@field ScaleEndDistance number
---@field MaxShowDistance number
---@field UpdateDistanceTolerance number
---@field TargetDistance number
---@field LastPlayerLocation FVector
---@field LastPlayerRotation FRotator
---@field LastActorLocation FVector
---@field LastWidgetPosition FVector2D
---@field STExtraPlayerController ASTExtraPlayerController
local UCustomActorIndicatorWidget = {}

function UCustomActorIndicatorWidget:UpdateAll() end

function UCustomActorIndicatorWidget:OnWidgetCreated() end

function UCustomActorIndicatorWidget:OnWidgetDestroyed() end

---@param IsVisible boolean
function UCustomActorIndicatorWidget:OnSwitchWidgetVisibility(IsVisible) end

---@param PlayerInfo FPlayerDetailInfo
---@param ItemIndex number
function UCustomActorIndicatorWidget:OnRefreshCharmPlayerInfo(PlayerInfo, ItemIndex) end

---@param PlayerInfo FTeamAssembleAvatarDisplayInfo
---@param ItemIndex number
function UCustomActorIndicatorWidget:OnRefreshTeamAssemblePlayerInfo(PlayerInfo, ItemIndex) end

---@param Loc FVector
function UCustomActorIndicatorWidget:UpdateTargetActorLocation(Loc) end

---@param bEnable boolean
function UCustomActorIndicatorWidget:EnableUpdateLocation(bEnable) end
