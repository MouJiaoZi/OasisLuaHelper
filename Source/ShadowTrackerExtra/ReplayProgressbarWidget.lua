---@meta

---@class FReplayKillOrHitdownInfoUIModel
---@field Attacker string
---@field Victim string
---@field AttackerUID string
---@field VictimUID string
---@field isKill boolean
---@field KillTime number
---@field KilledByPoison boolean
FReplayKillOrHitdownInfoUIModel = {}


---@class UReplayProgressbarWidget: UUAEUserWidget
---@field bPressedReplayFastForwardButton boolean
---@field bPressedReplayRewindButton boolean
---@field MouseIsHoveredOnProgressEventItem boolean
---@field KillOrHitdownInfoUIModels ULuaArrayHelper<FReplayKillOrHitdownInfoUIModel>
---@field NextChunkKillOrHitdownInfoUIModels ULuaArrayHelper<FReplayKillOrHitdownInfoUIModel>
local UReplayProgressbarWidget = {}

function UReplayProgressbarWidget:ShowReplayEventListUI() end

function UReplayProgressbarWidget:ShowReplayProgressUI() end

function UReplayProgressbarWidget:OnReplayFinishPlay() end

---@param hasData boolean
---@param IsHadData boolean
function UReplayProgressbarWidget:RefreshKillorHitDownUIData(hasData, IsHadData) end

function UReplayProgressbarWidget:UpdateKillorHitDownUIData() end

function UReplayProgressbarWidget:OnWidgetInitialize() end

function UReplayProgressbarWidget:OnResetViewTarget_BP() end

function UReplayProgressbarWidget:RefreshUIInfoOnAttachCameraViewFinished() end

function UReplayProgressbarWidget:OnEnterFreeView() end

function UReplayProgressbarWidget:OnLeaveFreeView() end

---@param InDilation number
function UReplayProgressbarWidget:OnChangeInDilation(InDilation) end

function UReplayProgressbarWidget:ShowReConnetionLoadingUI() end

function UReplayProgressbarWidget:HideReConnetionLoadingUI() end

function UReplayProgressbarWidget:OnReleasedReplayFastForwardButton() end

function UReplayProgressbarWidget:OnReleasedReplayRewindButton() end

function UReplayProgressbarWidget:OnPressedReplayFastForwardButton() end

function UReplayProgressbarWidget:OnPressedReplayRewindButton() end

function UReplayProgressbarWidget:OnReleasedReplayPauseButton() end

function UReplayProgressbarWidget:OnPressedEnterButtonEvent() end
