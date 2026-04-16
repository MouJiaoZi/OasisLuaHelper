---@meta

---@class FClientWeaponAntiCheatShootRecordData
---@field FrameNumber number
---@field ShootID number
---@field VectorRecortData ULuaMapHelper<string, FVector>
---@field RotatorRecortData ULuaMapHelper<string, FRotator>
---@field FloatRecortData ULuaMapHelper<string, number>
---@field IntRecortData ULuaMapHelper<string, number>
---@field BoolRecortData ULuaMapHelper<string, boolean>
---@field VerifyResultMsg string
FClientWeaponAntiCheatShootRecordData = {}


---@class FVerifyStrategy_SequenceNoModifyConfigItem
---@field RecordTagList_Vector ULuaArrayHelper<string>
---@field RecordTagList_Rotator ULuaArrayHelper<string>
FVerifyStrategy_SequenceNoModifyConfigItem = {}


---@class UVerifyStrategyBase: UObject
---@field bIgnoreVolleyFireWeapon boolean
---@field bIgnoreMultiShootWeapon boolean
local UVerifyStrategyBase = {}

---@param RecordData FClientWeaponAntiCheatShootRecordData
---@param OutVerifyRet string
---@return boolean
function UVerifyStrategyBase:Apply(RecordData, OutVerifyRet) end


---@class UVerifyStrategy_SequenceNoModify: UVerifyStrategyBase
---@field ConfigItemList ULuaArrayHelper<FVerifyStrategy_SequenceNoModifyConfigItem>
local UVerifyStrategy_SequenceNoModify = {}

---@param RecordData FClientWeaponAntiCheatShootRecordData
---@param OutVerifyRet string
---@return boolean
function UVerifyStrategy_SequenceNoModify:Apply_Implementation(RecordData, OutVerifyRet) end


---@class ULogStrategyBase: UObject
---@field IncludeNextFrameNum number
---@field IncludePreFrameNum number
---@field LogTagList_Vector ULuaArrayHelper<string>
---@field LogTagList_Rotator ULuaArrayHelper<string>
---@field LogTagList_Float ULuaArrayHelper<string>
---@field LogTagList_Int ULuaArrayHelper<string>
---@field LogTagList_Bool ULuaArrayHelper<string>
local ULogStrategyBase = {}

---@param CheatManager UClientWeaponAntiCheatManager
---@param MatchFrame number
---@return string
function ULogStrategyBase:Apply(CheatManager, MatchFrame) end

---@param RecordData FClientWeaponAntiCheatShootRecordData
---@return string
function ULogStrategyBase:ApplyInternal(RecordData) end


---@class UClientWeaponAntiCheatManager: UObject
---@field BPTickInterval number
---@field ReportInterval number
---@field MaxRecordDataNum number
---@field VerifyStrategyTemplateList ULuaArrayHelper<UVerifyStrategyBase>
---@field LogStrategyTemplateMap ULuaMapHelper<string, ULogStrategyBase>
---@field RecordRotatorLimitList ULuaArrayHelper<string>
---@field RecordDataList ULuaArrayHelper<FClientWeaponAntiCheatShootRecordData>
---@field VerifyStrategyList ULuaArrayHelper<UVerifyStrategyBase>
---@field LogStrategyMap ULuaMapHelper<string, ULogStrategyBase>
---@field LastBPTickTime number
---@field LastReportTime number
---@field ShootReportDataList ULuaArrayHelper<FClientWeaponAntiCheatShootReportData>
---@field CurChosenDataIndex number
local UClientWeaponAntiCheatManager = {}

---@param PC ASTExtraPlayerController
function UClientWeaponAntiCheatManager:Init(PC) end

---@param PC ASTExtraPlayerController
function UClientWeaponAntiCheatManager:BPInit(PC) end

---@param DeltaTime number
function UClientWeaponAntiCheatManager:Tick(DeltaTime) end

function UClientWeaponAntiCheatManager:BPTick() end

function UClientWeaponAntiCheatManager:Report() end

---@param ShootWeapon UObject
function UClientWeaponAntiCheatManager:RecordShootWeapon(ShootWeapon) end

---@param Val FVector
---@param RecordTag string
function UClientWeaponAntiCheatManager:RecordShootVector(Val, RecordTag) end

---@param Val FRotator
---@param RecordTag string
function UClientWeaponAntiCheatManager:RecordShootRotator(Val, RecordTag) end

---@param Val number
---@param RecordTag string
function UClientWeaponAntiCheatManager:RecordShootFloat(Val, RecordTag) end

---@param Val number
---@param RecordTag string
function UClientWeaponAntiCheatManager:RecordShootInt(Val, RecordTag) end

---@param Val boolean
---@param RecordTag string
function UClientWeaponAntiCheatManager:RecordShootBool(Val, RecordTag) end

function UClientWeaponAntiCheatManager:FinishShootRecord() end

---@param LogStrategyName string
---@param Frame number
---@return string
function UClientWeaponAntiCheatManager:GenerateLogData(LogStrategyName, Frame) end

---@param FrameNumber number
---@param OutData FClientWeaponAntiCheatShootRecordData
---@return boolean
function UClientWeaponAntiCheatManager:FindRecordData(FrameNumber, OutData) end
