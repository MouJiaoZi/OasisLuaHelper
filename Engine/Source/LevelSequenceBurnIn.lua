---@meta

---Base class for level sequence burn ins
---@class ULevelSequenceBurnIn: UUserWidget
---@field FrameInformation FLevelSequencePlayerSnapshot @Snapshot of frame information.
local ULevelSequenceBurnIn = {}

---Called when this burn in is receiving its settings
---@param InSettings UObject
function ULevelSequenceBurnIn:SetSettings(InSettings) end

---Get the settings class to use for this burn in
function ULevelSequenceBurnIn:GetSettingsClass() end
