---@meta

---@class UOBModePositionWidget: UUAEUserWidget
---@field CachedPlayerInfo FPlayerInfoInOB
---@field Limit FVector4
---@field heightPlus number
---@field rightPlus number
---@field UIOffset FVector2D
---@field LocOffset FVector
---@field CachedHealth number
---@field CachedBreathPercent number
---@field TargetDistance number
---@field MagnificationCoefficient number
---@field MaxDelayDisapearTime number
---@field bIsDead boolean
---@field bUseWeseeStyle boolean
---@field RelationshipWithRecordTarget ERelationshipWithTarget
---@field DeathBoxUI UUserWidget
---@field NativeWidgetID number
---@field bForceRefresh boolean
---@field isUsingDynamicZOrder boolean
local UOBModePositionWidget = {}

---@param controller ASTExtraPlayerController
---@param idx number
function UOBModePositionWidget:SetPlayerCharacter(controller, idx) end

---@param hpRatio number
---@param breathRatio number
---@param isNearDeath boolean
function UOBModePositionWidget:RefreshPlayerHealth(hpRatio, breathRatio, isNearDeath) end

---@param isNearDeath boolean
---@param rescueLastTime number
function UOBModePositionWidget:RefreshRescueState(isNearDeath, rescueLastTime) end

function UOBModePositionWidget:OnItemClicked() end

---@param distance number
---@param fovDistance number
function UOBModePositionWidget:RefreshDistance(distance, fovDistance) end

---@param RelationshipWithTarget ERelationshipWithTarget
function UOBModePositionWidget:ReceiveUseWeseeStyle(RelationshipWithTarget) end

---@param PlayerInfo FPlayerInfoInOB
function UOBModePositionWidget:RefreshTrainingWidget(PlayerInfo) end

function UOBModePositionWidget:OpenShowWeaponIcon() end

function UOBModePositionWidget:CloseShowWeaponIcon() end

---@param IsOpen boolean
function UOBModePositionWidget:RefreshOpenWeaponIconStatus(IsOpen) end

---@param DefineItem FItemDefineID
function UOBModePositionWidget:RefreshWeaponIconStatusDetail(DefineItem) end

---@param bHasBullet boolean
function UOBModePositionWidget:RefreshWeaponBulletStatus(bHasBullet) end

function UOBModePositionWidget:CheckOwnWeaponStatus() end

function UOBModePositionWidget:HandleWeaponChange() end

function UOBModePositionWidget:HandleCheckCurWeaponBulletChange() end

---@param InCharacter ASTExtraBaseCharacter
function UOBModePositionWidget:SetPlayerCharacterRaw(InCharacter) end

---@param Character ASTExtraBaseCharacter
function UOBModePositionWidget:OnCharacterSpawned(Character) end

---@param InPlayerState ASTExtraPlayerState
function UOBModePositionWidget:OnCharacterRepPlayerState(InPlayerState) end

function UOBModePositionWidget:OnPlayerLiveStateChanged() end

---@param bShow boolean
function UOBModePositionWidget:SetShowDeathMark(bShow) end
