---@meta

---@class ERoomRangeType
---@field None number
---@field GunPressTraining number
---@field PullGunTraining number
---@field SoundTraining number
---@field FollowGunTraining number
ERoomRangeType = {}


---@class EShootingRoomStatus
---@field Normal number
---@field Training number
---@field PreTraining number
---@field WaitReset number
EShootingRoomStatus = {}


---@class FOnShootingRoomBeginTrain : ULuaMulticastDelegate
FOnShootingRoomBeginTrain = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurRoomSubRange: AShootingRoomSubRange) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShootingRoomBeginTrain:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurRoomSubRange AShootingRoomSubRange
function FOnShootingRoomBeginTrain:Broadcast(CurRoomSubRange) end


---@class FOnShootingRoomFinishTrain : ULuaMulticastDelegate
FOnShootingRoomFinishTrain = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurRoomSubRange: AShootingRoomSubRange) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShootingRoomFinishTrain:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurRoomSubRange AShootingRoomSubRange
function FOnShootingRoomFinishTrain:Broadcast(CurRoomSubRange) end


---@class AGMAShootingRoom: AGameModeActor
---@field ResetTimer FTimerHandle
---@field BisFlagForReset boolean
---@field CurRoomStatus EShootingRoomStatus
---@field TrainResetTime number
---@field CurTrainingRangeType ERoomRangeType
---@field OnBeginTrain FOnShootingRoomBeginTrain
---@field OnFinishTrain FOnShootingRoomFinishTrain
local AGMAShootingRoom = {}

---@return ERoomRangeType
function AGMAShootingRoom:GetPlayerInWhichTrainig() end

---@return boolean
function AGMAShootingRoom:BisInTraining() end

---@return boolean
function AGMAShootingRoom:BisCanBeginTraining() end

---@param RoomStatus EShootingRoomStatus
function AGMAShootingRoom:SetRoomStatus(RoomStatus) end

---@param SubRange AShootingRoomSubRange
function AGMAShootingRoom:BeginTraining(SubRange) end

function AGMAShootingRoom:BPBeginTraining() end

function AGMAShootingRoom:FinishTraining() end

function AGMAShootingRoom:BPFinishTraining() end

function AGMAShootingRoom:OnRep_CurRoomStatus() end
