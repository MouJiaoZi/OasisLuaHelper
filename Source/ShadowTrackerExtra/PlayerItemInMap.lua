---@meta

---@class EPlayerMoveState
---@field Default number
---@field ByFlyingVehicle number
---@field ByFloatVehicle number
---@field ByLandVehicle number
---@field OnFoot number
EPlayerMoveState = {}


---@class UPlayerItemInMap: UUAEUserWidget
---@field isBindedSelected boolean
---@field bUseWeSeeStyle boolean
---@field RelationshipWithTarget ERelationshipWithTarget
---@field PlayerMoveState EPlayerMoveState
---@field LandScapeCenterWhenInit FVector
---@field LevelToMapScaleWhenInit number
---@field bIsMiniNotEntireMap boolean
---@field MapScaleCached number
---@field CurrentWidgetPos2D FVector2D
---@field DestItemPosition2D FVector2D
---@field DestPositionWorld3D FVector
---@field CurrentPositionWorld3D FVector
---@field LerpAlpha number
---@field DataSyncCD number
---@field bDisableLerpSwitcher boolean
---@field DistanceWithoutLerp number
---@field CurRotationZ number
---@field Offset2DInMap FVector2D
---@field CheckTickCDTime number
---@field bIsCompleteReplay boolean
---@field PlayerStateInReplay ASTExtraPlayerState
---@field PlayerControllerInReplay ASTExtraPlayerController
---@field bIsSingular boolean
---@field bIsEagleWatch boolean
---@field bIsCurrentViewer boolean
local UPlayerItemInMap = {}

---@param InDeltaTime number
function UPlayerItemInMap:Tick_Internal(InDeltaTime) end

---@param inLandScapeCenter FVector
---@param inLevelToMapScale number
---@param isMiniNotEntireMap boolean
---@param isBuildWinOB boolean
function UPlayerItemInMap:InitByMapData(inLandScapeCenter, inLevelToMapScale, isMiniNotEntireMap, isBuildWinOB) end

function UPlayerItemInMap:ResetToDefaultData() end

---@param inLoc3D FVector
---@param inMapScale number
---@param bForceUpdatePos boolean
function UPlayerItemInMap:UpdateItemByWorldLocation(inLoc3D, inMapScale, bForceUpdatePos) end

---@param inPawn APawn
---@param inMapScale number
---@param bForceUpdatePos boolean
function UPlayerItemInMap:UpdateItemByPlayerPawn(inPawn, inMapScale, bForceUpdatePos) end

---@param inLoc3D FVector
---@param inMapScale number
---@param bForceUpdatePos boolean
function UPlayerItemInMap:SetWidgetPostionInMap(inLoc3D, inMapScale, bForceUpdatePos) end

---@param inRotationZ number
---@param bIsShow boolean
function UPlayerItemInMap:SetWidgetAngleInMap(inRotationZ, bIsShow) end

function UPlayerItemInMap:OnInitWidgetBp() end

---@param PlayerInfo FPlayerInfoInOB
---@param isSingle boolean
---@param isObing boolean
---@param isShowName boolean
function UPlayerItemInMap:ShowDataBp(PlayerInfo, isSingle, isObing, isShowName) end

---@param isFull boolean
function UPlayerItemInMap:ShowNameBp(isFull) end

---@param isEagleWatch boolean
function UPlayerItemInMap:RefreshEagleWatchStyle(isEagleWatch) end

---@param isSingleTeam boolean
function UPlayerItemInMap:SetupWidgetOffset(isSingleTeam) end

---@param inPlayerState ASTExtraPlayerState
---@param isReset boolean
function UPlayerItemInMap:ShowDataForReplay(inPlayerState, isReset) end

---@param Character APawn
function UPlayerItemInMap:SetTargetCharater(Character) end

function UPlayerItemInMap:UpdateDestLocation() end

---@param inPlayerState ASTExtraPlayerState
---@param CurPlayerState ASTExtraPlayerState
---@param OutName string
function UPlayerItemInMap:GetTeammateName(inPlayerState, CurPlayerState, OutName) end

function UPlayerItemInMap:OnMapChanged() end

---@param bUseStyle boolean
function UPlayerItemInMap:ReceiveUseWeSeeStyle(bUseStyle) end

---@param MapWidget UMapWidgetBase
function UPlayerItemInMap:SetParentMapWidget(MapWidget) end

function UPlayerItemInMap:MarkNoTickForLerp() end
