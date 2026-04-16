---@meta

---@class EFutureCarrierMoveType
---@field Route number
---@field Direction number
---@field Leave number
EFutureCarrierMoveType = {}


---@class FFutureCarrierNoHumanDelegate : ULuaMulticastDelegate
FFutureCarrierNoHumanDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsGoToSleep: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFutureCarrierNoHumanDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsGoToSleep boolean
function FFutureCarrierNoHumanDelegate:Broadcast(IsGoToSleep) end


---@class FFutureCarrierBeforeRealLeaveDelegate : ULuaSingleDelegate
FFutureCarrierBeforeRealLeaveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFutureCarrierBeforeRealLeaveDelegate:Bind(Callback, Obj) end

---执行委托
function FFutureCarrierBeforeRealLeaveDelegate:Execute() end


---@class FFutureCarrierLeaveDelegate : ULuaSingleDelegate
FFutureCarrierLeaveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFutureCarrierLeaveDelegate:Bind(Callback, Obj) end

---执行委托
function FFutureCarrierLeaveDelegate:Execute() end


---@class FFutureCarrierPreLeaveDelegate : ULuaSingleDelegate
FFutureCarrierPreLeaveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFutureCarrierPreLeaveDelegate:Bind(Callback, Obj) end

---执行委托
function FFutureCarrierPreLeaveDelegate:Execute() end


---@class AFutureCarrier: AActor
---@field CurMoveType EFutureCarrierMoveType
---@field FutureCarrierLeaveDelegate FFutureCarrierLeaveDelegate
---@field FutureCarrierPreLeaveDelegate FFutureCarrierPreLeaveDelegate
---@field FutureCarrierNoHumanDelegate FFutureCarrierNoHumanDelegate
---@field FutureCarrierBeforeRealLeaveDelegate FFutureCarrierBeforeRealLeaveDelegate
---@field FutureCarrierUniqueID number
---@field bEnableReviveGM boolean
---@field DelayQuitSpectating number
---@field DelayLookHelicopter number
---@field bNeedCleanState boolean
---@field InitialMoveType EFutureCarrierMoveType
---@field ShipDirectionType ULuaMapHelper<number, number>
---@field MapCenter FVector2D
---@field TeleportRepeaterPos ULuaArrayHelper<FVector>
---@field EnableRandomTarget boolean
---@field StopableType ULuaArrayHelper<string>
---@field UnstopableType ULuaArrayHelper<string>
---@field BackupPoints ULuaArrayHelper<FVector>
---@field PickRandomPointTimes number
---@field TeleportUpTag string
---@field bEnableLeave boolean
---@field ShipLeaveTime number
---@field ShipPreLeaveTime number
---@field PreLeaveMsgID number
---@field LeaveSpeedRate number
---@field MapIconID number
---@field PlayerStateMapIconID number
---@field MiniMapOffset FVector
---@field UpdateInterval number
---@field bNeedChangeIcon boolean
---@field SpawnItemDelay number
---@field PlayerLandDistanceMax number
---@field PlayerLandHeightOffsetMax number
---@field bEnableSleep boolean
---@field SleepDelay number
---@field bEnableDelayRep boolean
---@field RepDelayTime number
---@field bCustomNRF boolean
---@field NotRelevantDeltaZ number
---@field NotRelevantHeightZ number
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field ParaMoveDistance number
---@field ReviveAreaRange number
---@field ReviveAreaDeviation number
---@field MarkSyncData FMarkSyncData
---@field FutureCarrierPlayerList ULuaArrayHelper<ASTExtraPlayerCharacter>
---@field MiniMapRecord ULuaMapHelper<number, number>
local AFutureCarrier = {}

function AFutureCarrier:HideMeshsOnPlayerOnGround() end

function AFutureCarrier:Leave() end

function AFutureCarrier:DestroyActorOnGround() end

---@param bAdd boolean
---@param Character ASTExtraBaseCharacter
function AFutureCarrier:ModifyPlayerList(bAdd, Character) end

function AFutureCarrier:GetPlayerList() end

function AFutureCarrier:SpawnPickUp() end

function AFutureCarrier:GotoSleep() end

---@param index number
function AFutureCarrier:SwitchMapIcon(index) end

---@param DeltaLength number
---@return FVector2D
function AFutureCarrier:FindPointInWhiteCircle(DeltaLength) end

---@param WhiteCircleCenter FVector
---@return FVector
function AFutureCarrier:CircleCenterDeviation(WhiteCircleCenter) end

---@param InOutPosition FVector
---@param StartHight number
---@param EndHight number
---@param bGetZ boolean
---@return boolean
function AFutureCarrier:IsValidLocation(InOutPosition, StartHight, EndHight, bGetZ) end

---@param InPositions ULuaArrayHelper<FVector>
---@param WhiteCircleCenter FVector
---@return FVector
function AFutureCarrier:GetRandomLandPoint(InPositions, WhiteCircleCenter) end

---@param index number
---@return FVector2D
function AFutureCarrier:GetBackupPosition(index) end

---@param Character ASTExtraPlayerCharacter
function AFutureCarrier:GoParachute(Character) end

---@return FVector
function AFutureCarrier:GetRandomBornLocation() end

function AFutureCarrier:OnRep_CurMoveType() end

function AFutureCarrier:OnRep_FutureCarrierUniqueID() end

---@param Character ASTExtraBaseCharacter
function AFutureCarrier:OnPlayerDeath(Character) end

---@param DQSTime number
---@param DLHTime number
function AFutureCarrier:SetGMReviveParam(DQSTime, DLHTime) end
