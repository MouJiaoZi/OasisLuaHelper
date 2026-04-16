---@meta

---@class EDungeonSwitch
---@field RandomSwitch number @随机切换
---@field FixedSwitch number @固定切换
---@field CustomSwitch number @自定义切换
EDungeonSwitch = {}


---@class ESettlementType
---@field Team number @队伍分数结算
---@field AllTeams number @全部队伍分数结算
ESettlementType = {}


---@class FPVEGameModeActorInfo
---@field SceneIndexList ULuaArrayHelper<number> @副本组的Index列表
---@field CurrentSceneIndex number @当前副本的Index
---@field PCList ULuaArrayHelper<ASTExtraPlayerController> @记录当前GameModeActor所在玩家
---@field Status string
---@field InstanceID number @副本实例ID
---@field DungeonCounter number @切换过副本的次数统计
---@field StartTime number @副本开始时间
---@field IsTimeOut boolean @副本是否超时
---@field TeamScore ULuaMapHelper<number, number> @分数, 按队伍区分 记录在副本中得分判断是否整个副本完成
---@field IsSettlement boolean @记录副本是否结算了
FPVEGameModeActorInfo = {}


---@class FPVEGameTimeOutDelegate : ULuaMulticastDelegate
FPVEGameTimeOutDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVEGameTimeOutDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FPVEGameTimeOutDelegate:Broadcast(InstanceID) end


---@class FPVEGameSettlementDelegate : ULuaMulticastDelegate
FPVEGameSettlementDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number, IsFinish: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVEGameSettlementDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
---@param IsFinish boolean
function FPVEGameSettlementDelegate:Broadcast(InstanceID, IsFinish) end


---@class FPVEGameLevelTransportAllPlayerDelegate : ULuaMulticastDelegate
FPVEGameLevelTransportAllPlayerDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVEGameLevelTransportAllPlayerDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FPVEGameLevelTransportAllPlayerDelegate:Broadcast(InstanceID) end


---@class FPVEGameLevelTransportPlayerDelegate : ULuaMulticastDelegate
FPVEGameLevelTransportPlayerDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number, PlayerUID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVEGameLevelTransportPlayerDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
---@param PlayerUID number
function FPVEGameLevelTransportPlayerDelegate:Broadcast(InstanceID, PlayerUID) end


---@class UPVECommonGameModeActorMgr: UGameModeActorMgr
---@field PVEGameModeActorClass ULuaArrayHelper<APVECommonGameModeActor>
---@field bIsPositionFixed boolean
---@field FixedLocations ULuaArrayHelper<FVector>
---@field GameTotalScore number
---@field DungeonSwitchType EDungeonSwitch
---@field LevelSwitchRulesClass UPVEBaseLevelSwitchRules
---@field SpawnDungeonNum number
---@field FinalDungeonIndex number
---@field DungeonOrder ULuaArrayHelper<number>
---@field ConditionClassList ULuaArrayHelper<UPVEBaseCondition>
---@field UsePVEGameTotalTime boolean
---@field PVEGameTotalTime number
---@field GameTimeOutClass UPVETimeOut
---@field SettlementType ESettlementType
---@field SettlementClass UPVESettlement
---@field PVEGameModeActorInfoList ULuaArrayHelper<FPVEGameModeActorInfo>
---@field ConditionList ULuaArrayHelper<UPVEBaseCondition>
---@field OnPVEGameTimeOut FPVEGameTimeOutDelegate
---@field OnPVEGameSettlement FPVEGameSettlementDelegate
---@field OnLevelTransportAllPlayer FPVEGameLevelTransportAllPlayerDelegate
---@field OnLevelTransportPlayer FPVEGameLevelTransportPlayerDelegate
---@field CreateInstanceWithTeamID boolean
---@field NumPlayersPerInstanceForPIE number
---@field PlayerCounterForPIE number
---@field InstanceCounterForPIE number
local UPVECommonGameModeActorMgr = {}

---跳转到下一个副本 集体传送
---@param InstanceID number
---@return boolean
function UPVECommonGameModeActorMgr:PVEGoToNextSceneForAllPlayer(InstanceID) end

---跳转到下一个副本 单人传送
---@param PC ASTExtraPlayerController
---@return boolean
function UPVECommonGameModeActorMgr:PVEGoToNextSceneForPlayer(PC) end

---获取下个副本Index
---@param InstanceID number
---@return number
function UPVECommonGameModeActorMgr:PVEGetNextSceneIndex(InstanceID) end

---是否需要跳转到下个副本
---@param InstanceID number
---@return boolean
function UPVECommonGameModeActorMgr:PVENeedGotoNextScene(InstanceID) end

---@param Index number
---@return number
function UPVECommonGameModeActorMgr:LuaGetNextSceneIndex(Index) end

---@param IsNeed boolean
---@return boolean
function UPVECommonGameModeActorMgr:LuaNeedGotoNextScene(IsNeed) end

---预加载下副本场景
---@param InstanceID number
---@return boolean
function UPVECommonGameModeActorMgr:PVEPreLoadNextScene(InstanceID) end

---@param Controller APlayerController
function UPVECommonGameModeActorMgr:PostLogin(Controller) end

---@param Controller APlayerController
function UPVECommonGameModeActorMgr:PlayerLogout(Controller) end

---begin 副本实例接口
---@param InstanceID number
function UPVECommonGameModeActorMgr:OnInstanceAdded(InstanceID) end

---@param InstanceID number
---@param ConfigData UInstanceBaseConfig
function UPVECommonGameModeActorMgr:OnInstanceDataReceived(InstanceID, ConfigData) end

---@param InstanceID number
function UPVECommonGameModeActorMgr:OnInstanceRemoved(InstanceID) end

---begin 副本游戏流程接口
---@param InstanceID number
---@param IsFinish boolean
---@return boolean
function UPVECommonGameModeActorMgr:OnInstanceSettlement(InstanceID, IsFinish) end

---@param InstanceID number
---@param TeamID number
---@param Score number
---@return boolean
function UPVECommonGameModeActorMgr:OnAddScore(InstanceID, TeamID, Score) end
