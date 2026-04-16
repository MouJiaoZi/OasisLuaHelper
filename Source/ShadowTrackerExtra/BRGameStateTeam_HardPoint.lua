---@meta

---@class FOnCurrentActivatedHardPointChangeDelegate : ULuaMulticastDelegate
FOnCurrentActivatedHardPointChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HardPointActor: AHardPointActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCurrentActivatedHardPointChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HardPointActor AHardPointActor
function FOnCurrentActivatedHardPointChangeDelegate:Broadcast(HardPointActor) end


---@class FOnRemainHardPointNumChangeDelegate : ULuaMulticastDelegate
FOnRemainHardPointNumChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, RemainHardPointNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRemainHardPointNumChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param RemainHardPointNum number
function FOnRemainHardPointNumChangeDelegate:Broadcast(RemainHardPointNum) end


---@class FOnWaitActivateHardPointStateChangeDelegate : ULuaMulticastDelegate
FOnWaitActivateHardPointStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsWaitActivateHardPoint: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWaitActivateHardPointStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsWaitActivateHardPoint boolean
function FOnWaitActivateHardPointStateChangeDelegate:Broadcast(bIsWaitActivateHardPoint) end


---@class FOnActivatedHardPointDataRecordListChangeDelegate : ULuaSingleDelegate
FOnActivatedHardPointDataRecordListChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActivatedHardPointDataRecordListChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnActivatedHardPointDataRecordListChangeDelegate:Execute() end


---@class ABRGameStateTeam_HardPoint: ABRGameStateTeam_DeathMatch
---@field OnCurrentActivatedHardPointChangeDelegate FOnCurrentActivatedHardPointChangeDelegate
---@field OnRemainHardPointNumChangeDelegate FOnRemainHardPointNumChangeDelegate
---@field OnWaitActivateHardPointStateChangeDelegate FOnWaitActivateHardPointStateChangeDelegate
---@field OnActivatedHardPointDataRecordListChangeDelegate FOnActivatedHardPointDataRecordListChangeDelegate
---@field OccupyHardPointScore number
---@field HardPointComingEndNotify_Score number
---@field HardPointComingEndNotify_RemainTime number
---@field RemainHardPointNum number
---@field WaitActivateHardPointRemainTime number
---@field bIsWaitActivateHardPoint boolean
---@field ActivatedHardPointDataRecordList ULuaArrayHelper<FActivatedHardPointDataRecord>
---@field HardPointList ULuaArrayHelper<AHardPointActor>
---@field HardPointTeamScoreDatas ULuaArrayHelper<FHardPoint_TeamScoreData>
local ABRGameStateTeam_HardPoint = {}

---@param InWaitTime number
function ABRGameStateTeam_HardPoint:OnWaitActivateHardPoint(InWaitTime) end

---@param HardPointActor AHardPointActor
function ABRGameStateTeam_HardPoint:OnActivateNewHardPoint(HardPointActor) end

---@param HardPointActor AHardPointActor
function ABRGameStateTeam_HardPoint:OnActivatedHardPointEnd(HardPointActor) end

---@param HardPointActor AHardPointActor
---@param TeamID number
---@param ScoreValue number
function ABRGameStateTeam_HardPoint:OnHardPointAddTeamOccupyScore(HardPointActor, TeamID, ScoreValue) end

---@param HardPointActor AHardPointActor
---@param OccupyState EHardPointOccupyState
function ABRGameStateTeam_HardPoint:OnHardPointOccupyStateChange(HardPointActor, OccupyState) end

---@param HardPointActor AHardPointActor
function ABRGameStateTeam_HardPoint:OnHardPointTeamScoreDatasChange(HardPointActor) end

---@param HardPointActor AHardPointActor
---@param RemainActivateTime number
function ABRGameStateTeam_HardPoint:OnHardPointRemainActivateTimeChange(HardPointActor, RemainActivateTime) end

function ABRGameStateTeam_HardPoint:OnRep_HardPointTeamScoreDatList() end

---@param LastActivatedHardPoint AHardPointActor
function ABRGameStateTeam_HardPoint:OnRep_CurrentActivatedHardPoint(LastActivatedHardPoint) end

function ABRGameStateTeam_HardPoint:OnRep_RemainHardPointNum() end

function ABRGameStateTeam_HardPoint:OnRep_WaitActivateHardPoint() end

function ABRGameStateTeam_HardPoint:OnRep_ActivatedHardPointDataRecordList() end
