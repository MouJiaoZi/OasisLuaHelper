---@meta

---@class FZombieWaveInfo
---@field ZombieWaveLocation FVector
---@field ZombieWaveIndex number
FZombieWaveInfo = {}


---@class FOnZombieWaveWarningDelegate : ULuaMulticastDelegate
FOnZombieWaveWarningDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TimeToWaveStart: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnZombieWaveWarningDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TimeToWaveStart number
function FOnZombieWaveWarningDelegate:Broadcast(TimeToWaveStart) end


---@class FOnZombieWaveStartDelegate : ULuaSingleDelegate
FOnZombieWaveStartDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnZombieWaveStartDelegate:Bind(Callback, Obj) end

---执行委托
function FOnZombieWaveStartDelegate:Execute() end


---@class FOnShowMonsterBox : ULuaMulticastDelegate
FOnShowMonsterBox = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MonsterBoxIndex: number, MonsterBoxLocation: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShowMonsterBox:Add(Callback, Obj) end

---触发 Lua 广播
---@param MonsterBoxIndex number
---@param MonsterBoxLocation FVector
function FOnShowMonsterBox:Broadcast(MonsterBoxIndex, MonsterBoxLocation) end


---@class FOnHideMonsterBox : ULuaMulticastDelegate
FOnHideMonsterBox = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MonsterBoxIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHideMonsterBox:Add(Callback, Obj) end

---触发 Lua 广播
---@param MonsterBoxIndex number
function FOnHideMonsterBox:Broadcast(MonsterBoxIndex) end


---@class FOnZombieTimerTipsDelegate : ULuaMulticastDelegate
FOnZombieTimerTipsDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TipsID: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnZombieTimerTipsDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TipsID string
function FOnZombieTimerTipsDelegate:Broadcast(TipsID) end


---@class FOnZombieWaveListChangeDelegate : ULuaMulticastDelegate
FOnZombieWaveListChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurZombieWaveInfoList: ULuaArrayHelper<FZombieWaveInfo>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnZombieWaveListChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurZombieWaveInfoList ULuaArrayHelper<FZombieWaveInfo>
function FOnZombieWaveListChangeDelegate:Broadcast(CurZombieWaveInfoList) end


---@class AZombieGameState: ASTExtraGameStateBase
---@field EscapedHelicopterNum number
---@field HelicopterNum number
---@field EscapeCountingDown number
---@field EvacuationFlareLocArray ULuaArrayHelper<FVector>
---@field OnZombieWaveWarning FOnZombieWaveWarningDelegate
---@field OnZombieWaveStart FOnZombieWaveStartDelegate
---@field OnShowMonsterBox FOnShowMonsterBox
---@field OnHideMonsterBox FOnHideMonsterBox
---@field OnZombieWaveListChange FOnZombieWaveListChangeDelegate
---@field OnZombieTimerTipsReceive FOnZombieTimerTipsDelegate
---@field ZombieWaveInfoList ULuaArrayHelper<FZombieWaveInfo>
---@field RainforceGrenadeCount number
---@field EvacuationFlareOwnerArray ULuaArrayHelper<AActor>
---@field EvacuationHelicopterArray ULuaArrayHelper<ARescueHelicopterBase>
---@field LastUseEvacuationFlarePlayerName string
---@field FirstPickEvacuationFlarePlayerName string
local AZombieGameState = {}

function AZombieGameState:OnRep_EscapedHelicopterNum() end

function AZombieGameState:OnRep_HelicopterNum() end

function AZombieGameState:OnRep_EscapeCountingDown() end

function AZombieGameState:OnRep_EvacuationFlareLocChange() end

---@param PlayerName string
function AZombieGameState:BroadcastPlayerUseEvacuationFlare(PlayerName) end

function AZombieGameState:BroadcastSearchRangeConfirmed() end

---@param TipsID string
function AZombieGameState:BroadcastZombieTimerTips(TipsID) end

---@param time number
function AZombieGameState:BroadcastWarningZombieWave(time) end

function AZombieGameState:BroadcastStartZombieWave() end

function AZombieGameState:BroadcastFinishZombieWave() end

---@param MonsterBoxIndex number
---@param MonsterBoxLocation FVector
function AZombieGameState:BroadcastShowMonsterBox(MonsterBoxIndex, MonsterBoxLocation) end

---@param MonsterBoxIndex number
function AZombieGameState:BroadcastHideMonsterBox(MonsterBoxIndex) end

---@param FlareOwner AActor
function AZombieGameState:AddNewFlareOwnerToArray(FlareOwner) end

---@param FlareOwner AActor
function AZombieGameState:RemoveFlareOwnerFromArray(FlareOwner) end

---@param InActor AActor
---@return boolean
function AZombieGameState:IsActorInFlareOwnerArray(InActor) end

---@param InHelicopter ARescueHelicopterBase
function AZombieGameState:AddEvacuationHelicopterToArray(InHelicopter) end

---@param InHelicopter ARescueHelicopterBase
function AZombieGameState:RemoveEvacuationHelicopterFromArray(InHelicopter) end

---@param OutList ULuaArrayHelper<ARescueHelicopterBase>
function AZombieGameState:GetHelicopterList(OutList) end

---@param PlayerName string
function AZombieGameState:NotifyGameStatePlayerPickUpFlare(PlayerName) end

---@param PlayerName string
function AZombieGameState:BroadcastFirstPickUpFlare(PlayerName) end

---@param ZombieWaveIndex number
---@return boolean
function AZombieGameState:IsValideZombieWave(ZombieWaveIndex) end

function AZombieGameState:OnRep_ZombieWaveInfoList() end

function AZombieGameState:OnRep_EvacuationHelicopterArray() end
