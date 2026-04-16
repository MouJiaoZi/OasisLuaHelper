---@meta

---@class EMarkDispatchActionType
---@field EMAMAT_INSTANT number
---@field EMAMAT_DELAYED number
---@field EMAMAT_DELAYED_WITHCALLBACK number
---@field EMAMAT_BATCH number
EMarkDispatchActionType = {}


---@class EMarkDispatchRange
---@field EMAMDT_OWNER_ONLY number
---@field EMAMDT_TEAMMATE number
---@field EMAMDT_ENEMIES number
---@field EMAMDT_TEAMMATE_RANGED number
---@field EMAMDT_ENEMIES_RANGED number
---@field EMAMDT_ALL_RANGED number
---@field EMAMDT_ALL number
---@field EMAMDT_OWNER_SPECTATOR number
EMarkDispatchRange = {}


---@class FMarkDispatchAction
---@field ActionType EMarkDispatchActionType
---@field RangeType EMarkDispatchRange
---@field SyncData FMarkSyncData
---@field DispatchDelayTime number
---@field RangeRad number
---@field WeakPlayerState ASTExtraPlayerState
---@field LocalUseQueue boolean
---@field DispatchTime number
---@field bIsFromLocal boolean
---@field OnMapAlertSet FOnMarkSetBP
FMarkDispatchAction = {}


---@class FOnMarkSet : ULuaSingleDelegate
FOnMarkSet = {}

---绑定回调函数
---@param Callback fun(Obj: any, PlayerState: ASTExtraPlayerState) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMarkSet:Bind(Callback, Obj) end

---执行委托
---@param PlayerState ASTExtraPlayerState
function FOnMarkSet:Execute(PlayerState) end


---@class FOnMarkSetBP : ULuaSingleDelegate
FOnMarkSetBP = {}

---绑定回调函数
---@param Callback fun(Obj: any, ExtraPlayerState: ASTExtraPlayerState) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMarkSetBP:Bind(Callback, Obj) end

---执行委托
---@param ExtraPlayerState ASTExtraPlayerState
function FOnMarkSetBP:Execute(ExtraPlayerState) end


---@class UMarkDispatchManager: UActorComponent
---@field CurrentInstanceCount number
---@field CurrentLocalInstanceCount number
---@field ActionQueue ULuaArrayHelper<FMarkDispatchAction>
---@field BatchActionQueue ULuaArrayHelper<FMarkDispatchAction>
---@field MarkCountProcessed number
---@field DSRecircleMarkInstanceIDList ULuaArrayHelper<number>
---@field ClientRecircleMarkInstanceIDList ULuaArrayHelper<number>
---@field StaticMarkList ULuaArrayHelper<FMarkSyncData>
---@field LocalActionNeedUpdate boolean
local UMarkDispatchManager = {}

---@param Data FMarkSyncData
function UMarkDispatchManager:DispatchMarkDataSimple(Data) end

---@param Data FMarkDispatchAction
---@param NeedPrintLog boolean
function UMarkDispatchManager:DispatchMarkData(Data, NeedPrintLog) end

---@param DataArray ULuaArrayHelper<FMarkDispatchAction>
function UMarkDispatchManager:DispatchMarkDataArray(DataArray) end

---@param Data FMarkSyncData
---@param PS ASTExtraPlayerState
function UMarkDispatchManager:DispatchMarkDataOwnerOnly(Data, PS) end

---@param Data FMarkDispatchAction
---@param NeedPrintLog boolean
function UMarkDispatchManager:DestoryMarkByMarkData(Data, NeedPrintLog) end

---@param WorldContextObject UObject
---@param MarkData FMarkSyncData
---@param ActionType EMarkDispatchActionType
---@param ActionRange EMarkDispatchRange
---@return number
function UMarkDispatchManager:DispatchMapMarkData(WorldContextObject, MarkData, ActionType, ActionRange) end

---@param WorldContextObject UObject
---@param MarkInstanceID number
---@param NewLocation FVector
---@param NewRotation FRotator
function UMarkDispatchManager:UpdateMapMarkData(WorldContextObject, MarkInstanceID, NewLocation, NewRotation) end

function UMarkDispatchManager:LocalActionUpdate() end

---@param InstanceID number
---@param IsFormLocal boolean
function UMarkDispatchManager:RecircleMarkInstanceID(InstanceID, IsFormLocal) end
