---@meta

---@class FFilebasedPlaybackKillorHitDownEventRecordInfo
FFilebasedPlaybackKillorHitDownEventRecordInfo = {}


---@class FFileBasedPlaybackRevivalEventRecordInfo
FFileBasedPlaybackRevivalEventRecordInfo = {}


---@class FFilebasedPlaybackKillorHitDownEventReadInfo
---@field Attacker string
---@field Victim string
---@field AttackerUID string
---@field VictimUID string
---@field isKill boolean
---@field KillTime number
---@field KillTimeStampGameTime number
---@field KilledByPoison boolean
FFilebasedPlaybackKillorHitDownEventReadInfo = {}


---@class FFilebasedPlaybackRevivalEventReadInfo
---@field RevivedPlayer string
---@field RevivedPlayerUID string
---@field RevivalTime number
---@field RevivalTimeStampGameTime number
FFilebasedPlaybackRevivalEventReadInfo = {}


---@class FAntiCheatStrategyRecordData
FAntiCheatStrategyRecordData = {}


---@class FAntiCheatStrategyData
FAntiCheatStrategyData = {}


---@class FReplayExtraInfo
---@field UIDList ULuaArrayHelper<number>
FReplayExtraInfo = {}


---@class FReplayFileHeader
---@field ReplayFileFormatRevision number
---@field ReplayName string
---@field ReplayVersion string
---@field DateTime number
---@field StartTime number
---@field TotalTime number
---@field RoomName string
---@field GameModeId number
---@field SubModeId number
---@field MapId number
---@field PlayerNum number
---@field CustomGameModeId number
---@field FullDataStartTime number
---@field ExtraInfo FReplayExtraInfo
---@field bIsClientReplay boolean
---@field TargetUID number @Only in client replay Start
---@field GameID number
---@field ModeType EGameModeType
---@field ResultBinaryData ULuaArrayHelper<number>
FReplayFileHeader = {}


---@class FReplayFileItem
---@field HeaderInfo FReplayFileHeader
---@field FullPath string
---@field FileSize number
FReplayFileItem = {}


---@class FReplayDemoRecInfo
---@field DemoTotalTime number
---@field CurCheckpointIndex number
---@field bIsCheckpointCorrect boolean
FReplayDemoRecInfo = {}


---@class FOnDownloadCompleteDelegate : ULuaSingleDelegate
FOnDownloadCompleteDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, bSucceeded: boolean, SourceUrl: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDownloadCompleteDelegate:Bind(Callback, Obj) end

---执行委托
---@param bSucceeded boolean
---@param SourceUrl string
function FOnDownloadCompleteDelegate:Execute(bSucceeded, SourceUrl) end


---@class UFilebasedPlayback: UGameReplay
---@field MaxHoursForKeepingFiles number
---@field ReplayHeaderInfo FReplayFileHeader
local UFilebasedPlayback = {}

---@param bSkipConditionCheck boolean
---@param RecordCondition EPBRecordCond
---@return boolean
function UFilebasedPlayback:StartRecordingReplay(bSkipConditionCheck, RecordCondition) end

---@param Feature number
---@return boolean
function UFilebasedPlayback:StopRecordingReplay(Feature) end

---@param DemoName string
---@param Time number
---@return boolean
function UFilebasedPlayback:PlayDemoWithFilename(DemoName, Time) end

---@return boolean
function UFilebasedPlayback:PlayReplay() end

---@return boolean
function UFilebasedPlayback:StopPlay() end

---@return string
function UFilebasedPlayback:GetFileCacheDir() end

---@param InReplayName string
---@return string
function UFilebasedPlayback:ReplayNameToFullPath(InReplayName) end

---@param InReplayName string
---@return FReplayFileHeader
function UFilebasedPlayback:GetReplayFileHeaderInfoByReplayName(InReplayName) end

---@param InSourceFile string
---@return FReplayFileHeader
function UFilebasedPlayback:GetReplayFileHeaderInfo(InSourceFile) end

---@param Dir string
---@param FileInfoList ULuaArrayHelper<FReplayFileItem>
function UFilebasedPlayback:GetDirFileInfoList(Dir, FileInfoList) end

---@param OutFileInfos ULuaArrayHelper<FReplayFileItem>
---@return boolean
function UFilebasedPlayback:EnumerateReplayFiles(OutFileInfos) end

---@param FileFullPath string
---@return boolean
function UFilebasedPlayback:DeleteReplayFile(FileFullPath) end

---@param PlayerUID string
---@return boolean
function UFilebasedPlayback:IsPlayerExist(PlayerUID) end

---@param OutReplayFullName string
function UFilebasedPlayback:GetReplayPathFromBrowser(OutReplayFullName) end

---@return string
function UFilebasedPlayback:GetRemoteStorageDir() end

---UploadReplayFile FileFullPath, replay file path Sponsor, upload triggered from (0: ob, 1: weishi) BattleID
---@param FileFullPath string
---@param Sponsor number
---@param BattleID string
function UFilebasedPlayback:UploadReplayFile(FileFullPath, Sponsor, BattleID) end

---@param InUrl string
---@param Delegate FOnDownloadCompleteDelegate
function UFilebasedPlayback:DownloadReplayFile(InUrl, Delegate) end
