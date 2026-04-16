---@meta

---@class UPlayerStatePositionWidget: UObjectPositionWidget
---@field IsOffsetConsiderScaleZ boolean
---@field HelmetSocketName string
---@field OcclusionSocketName string
---@field BNeedShowSelfOnPanel boolean
---@field BUseHelmetSocket boolean
---@field DeadLocOffset FVector
---@field HelmetSocketOffset number
---@field DeadHideTime number
---@field MaxShowDistance number
---@field MaxAlpha number
---@field MinAlpha number
---@field UIOffset FVector2D
---@field bNeedUpdatePosWhenDead boolean
---@field bRotateDistTextOnEdgeSnap boolean
---@field DistTextRotateOffset number
local UPlayerStatePositionWidget = {}

function UPlayerStatePositionWidget:UpdatePlayerInfo() end

---@param InIndexID number
---@param InPlayerName string
function UPlayerStatePositionWidget:UpdatePlayerInfo_BP(InIndexID, InPlayerName) end

---@param InRevivalState boolean
---@param IsIDCapPick boolean
function UPlayerStatePositionWidget:UpdatePlayerRevivalState(InRevivalState, IsIDCapPick) end

---@param RemainingRevivalTime number
---@param MaxRevivalTime number
function UPlayerStatePositionWidget:UpdatePlayerRevivalTime(RemainingRevivalTime, MaxRevivalTime) end

---@param InRevivalState boolean
---@param IsIDCapPick boolean
---@param PlayAniAndSound boolean
function UPlayerStatePositionWidget:OnPlayerRevivalStateChanged(InRevivalState, IsIDCapPick, PlayAniAndSound) end

---@param RemainingRevivalTime number
---@param MaxRevivalTime number
function UPlayerStatePositionWidget:OnPlayerRevivalTimeChanged(RemainingRevivalTime, MaxRevivalTime) end

function UPlayerStatePositionWidget:OnTeamIDChange() end

function UPlayerStatePositionWidget:Event_TeamIDChange() end

function UPlayerStatePositionWidget:OnViewTargetChange() end

---@param InController AUAEPlayerController
function UPlayerStatePositionWidget:OnPlayerControllerRespawn(InController) end

function UPlayerStatePositionWidget:Event_ViewTargetChange() end

---@param isEagleWatch boolean
function UPlayerStatePositionWidget:OnRepEagleWatch(isEagleWatch) end

---@param NewAlpha number
function UPlayerStatePositionWidget:OnWidgetAlphaChange(NewAlpha) end

---@return boolean
function UPlayerStatePositionWidget:GetTeamMateNameTextIsVisibility() end

---@param TmpMinScaleDis number
---@param TmpMaxScaleDis number
---@param TmpLerpFromScale number
---@param TmpLerpToScale number
function UPlayerStatePositionWidget:SetPCVerItemScale(TmpMinScaleDis, TmpMaxScaleDis, TmpLerpFromScale, TmpLerpToScale) end

---@return number
function UPlayerStatePositionWidget:GetEdgeSnapDirection() end

function UPlayerStatePositionWidget:SetIconInPlaneVisible() end
