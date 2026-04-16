---@meta

---@class EPKRoomPlayerState
---@field Waiting number
---@field Pking number
---@field Quit number
---@field Finish number
EPKRoomPlayerState = {}


---@class FPKRoomTempScore
---@field Score number
---@field UIShowText string
FPKRoomTempScore = {}


---@class FOnRoomPKBeginDelegate : ULuaMulticastDelegate
FOnRoomPKBeginDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Playerlist: ULuaArrayHelper<ASTExtraPlayerController>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRoomPKBeginDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Playerlist ULuaArrayHelper<ASTExtraPlayerController>
function FOnRoomPKBeginDelegate:Broadcast(Playerlist) end


---@class FOnRoomPKEndDelegate : ULuaMulticastDelegate
FOnRoomPKEndDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Playerlist: ULuaArrayHelper<ASTExtraPlayerController>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRoomPKEndDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Playerlist ULuaArrayHelper<ASTExtraPlayerController>
function FOnRoomPKEndDelegate:Broadcast(Playerlist) end


---@class UPKRoomObj: UObject
---@field RoomID number
---@field DataClass UPKRoomNetAlienationData
---@field PlayerList ULuaArrayHelper<ASTExtraPlayerController>
---@field PlayerPKStates ULuaArrayHelper<EPKRoomPlayerState>
---@field bNeedCheckWaiting boolean
---@field FinalScore ULuaArrayHelper<FPKRoomTempScore>
---@field NeedCheckTasks ULuaArrayHelper<UPKRoomTaskCondition>
---@field OnRoomPKBeginDelegate FOnRoomPKBeginDelegate
---@field OnRoomPKEndDelegate FOnRoomPKEndDelegate
---@field UsingTime number
---@field CostTime number
---@field ContrustTime number
---@field DownCountHandleCanQuit FTimerHandle
---@field DownCountHandle FTimerHandle
---@field ClearRelevantHandle FTimerHandle
---@field AddTimes number
---@field GMMinBeginNums number
local UPKRoomObj = {}

---@param roomID number
---@param InRoomType number
---@param InTotalTime number
---@param InOwnerRegion APKActivateActor
function UPKRoomObj:Init(roomID, InRoomType, InTotalTime, InOwnerRegion) end

---@param PC ASTExtraPlayerController
function UPKRoomObj:AddPlayer(PC) end

---@param PC ASTExtraPlayerController
function UPKRoomObj:RemovePlayer(PC) end

---@param PC ASTExtraPlayerController
function UPKRoomObj:ChangeOwner(PC) end

function UPKRoomObj:BeginPK() end

function UPKRoomObj:BPBeginPK() end

function UPKRoomObj:DownCountForBegin() end

function UPKRoomObj:EndPK() end

function UPKRoomObj:BPEndPK() end

---@return boolean
function UPKRoomObj:BP_CheckNeedEnterWaitingList() end

function UPKRoomObj:BP_FightingToWaiting() end

function UPKRoomObj:DestroyRoom() end

function UPKRoomObj:EndRemovePlayers() end

---@param DeltaTime number
function UPKRoomObj:Update(DeltaTime) end

function UPKRoomObj:UpdatePlayRankInfos() end

function UPKRoomObj:BP_Init() end

---@param playerkey number
---@param Score FPKRoomTempScore
function UPKRoomObj:OnPlayerQuiteDuringPK(playerkey, Score) end

---@param playerkey number
---@param Score FPKRoomTempScore
function UPKRoomObj:OnPlayerFinishPK(playerkey, Score) end

---@return FRoomUIItemInfo
function UPKRoomObj:GetRoomInfo() end

---@param InNum number
function UPKRoomObj:ChangeMinBeginNum(InNum) end

---@param InTimes number
function UPKRoomObj:AddPKTimes(InTimes) end

function UPKRoomObj:TryEndPK() end

function UPKRoomObj:ForceUpdateScore() end

function UPKRoomObj:ChangeStateToWaiting() end

---@param state number
function UPKRoomObj:ChangePlayerRoomState(state) end
