---@meta

---@class UTeammatePositionWidget: UUAEUserWidget
---@field InAir boolean
---@field Limit FVector4
---@field heightPlus number
---@field rightPlus number
---@field UIOffset FVector2D
---@field LocOffset FVector
---@field DeadLocOffset FVector
---@field OnPlaneUIOffset FVector2D
---@field DeadAlpha number
---@field DeadMournSec number
---@field AlphaBegin number
---@field AlphaEnd number
---@field AlphaStep number
---@field AlphaBeginDistance number
---@field AlphaEndDistance number
---@field ScaleBegin number
---@field ScaleEnd number
---@field ScaleStep number
---@field ScaleBeginDistance number
---@field ScaleEndDistance number
---@field MaxShowDistance number
---@field TargetDistance number
---@field UseLerpScale boolean
---@field MinReferenceDistance number
---@field MaxReferenceDistance number
---@field LerpFromScale number
---@field LerpToScale number
local UTeammatePositionWidget = {}

---@param Visible boolean
function UTeammatePositionWidget:SetCurrentWidgetVisible(Visible) end

---@param SPS ASTExtraPlayerState
function UTeammatePositionWidget:SetSavedPlayerState(SPS) end

---@return boolean
function UTeammatePositionWidget:IsPlayerInRevival() end

---@param InRevivalState boolean
---@param IsIDCapPick boolean
function UTeammatePositionWidget:UpdatePlayerRevivalState(InRevivalState, IsIDCapPick) end

---@param RemainingRevivalTime number
---@param MaxRevivalTime number
function UTeammatePositionWidget:UpdatePlayerRevivalTime(RemainingRevivalTime, MaxRevivalTime) end

---@param InRevivalState boolean
---@param IsIDCapPick boolean
---@param PlayAniAndSound boolean
function UTeammatePositionWidget:OnPlayerRevivalStateChanged(InRevivalState, IsIDCapPick, PlayAniAndSound) end

---@param RemainingRevivalTime number
---@param MaxRevivalTime number
function UTeammatePositionWidget:OnPlayerRevivalTimeChanged(RemainingRevivalTime, MaxRevivalTime) end

---@param State ExtraPlayerLiveState
---@param OwnerCharacter ACharacter
function UTeammatePositionWidget:OnPlayerLiveStateChanged(State, OwnerCharacter) end
