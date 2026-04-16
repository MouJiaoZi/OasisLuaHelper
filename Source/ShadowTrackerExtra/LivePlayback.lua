---@meta

---ÐèÒª´«Êä¸øÎ¢ÐÅ²àµÄÓÎÏ·ÄÚÊÂ¼þ
---@class FIngameStatusSynToWechat
---@field KillNum number
---@field LiveNum number
FIngameStatusSynToWechat = {}


---@class ULivePlayback: UCompletePlayback
local ULivePlayback = {}

---@param SpectatorName string
---@param bGm boolean
---@param isChangeViewTarget boolean
---@param isAutoSetName boolean
function ULivePlayback:SetSpectatorName(SpectatorName, bGm, isChangeViewTarget, isAutoSetName) end

---@param DemoName string
---@param Time number
---@return boolean
function ULivePlayback:PlayDemoWithFilename(DemoName, Time) end

---@param GameStatus string
function ULivePlayback:OnGameOver(GameStatus) end

---@return boolean
function ULivePlayback:PlayReplay() end

function ULivePlayback:OnFinishOptimizeGotoTime() end

---@param CircleReverseIndex number
function ULivePlayback:OnEnterFinalState(CircleReverseIndex) end

function ULivePlayback:OnLiveNumChanged() end

---@param KillNum number
function ULivePlayback:OnKillNumChanged(KillNum) end

---@return boolean
function ULivePlayback:IsInSpectating() end
