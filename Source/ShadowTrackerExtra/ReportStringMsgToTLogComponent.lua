---@meta

---Ĺؼͳ
---@class FTLogReportKeyWordsInfo
FTLogReportKeyWordsInfo = {}


---Ĺؼַͳ
---@class FTLogReportSubTypeInfo
FTLogReportSubTypeInfo = {}


---TLogͳƣעÿͻϱһҪҪǰͨ
---@class FTLogReportTypeInfo
FTLogReportTypeInfo = {}


---@class FTLogPawnStat
FTLogPawnStat = {}


---@class FTLogPawnStatReport
---@field BPName string
---@field Count number
FTLogPawnStatReport = {}


---@class FMonitoredActorCell
---@field Count number
---@field ExtCount number
---@field X number
---@field Y number
FMonitoredActorCell = {}


---@class FMonitoredActor
---@field ActorType string
---@field ActorTotal number
---@field ActorCount number
---@field ActorCellSize number
---@field ActorCellMax number
---@field StatActorCellMax number
---@field CurActorCellMax number
---@field HitActorCellMaxCount number
---@field HitExtActorCellMaxCount number
---@field CellActorCountMap ULuaMapHelper<string, FMonitoredActorCell>
FMonitoredActor = {}


---@class UReportStringMsgToTLogComponent: UGameModeBaseComponent, ILuaInterface
---@field ReportedOnce boolean
---@field ConfigReportType ULuaArrayHelper<string>
---@field ConfigExcludeReportType ULuaArrayHelper<string>
---@field MsgMaxLen number
---@field HeartBeatFrequence number
---@field CurHeartBeatFrequence number
---@field HeartBeatReported boolean
---@field TLogReportTypeInfoMap ULuaMapHelper<string, FTLogReportTypeInfo>
---@field PawnCountMap ULuaMapHelper<string, FTLogPawnStat>
---@field PlayerNum number
---@field AiNum number
---@field bAiNumNegative boolean
---@field PickupItem FMonitoredActor
---@field TreasureBox FMonitoredActor
---@field Vehicle FMonitoredActor
---@field MonsterAI FMonitoredActor
---@field SubModeID string
---@field MapID string
---@field GameMinute number
---@field TeamIDList ULuaArrayHelper<number>
local UReportStringMsgToTLogComponent = {}

---@param PC ASTExtraPlayerController
function UReportStringMsgToTLogComponent:PlayerLogin(PC) end

---@param PC ASTExtraPlayerController
function UReportStringMsgToTLogComponent:PlayerLogout(PC) end

---@return string
function UReportStringMsgToTLogComponent:GetLuaModule() end

---@param Key string
function UReportStringMsgToTLogComponent:AddReportType(Key) end

---@param Key string
function UReportStringMsgToTLogComponent:AddExcludeReportSubType(Key) end

---@param ReportType string
---@param ReportSubType string
---@param ReportKeyWords string
---@param ReportKeyWordsCount number
---@param bReplace boolean
---@param StatType number
function UReportStringMsgToTLogComponent:AddStringMsg(ReportType, ReportSubType, ReportKeyWords, ReportKeyWordsCount, bReplace, StatType) end

function UReportStringMsgToTLogComponent:PreReportStringMsg() end

---@param bToDsAgent boolean
function UReportStringMsgToTLogComponent:ReportStringMsg(bToDsAgent) end

function UReportStringMsgToTLogComponent:LuaBeginPlay() end

---@param ReportType string
---@param Msg string
---@param bDsAgent boolean
function UReportStringMsgToTLogComponent:LuaReportStringMsg(ReportType, Msg, bDsAgent) end

---ͳPawn
---@param BPName string
---@param Ai boolean
---@param Add boolean
function UReportStringMsgToTLogComponent:CalcuPawn(BPName, Ai, Add) end

---@param bAdd boolean
function UReportStringMsgToTLogComponent:CalcuMLAI(bAdd) end

function UReportStringMsgToTLogComponent:HeartBeat() end

---@param InPlayerNum number
---@param InAiNum number
---@param PawnCountList ULuaArrayHelper<FTLogPawnStatReport>
function UReportStringMsgToTLogComponent:LuaHeartBeat(InPlayerNum, InAiNum, PawnCountList) end

---@param PickupLoc FVector
---@param Add boolean
function UReportStringMsgToTLogComponent:UpdatePickupItem(PickupLoc, Add) end

function UReportStringMsgToTLogComponent:PrintCellPickupItemCount() end

function UReportStringMsgToTLogComponent:CalcCellPickupItemCount() end

---@param TreasureBoxLoc FVector
---@param Add boolean
function UReportStringMsgToTLogComponent:UpdateTreasureBox(TreasureBoxLoc, Add) end

function UReportStringMsgToTLogComponent:PrintCellTreasureBoxCount() end

function UReportStringMsgToTLogComponent:CalcCellTreasureBoxCount() end

---@param VehicleLoc FVector
---@param Add boolean
function UReportStringMsgToTLogComponent:UpdateVehicle(VehicleLoc, Add) end

function UReportStringMsgToTLogComponent:PrintCellVehicleCount() end

function UReportStringMsgToTLogComponent:CalcCellVehicleCount() end

---@param MonsterAILoc FVector
---@param Add boolean
function UReportStringMsgToTLogComponent:UpdateMonsterAI(MonsterAILoc, Add) end

function UReportStringMsgToTLogComponent:PrintCellMonsterAICount() end

function UReportStringMsgToTLogComponent:CalcCellMonsterAICount() end

---@return string
function UReportStringMsgToTLogComponent:LuaGetSubModeID() end

---@return string
function UReportStringMsgToTLogComponent:LuaGetMapID() end
