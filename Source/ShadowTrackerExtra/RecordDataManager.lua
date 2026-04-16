---@meta

---@class FOnRecordDataSaved : ULuaSingleDelegate
FOnRecordDataSaved = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRecordDataSaved:Bind(Callback, Obj) end

---执行委托
function FOnRecordDataSaved:Execute() end


---@class ARecordDataManager: AActor
---@field FixedFPS number
---@field bShouldSetFPS boolean
---@field UseInGameTime boolean
---@field InputRecoderCmpClass UInputRecordComponent
---@field bIsStart boolean
---@field bIsStop boolean
---@field CurTime number
---@field RecordDataInstanceList ULuaArrayHelper<URecordDataInstance>
---@field CaseName string
---@field bIsCompareing boolean
---@field OnDataSaved FOnRecordDataSaved
---@field CurrentFrame number
local ARecordDataManager = {}

---@param RecordPath string
---@param AddStartItem ULuaArrayHelper<FStartPlayItemData>
---@param RecordClass string
function ARecordDataManager:StartRecordData(RecordPath, AddStartItem, RecordClass) end

---@param RecordPath string
---@param AddStartItem ULuaArrayHelper<FStartPlayItemData>
---@param RecordClass string
function ARecordDataManager:StartCompareData(RecordPath, AddStartItem, RecordClass) end

function ARecordDataManager:StopRecordData() end

function ARecordDataManager:SpawnInputRecoderComponent() end

function ARecordDataManager:HandleRealStartPlay() end

function ARecordDataManager:HandleRealStopPlay() end
