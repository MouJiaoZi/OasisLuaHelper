---@meta

---@class FPeaceMemoryReplayInfo
---@field CustomText string
---@field RecordTimes number
---@field ReplayType EPeaceMemorySubType
---@field OwnerUID number
---@field RecordPosition FVector
---@field CurrentID number
---@field AvatarList ULuaArrayHelper<number>
---@field RecordName string
---@field LikeNum number
FPeaceMemoryReplayInfo = {}


---@class FPeaceMemoryTempInfo
---@field WaitPC ASTExtraPlayerController
---@field CustomText string
---@field RecordTimes number
---@field totalTime number
---@field ReplayType number
---@field RecordPosition FVector
---@field RecordUIDs ULuaArrayHelper<number>
---@field AvatarList ULuaArrayHelper<number>
FPeaceMemoryTempInfo = {}


---@class FPeaceMemoryEventInfo
---@field BeforeTime number
---@field AfterTime number
FPeaceMemoryEventInfo = {}


---@class UPeaceMemoryGameModeComponent: UGameModeBaseComponent, ILuaInterface
---@field CanRecordEventInfo ULuaMapHelper<EPeaceMemorySubType, FPeaceMemoryEventInfo>
---@field TipsIDs ULuaArrayHelper<number>
---@field SoftTemplateActorClass APeaceMemoryActor
---@field AllGenerateActors ULuaArrayHelper<APeaceMemoryActor>
local UPeaceMemoryGameModeComponent = {}

---@return string
function UPeaceMemoryGameModeComponent:GetLuaModule() end

---@param PC ASTExtraPlayerController
---@param InCustomText string
---@param InUniqueID number
function UPeaceMemoryGameModeComponent:ChangeDiscribeText(PC, InCustomText, InUniqueID) end

---@param InTypeID number
---@param PC ASTExtraPlayerController
---@param OtherPCUIDs ULuaArrayHelper<number>
---@param BeforeTimes number
---@param OhterPCPlayerKeys ULuaArrayHelper<number>
function UPeaceMemoryGameModeComponent:ReportEventById(InTypeID, PC, OtherPCUIDs, BeforeTimes, OhterPCPlayerKeys) end

---@param InTypeID number
---@param PC ASTExtraPlayerController
---@param OtherPCUIDs ULuaArrayHelper<number>
---@param BeforeTimes number
---@param CustomText string
---@param InPositon FVector
function UPeaceMemoryGameModeComponent:ReportClickEventWithCustomText(InTypeID, PC, OtherPCUIDs, BeforeTimes, CustomText, InPositon) end

---@param PC ASTExtraPlayerController
---@param OtherPC ASTExtraPlayerController
function UPeaceMemoryGameModeComponent:BeginStartRecord(PC, OtherPC) end

---@param InPC ASTExtraPlayerController
function UPeaceMemoryGameModeComponent:CallTeamMatesBeginStartRecordMe(InPC) end

---@param InUID number
---@param RecoredID number
---@param InState number
function UPeaceMemoryGameModeComponent:ChangeGenerateActorState(InUID, RecoredID, InState) end

---@param InUID number
---@param RecoredID number
function UPeaceMemoryGameModeComponent:AddGenerateActorGiveLike(InUID, RecoredID) end

---@param InInfos ULuaArrayHelper<FPeaceMemoryReplayInfo>
function UPeaceMemoryGameModeComponent:ReceiveShowInfosFromLobby(InInfos) end

---@param RecordTime number
---@param CustomText string
---@param InType EPeaceMemorySubType
---@param InOwnerUID number
---@param InPostion FVector
---@param CurrentID number
---@param AvatarList ULuaArrayHelper<number>
function UPeaceMemoryGameModeComponent:ServerCreateTempPeaceMemoryActor(RecordTime, CustomText, InType, InOwnerUID, InPostion, CurrentID, AvatarList) end

---@param InUID number
function UPeaceMemoryGameModeComponent:ServerRequirePeaceID(InUID) end

---@param InUID number
function UPeaceMemoryGameModeComponent:LuaServerRequirePeaceID(InUID) end

---@param InUID number
---@param UniqueID number
function UPeaceMemoryGameModeComponent:ServerReceivePeaceID(InUID, UniqueID) end

function UPeaceMemoryGameModeComponent:LuaBindS2CNetProtocol() end

---@param InUID number
---@param InMemoryID number
function UPeaceMemoryGameModeComponent:ServerPostMemoryInfo(InUID, InMemoryID) end

---@param InUID number
---@param InMemoryID number
---@param InMemoryType number
---@param InRecordTime number
---@param InCustomText string
---@param InPosition FVector
---@param InAvatarList ULuaArrayHelper<number>
---@param TeamMatesUID ULuaArrayHelper<number>
function UPeaceMemoryGameModeComponent:LuaServerPostMemoryInfoReq(InUID, InMemoryID, InMemoryType, InRecordTime, InCustomText, InPosition, InAvatarList, TeamMatesUID) end

---@param InPlayer APlayerController
function UPeaceMemoryGameModeComponent:ServerGetPlayerMemoryList(InPlayer) end

---@param InUID number
function UPeaceMemoryGameModeComponent:LuaServerGetPlayerMemoryList(InUID) end

---@param InPC ASTExtraPlayerController
---@param InPlayerkeys ULuaArrayHelper<number>
function UPeaceMemoryGameModeComponent:GetAssistTeamMateName(InPC, InPlayerkeys) end

---@return string
function UPeaceMemoryGameModeComponent:GetRandomTips() end

---@param DescribeText string
---@param AssistPlayerName ULuaArrayHelper<string>
---@param MyName string
function UPeaceMemoryGameModeComponent:AppendAssistName(DescribeText, AssistPlayerName, MyName) end

---@param InUID number
---@param InInfo FPeaceMemoryTempInfo
---@return boolean
function UPeaceMemoryGameModeComponent:AddWaitingInfos(InUID, InInfo) end

---@param InUID number
---@param InInfo FPeaceMemoryTempInfo
---@return boolean
function UPeaceMemoryGameModeComponent:GetWaitingInfo(InUID, InInfo) end

---@param InPosition FVector
---@param InActorID number
---@return FVector
function UPeaceMemoryGameModeComponent:GetEnablePosition(InPosition, InActorID) end
