---@meta

---@class EHardPointOccupyState
---@field Neutral number @中立
---@field Occupied number @已占领
---@field Contending number @争夺中
EHardPointOccupyState = {}


---@class FHardPointTeamScoreData
---@field TeamID number
---@field Score number
FHardPointTeamScoreData = {}


---@class FOnHardPointTeamScoreDatasChangeDelegate : ULuaMulticastDelegate
FOnHardPointTeamScoreDatasChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HardPointActor: AHardPointActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHardPointTeamScoreDatasChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HardPointActor AHardPointActor
function FOnHardPointTeamScoreDatasChangeDelegate:Broadcast(HardPointActor) end


---@class FHardPointAddScoreDelegate : ULuaMulticastDelegate
FHardPointAddScoreDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HardPointActor: AHardPointActor, TeamID: number, ScoreValue: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHardPointAddScoreDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HardPointActor AHardPointActor
---@param TeamID number
---@param ScoreValue number
function FHardPointAddScoreDelegate:Broadcast(HardPointActor, TeamID, ScoreValue) end


---@class FOnHardPointOccupyStateChangeDelegate : ULuaMulticastDelegate
FOnHardPointOccupyStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HardPointActor: AHardPointActor, OccupyState: EHardPointOccupyState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHardPointOccupyStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HardPointActor AHardPointActor
---@param OccupyState EHardPointOccupyState
function FOnHardPointOccupyStateChangeDelegate:Broadcast(HardPointActor, OccupyState) end


---@class FOnHardPointCurrentOwnedTeamIDChangeDelegate : ULuaMulticastDelegate
FOnHardPointCurrentOwnedTeamIDChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HardPointActor: AHardPointActor, CurrentOwnedTeamID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHardPointCurrentOwnedTeamIDChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HardPointActor AHardPointActor
---@param CurrentOwnedTeamID number
function FOnHardPointCurrentOwnedTeamIDChangeDelegate:Broadcast(HardPointActor, CurrentOwnedTeamID) end


---@class FOnHardPointActivateStateChangeDelegate : ULuaMulticastDelegate
FOnHardPointActivateStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HardPointActor: AHardPointActor, IsActivate: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHardPointActivateStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HardPointActor AHardPointActor
---@param IsActivate boolean
function FOnHardPointActivateStateChangeDelegate:Broadcast(HardPointActor, IsActivate) end


---@class FOnHardPointRemainActivateTimeChangeDelegate : ULuaMulticastDelegate
FOnHardPointRemainActivateTimeChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HardPointActor: AHardPointActor, RemainActivateTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHardPointRemainActivateTimeChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HardPointActor AHardPointActor
---@param RemainActivateTime number
function FOnHardPointRemainActivateTimeChangeDelegate:Broadcast(HardPointActor, RemainActivateTime) end


---@class AHardPointActor: AUAERegionActor
---@field OnHardPointTeamScoreDatasChangeDelegate FOnHardPointTeamScoreDatasChangeDelegate
---@field AddScoreDelegate FHardPointAddScoreDelegate
---@field OnHardPointActivateStateChangeDelegate FOnHardPointActivateStateChangeDelegate
---@field OnOccupyStateChangeDelegate FOnHardPointOccupyStateChangeDelegate
---@field OnCurrentOwnedTeamIDChangeDelegate FOnHardPointCurrentOwnedTeamIDChangeDelegate
---@field OnHardPointRemainActivateTimeChangeDelegate FOnHardPointRemainActivateTimeChangeDelegate
---@field HardPointID number
---@field HardPointName string
---@field ScoringIntervalTime number
---@field ScoreValue number
---@field UseBronPointID number
---@field ChooseHardPointProbability number
---@field IconType number
---@field MarkInWhichMap EAddMarkFlag
---@field WinScore number
---@field WinTeamID number
---@field CurrentOccupyState EHardPointOccupyState
---@field RemainActivateTime number
---@field CurrentOwnedTeamID number
---@field HardPointTeamScoreDataList ULuaArrayHelper<FHardPointTeamScoreData>
---@field MaxAINum number
---@field bIsActivate boolean
---@field StartActivateTime number
---@field ActivateTime number
---@field ActivatedTime number
---@field InHardPointPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field InBoxCollisionPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field Vertexs ULuaArrayHelper<FVector2D> @占点区域顶点
---@field TargetPoints ULuaArrayHelper<AActor>
---@field AIWayPointDepth number
local AHardPointActor = {}

---@param InActivateTime number
---@param InWinScore number
function AHardPointActor:ActivateHardPoint(InActivateTime, InWinScore) end

function AHardPointActor:CloseHardPoint() end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointActor:OnPlayerEnter(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointActor:OnPlayerLeave(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointActor:OnPlayerEnterBoxCollision(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointActor:OnPlayerLeaveBoxCollision(BaseCharacter) end

---@param InVector FVector
---@return boolean
function AHardPointActor:IsInBoxCollision(InVector) end

---@param TeamID number
---@return number
function AHardPointActor:GetTeamScoreByTeamID(TeamID) end

---@return number
function AHardPointActor:GetChooseHardPointProbability() end

---@return number
function AHardPointActor:GetCampID() end

---@return number
function AHardPointActor:GetPointCampType() end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AHardPointActor:OnBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function AHardPointActor:OnEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AHardPointActor:OnBoxCollisionBeginOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComp UPrimitiveComponent
---@param Other AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function AHardPointActor:OnBoxCollisionEndOverlap(OverlappedComp, Other, OtherComp, OtherBodyIndex) end

---@param Exiting APlayerController
function AHardPointActor:OnPlayerRealExit(Exiting) end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointActor:OnPlayerDeath(BaseCharacter) end

---@param BaseCharacter ASTExtraBaseCharacter
function AHardPointActor:OnPlayerDeathInBoxCollision(BaseCharacter) end

function AHardPointActor:UpdateHardPointState() end

function AHardPointActor:CheckTimeOut() end

function AHardPointActor:OnRep_CurrentOwnedTeamID() end

function AHardPointActor:OnRep_CurrentOccupyState() end

function AHardPointActor:OnRep_IsActivate() end

function AHardPointActor:OnRep_RemainActivateTime() end

function AHardPointActor:OnRep_HardPointTeamScoreDataList() end
