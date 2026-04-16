---@meta

---@class EConcertPlayerState
---@field Close number
---@field Init number
---@field AssetReady number
---@field Playing number
EConcertPlayerState = {}


---@class EConcertEventType
---@field None number @无
---@field ConcertStart number @演唱会开始
---@field ConcertEnd number @演唱会结束
---@field ConcertSagmentStart number @子段落开始
---@field ConcertSagmentEnd number @子段落结束
---@field PlayVideo number @播放视频
---@field StopVideo number @停止视频
---@field StartCLSequence number @开始灯光
---@field StopCLSequence number @停止灯光
---@field CreateActor number @创建Actor
---@field DelActor number @删除Actor
---@field BeginBalloon number @开始气球
---@field EndBalloon number @结束气球
EConcertEventType = {}


---@class EConcertActivityType
---@field None number
EConcertActivityType = {}


---@class FConcertSequenceEventData
---@field ActivityType EConcertActivityType
---@field EventType EConcertEventType
---@field EventTypeName string
---@field EventIntType number
---@field DataIndex number
---@field TriggerTime number
---@field EventTime number
---@field DataStr string
FConcertSequenceEventData = {}


---@class FConcertLevelSoftConfig
---@field IsLoop boolean
---@field LoopCount number
---@field DelayStart number
---@field LevelSequence ULevelSequence
---@field LevelSequenceDS ULevelSequence
---@field bEnableActivity boolean
---@field bSpawnActorAttachToPlayer boolean
---@field bDestroySpawnActorOnFinish boolean
---@field PlayRate number
FConcertLevelSoftConfig = {}


---@class FConcertLevelHardConfig
---@field IsLoop boolean
---@field LoopCount number
---@field DelayStart number
---@field CurrentSoftIndex number
---@field PlayCount number
---@field StartTime number
---@field bEnableActivity boolean
---@field bSpawnActorAttachToPlayer boolean
---@field bDestroySpawnActorOnFinish boolean
---@field PlayRate number
FConcertLevelHardConfig = {}


---@class FConcertSendSyncData
---@field SyncIndex number
---@field SequenceIndex number
---@field PlayCount number
---@field SequenceTime number
---@field SequenceData ULuaArrayHelper<FConcertSequenceEventData>
FConcertSendSyncData = {}


---@class FConcertSyncData
---@field SyncData FConcertSendSyncData
FConcertSyncData = {}


---@class IConcertActivityInterface
IConcertActivityInterface = {}

function IConcertActivityInterface:ConcertActivityStart() end

function IConcertActivityInterface:ConcertActivityEnd() end

---@param InSeconds number
function IConcertActivityInterface:ConcertActivityJump(InSeconds) end

---@param IsSyncData boolean
---@param Data FConcertSequenceEventData
function IConcertActivityInterface:TriggerActivityEvent(IsSyncData, Data) end

---@return boolean
function IConcertActivityInterface:IsActivityEnable() end

function IConcertActivityInterface:ConcertSequenceStop() end

---@return EConcertActivityType
function IConcertActivityInterface:GetActivityType() end
