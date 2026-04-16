---@meta

---@class ECommonTlogInterface
---@field None number
---@field StatisticsPersonal number
---@field StatisticsGlobal number
---@field StatisticsPeriod number
---@field StatisticsCustom number
---@field CaculateActivityEventFlowExt number
---@field Max number
ECommonTlogInterface = {}


---@class ECommonTlogValue
---@field None number
---@field EventCount number
---@field EventTime number
---@field EventTargetUID number
---@field EventPlayerUID number
---@field Max number
ECommonTlogValue = {}


---@class ECommonTlogPos
---@field Zero number
---@field EventTargetPosition number
---@field EventPlayerPosition number
---@field Max number
ECommonTlogPos = {}


---@class FQuickStatisticsData
---@field ID number
---@field Interface ECommonTlogInterface
---@field Type1 EType
---@field Type2 EType
---@field Value1 ECommonTlogValue
---@field Value2 ECommonTlogValue
---@field Position ECommonTlogPos
FQuickStatisticsData = {}


---@class UTlogComponent: UGameModeBaseComponent
---@field GlobalProtocol string
---@field PersonalProtocol string
---@field IntervalMin number
---@field TickInterval number
---@field NumPerFrame number
---@field QuickStatisticsTableName string
---@field PersonalData ULuaMapHelper<number, FDataStorageStruct>
---@field GlobalData FDataStorageStruct
---@field bFinished boolean
---@field CurAccumulativeTime number
---@field QuickStatisticsData ULuaMapHelper<number, FQuickStatisticsData>
local UTlogComponent = {}

---@param ID number
---@param Type1 EType
---@param Value1 string
---@param Type2 EType
---@param Value2 string
---@param PlayerKey number
---@param Position FVector
function UTlogComponent:StatisticsCustom(ID, Type1, Value1, Type2, Value2, PlayerKey, Position) end

---@param ID number
---@param Value1 string
---@param Value2 string
---@param PlayerKey number
---@param Position FVector
function UTlogComponent:StatisticsPersonal(ID, Value1, Value2, PlayerKey, Position) end

---@param ID number
---@param Value1 string
---@param Value2 string
---@param Position FVector
function UTlogComponent:StatisticsGlobal(ID, Value1, Value2, Position) end

---@param ID number
---@param Value1 string
---@param Value2 string
---@param PlayerKey number
---@param Position FVector
function UTlogComponent:StatisticsPeriod(ID, Value1, Value2, PlayerKey, Position) end

---@param ID number
---@param Player ASTExtraPlayerController
---@param ExtraActor AActor
function UTlogComponent:QuickStatistics(ID, Player, ExtraActor) end

---@param PlayerKey number
function UTlogComponent:SendTlog(PlayerKey) end

---@param PlayerKey number
function UTlogComponent:ClearTlogData(PlayerKey) end

---@param PlayerKey number
---@param EventID number
---@return FStreamDataStruct
function UTlogComponent:GetPersonalEventData(PlayerKey, EventID) end

---@param PlayerKey number
---@return FDataStorageStruct
function UTlogComponent:GetData(PlayerKey) end

---@param PlayerKey number
---@return FDataStorageStruct
function UTlogComponent:GetOldData(PlayerKey) end

---@param InPlayerState APlayerState
---@return FPlayerStateBaseInfo
function UTlogComponent:GetPlayerStateBaseInfo(InPlayerState) end

---@param OldTlog FTlogDataStruct
---@param Value1 string
---@param Value2 string
---@param ValueType FTypeStruct
function UTlogComponent:DataProcess(OldTlog, Value1, Value2, ValueType) end

---@param PlayerKey number
---@param Reason string
function UTlogComponent:SendTlogAfterPlayerGameOver(PlayerKey, Reason) end

function UTlogComponent:SendTlogAfterUGCMKeyProcessFinished() end

---@param Player APlayerController
function UTlogComponent:SendTlogAfterPlayerNetCleanUp(Player) end

---@param PlayerKey number
function UTlogComponent:SendTlogWithPlayerKey(PlayerKey) end

function UTlogComponent:SendTlogAfterGameFinished() end

---@param Player APlayerController
function UTlogComponent:SendSpecificPlayerTlog(Player) end

---@param Storage FDataStorageStruct
function UTlogComponent:PrintDataStorageStruct(Storage) end

---@param Table UUAEDataTable
function UTlogComponent:InitQuickStatisticsData(Table) end

---@param ID number
---@return boolean
function UTlogComponent:FindQuickStatisticsData(ID) end
