---@meta

---@class AConcertPlayerActor: AActor
---@field bSetupObStart boolean
---@field timehandle FTimerHandle
local AConcertPlayerActor = {}

function AConcertPlayerActor:OnReconnected() end

---@param IsActive boolean
function AConcertPlayerActor:OnApplicationactivated(IsActive) end

function AConcertPlayerActor:RequestSync() end

---@param InRequestPlayer ASTExtraPlayerController
function AConcertPlayerActor:SendSync(InRequestPlayer) end

---@param InSyncData FConcertSendSyncData
function AConcertPlayerActor:ClientRequestSync(InSyncData) end

---@param InActivity EConcertActivityType
---@param InEventType EConcertEventType
---@param InParamValue number
---@param InParamStr string
function AConcertPlayerActor:ReceiveSequenceEvent(InActivity, InEventType, InParamValue, InParamStr) end

---@param InActivity EConcertActivityType
---@param InEventType EConcertEventType
---@param InParamValue number
---@param InParamStr string
function AConcertPlayerActor:SequenceEvent(InActivity, InEventType, InParamValue, InParamStr) end

---@param InEventType string
---@param InParamValue number
---@param InParamStr string
function AConcertPlayerActor:ReceiveSequenceEventName(InEventType, InParamValue, InParamStr) end

---@param InEventType string
---@param InParamValue number
---@param InParamStr string
function AConcertPlayerActor:SequenceEventName(InEventType, InParamValue, InParamStr) end

---@param InEventType number
---@param InParamValue number
---@param InParamStr string
---@param InEventTime number
function AConcertPlayerActor:ReceiveSequenceEventType(InEventType, InParamValue, InParamStr, InEventTime) end

---@param InIndex number
function AConcertPlayerActor:PlaySequence(InIndex) end

---@param NetPlayAgain boolean
function AConcertPlayerActor:StopSequence(NetPlayAgain) end

---@param InPos number
function AConcertPlayerActor:JumpToPos(InPos) end

function AConcertPlayerActor:BindApplicationactivated() end

function AConcertPlayerActor:OnDelayRequest() end
