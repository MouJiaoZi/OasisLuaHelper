---@meta

---@class UVisualFieldComponent: UGameModeBaseComponent
---@field AIVisualFieldFeatureParam FVisualFieldFeatureParam_AI
---@field VisualFieldFeatureParam FVisualFieldFeatureParam
---@field VisualFieldServerRepInterval number
---@field VisualFieldTickTimerHandle FTimerHandle
---@field VisualFieldFrame FVisualFieldFrame
local UVisualFieldComponent = {}

---@param InTargetPlayer APlayerController
function UVisualFieldComponent:ListenPeerVisualFieldReport(InTargetPlayer) end

function UVisualFieldComponent:LuaOnRegister() end

function UVisualFieldComponent:LuaUpdatePlayersVisualMeta() end

---@param CampID number
---@param PeerVisualFieldActorList ULuaArrayHelper<AActor>
function UVisualFieldComponent:OnClientReportPeerVisualFieldActorList(CampID, PeerVisualFieldActorList) end

---@param Height number
---@return number
function UVisualFieldComponent:GetHeightVisualLayerID(Height) end
