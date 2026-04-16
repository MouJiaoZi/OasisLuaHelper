---@meta

---@class FEntranceParam
---@field EntranceID string
---@field ModeID number
---@field MainModeID number
FEntranceParam = {}


---@class FRegionModePair
---@field RegionID string
---@field ModeIDList ULuaArrayHelper<string>
FRegionModePair = {}


---@class FNotifyEntranceParamsChange : ULuaMulticastDelegate
FNotifyEntranceParamsChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EntranceManagerComponent: UEntranceManagerComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyEntranceParamsChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param EntranceManagerComponent UEntranceManagerComponent
function FNotifyEntranceParamsChange:Broadcast(EntranceManagerComponent) end


---@class FNotifyValidModeListChange : ULuaMulticastDelegate
FNotifyValidModeListChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EntranceManagerComponent: UEntranceManagerComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyValidModeListChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param EntranceManagerComponent UEntranceManagerComponent
function FNotifyValidModeListChange:Broadcast(EntranceManagerComponent) end


---@class FNotifyMainWorldIndexModeMapChange : ULuaMulticastDelegate
FNotifyMainWorldIndexModeMapChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EntranceManagerComponent: UEntranceManagerComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyMainWorldIndexModeMapChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param EntranceManagerComponent UEntranceManagerComponent
function FNotifyMainWorldIndexModeMapChange:Broadcast(EntranceManagerComponent) end


---@class UEntranceManagerComponent: UActorComponent
---@field NotifyEntranceParamsChange FNotifyEntranceParamsChange
---@field NotifyValidModeListChange FNotifyValidModeListChange
---@field NotifyMainWorldIndexModeMapChange FNotifyMainWorldIndexModeMapChange
---@field EntranceParams ULuaArrayHelper<FEntranceParam>
---@field MainWorldIndexModeMap ULuaArrayHelper<FEntranceParam>
---@field ValidModeList ULuaArrayHelper<number>
---@field RegionModePairList ULuaArrayHelper<FRegionModePair>
local UEntranceManagerComponent = {}

---@param GameEntranceActor AGameEntranceActor
---@param bBegin boolean
---@return boolean
function UEntranceManagerComponent:TrigEntranceFunction(GameEntranceActor, bBegin) end

---@param GameEntranceActor AGameEntranceActor
---@return boolean
function UEntranceManagerComponent:CheckEntranceValidity(GameEntranceActor) end

---@param RegionIDList ULuaArrayHelper<string>
---@param ModeIDList ULuaArrayHelper<string>
---@return boolean
function UEntranceManagerComponent:GetRegionModeIDList(RegionIDList, ModeIDList) end

---@param GameEntranceActor AGameEntranceActor
---@param ModeID string
---@param bBegin boolean
function UEntranceManagerComponent:TrigEntranceFunctionInternal(GameEntranceActor, ModeID, bBegin) end

function UEntranceManagerComponent:OnRep_EntranceParams() end

function UEntranceManagerComponent:OnRep_ValidModeList() end

function UEntranceManagerComponent:OnRep_MainWorldIndexModeMap() end

function UEntranceManagerComponent:OnRep_RegionModePairList() end

---@param Params FGameStateParams
function UEntranceManagerComponent:ParseEntranceParams(Params) end

---@param DataList ULuaArrayHelper<FEntranceParam>
---@param EntranceParam FEntranceParam
function UEntranceManagerComponent:AddOrModifyEntranceParam(DataList, EntranceParam) end

---@param EntranceParam FEntranceParam
function UEntranceManagerComponent:DeleteEntranceParam(EntranceParam) end

function UEntranceManagerComponent:BroadcastEntranceParamsChange() end

function UEntranceManagerComponent:BroadcastValidModeListChange() end

function UEntranceManagerComponent:BroadcastMainWorldIndexModeMapChange() end
