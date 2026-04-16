---@meta

---@class FDelayRecordInfo
---@field OtherPlayerUIDs ULuaArrayHelper<string>
---@field DelayTime number
---@field NeedTime number
---@field RecordTime number
---@field RecordLocation FVector
---@field RecordType number
---@field DescribeText string
---@field RecordID number
FDelayRecordInfo = {}


---@class FRecordOtherPawnInfo
---@field OtherPawn ASTExtraBaseCharacter
---@field RecordTime number
FRecordOtherPawnInfo = {}


---@class FPeaceMemoryPlayerCacheInfos
FPeaceMemoryPlayerCacheInfos = {}


---@class UPeaceMemoryActorComponent: UActorComponent, ILuaInterface
---@field OtherPawnRecordTimes number
local UPeaceMemoryActorComponent = {}

---@return string
function UPeaceMemoryActorComponent:GetLuaModule() end

function UPeaceMemoryActorComponent:LuaBindS2CNetProtocol() end

---@param InUID number
---@param InMemoryID number
function UPeaceMemoryActorComponent:LuaRequestReplayBits(InUID, InMemoryID) end

---@param InMemoryID number
function UPeaceMemoryActorComponent:UpLoadReplayBits(InMemoryID) end

---@param InMemoryID number
---@param InBits ULuaArrayHelper<number>
function UPeaceMemoryActorComponent:LuaUpLoadReplayBits(InMemoryID, InBits) end

---@param NeedTimes number
---@param DelayTime number
---@param OtherPawns ULuaArrayHelper<number>
---@param RecordTime number
---@param RecordLocation FVector
---@param ShowType number
---@param DescribeText string
---@param RecordID number
function UPeaceMemoryActorComponent:ClientNeedRecordReplay(NeedTimes, DelayTime, OtherPawns, RecordTime, RecordLocation, ShowType, DescribeText, RecordID) end

---@param OtherPawn ASTExtraBaseCharacter
function UPeaceMemoryActorComponent:ClientBeginRecordOther(OtherPawn) end

---@param ActorID number
---@param InState number
function UPeaceMemoryActorComponent:ServerUpdatePMActorState(ActorID, InState) end

---@param InTargetUID number
---@param ActorID number
function UPeaceMemoryActorComponent:ServerAddGiveLike(InTargetUID, ActorID) end

---@param OtherPCUIDs ULuaArrayHelper<string>
---@param CustomText string
---@param InPosition FVector
function UPeaceMemoryActorComponent:TriggerClickEvent(OtherPCUIDs, CustomText, InPosition) end

---@param CustomText string
function UPeaceMemoryActorComponent:ServerTryRecordSelf(CustomText) end

---@param ActorID number
function UPeaceMemoryActorComponent:DSPostPeaceMemoryInfo(ActorID) end

---@param ActorID number
---@param CoustomText string
function UPeaceMemoryActorComponent:DSChangeDiscribeText(ActorID, CoustomText) end

---@param InPawn ASTExtraBaseCharacter
function UPeaceMemoryActorComponent:OnCharacertDied(InPawn) end

function UPeaceMemoryActorComponent:OnPlayerLanded() end

---@param InUID number
---@param InIndex number
function UPeaceMemoryActorComponent:PlayPeaceMemoryReplay(InUID, InIndex) end

---@param InUID number
---@param InIndex number
function UPeaceMemoryActorComponent:CheckOrRequireIndexData(InUID, InIndex) end

---@param InUID number
---@param InIndex number
---@param Bits ULuaArrayHelper<number>
function UPeaceMemoryActorComponent:ClientReceiveLobbyInfo(InUID, InIndex, Bits) end

---@param InUID string
---@param InNeedRecordTime number
function UPeaceMemoryActorComponent:ClientGetDumpData(InUID, InNeedRecordTime) end

---@param InResBits ULuaArrayHelper<number>
---@param InOutTimeLen number
---@param InMemoryID number
function UPeaceMemoryActorComponent:DumpedEnd(InResBits, InOutTimeLen, InMemoryID) end

---@param bSucceed boolean
function UPeaceMemoryActorComponent:ReceivePlayDelegate(bSucceed) end
