---@meta

---@class EPVETeleportType
---@field TeleportPoint number @传送点传送
---@field AutoTeleport number @自动传送
EPVETeleportType = {}


---@class FPVETeamInfo
---@field Score number @分数
---@field TeamID number @队伍ID
FPVETeamInfo = {}


---@class FPVEMiniMap
---@field MapPath string @小地图纹理路径
---@field MapCentre FVector @地图中心坐标
---@field MapSize number @地图大小
---@field BoundsCenter FVector @地图中心坐标 - 正常使用这个, 配合LevelBound会自动计算
---@field BoundsBox FBox @地图大小 - 正常使用这个, 配合LevelBound会自动计算
---@field MapScale number @地图缩放比
FPVEMiniMap = {}


---@class FPVEMiniMapSwitchedDelegate : ULuaMulticastDelegate
FPVEMiniMapSwitchedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVEMiniMapSwitchedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FPVEMiniMapSwitchedDelegate:Broadcast(InstanceID) end


---@class FPVETeamDataChangeDelegate : ULuaMulticastDelegate
FPVETeamDataChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVETeamDataChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FPVETeamDataChangeDelegate:Broadcast(InstanceID) end


---@class FPVERefreshTeleportPointDelegate : ULuaMulticastDelegate
FPVERefreshTeleportPointDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVERefreshTeleportPointDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FPVERefreshTeleportPointDelegate:Broadcast(InstanceID) end


---@class FPVERefreshStageDelegate : ULuaMulticastDelegate
FPVERefreshStageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number, Stage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVERefreshStageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
---@param Stage number
function FPVERefreshStageDelegate:Broadcast(InstanceID, Stage) end


---@class APVECommonGameModeActor: AGameModeActor
---@field GameTotalScore number
---@field TeleportType EPVETeleportType
---@field ConditionClassList ULuaArrayHelper<UPVEBaseCondition>
---@field SettlementType ESettlementType
---@field bLevelReward boolean
---@field LevelRewardClass UPVELevelReward
---@field bLevelSettlement boolean
---@field SettlementClass UPVESettlement
---@field bResetData boolean
---@field ResetDataClass UPVEResetData
---@field MiniMapConfig FPVEMiniMap
---@field GetPlayerStartInOrder number
---@field OnMiniMapSwitched FPVEMiniMapSwitchedDelegate @切换小地图事件
---@field OnTeamDataChange FPVETeamDataChangeDelegate @团队数据改变事件
---@field OnLevelSettlement FPVEGameSettlementDelegate @结算事件
---@field OnRefreshTeleportPoint FPVERefreshTeleportPointDelegate @刷新出生点事件
---@field OnRefreshStage FPVERefreshStageDelegate @刷新关卡数事件
---@field ConstantPlayerStarts ULuaArrayHelper<APlayerStart>
---@field bPlayerStartsInitialized boolean
---@field bGameActivate boolean
---@field bInstanceSettled boolean
---@field bIsSettled boolean
---@field bIsEndReward boolean
---@field TeamScore ULuaArrayHelper<FPVETeamInfo>
---@field CurrentStage number
---@field ConditionList ULuaArrayHelper<UPVEBaseCondition>
---@field bRefreshTeleportPoint boolean
---@field PVEDelayToggleLevelInstancesTimerHandle FTimerHandle
local APVECommonGameModeActor = {}

---@return boolean
function APVECommonGameModeActor:LuaSceneLoadComplete() end

function APVECommonGameModeActor:FindLevelBounds() end

function APVECommonGameModeActor:CollectPlayerStarts() end

---@param Tag string
function APVECommonGameModeActor:CollectPlayerStartsWithTag(Tag) end

---@param NewTeamId number
---@param Score number
function APVECommonGameModeActor:OnAddScore(NewTeamId, Score) end

---跳转到下一个副本 集体传送
function APVECommonGameModeActor:GotoNextScene() end

---跳转到下一个副本 个人传送
---@param PC ASTExtraPlayerController
---@return boolean
function APVECommonGameModeActor:GoToNextSceneForPlayer(PC) end

---是否需要跳转到下个副本
---@return boolean
function APVECommonGameModeActor:NeedGotoNextScene() end

---获取下个副本Index
---@return number
function APVECommonGameModeActor:GetNextSceneIndex() end

---预加载下个场景
---@return boolean
function APVECommonGameModeActor:PreLoadNextScene() end

---设置副本是否激活, 切换副本时调用
---@param Activate boolean
function APVECommonGameModeActor:SetGameActivate(Activate) end

---设置当前是第几关, 切换副本时调用
---@param Stage number
function APVECommonGameModeActor:SetCurrentStage(Stage) end

---@return boolean
function APVECommonGameModeActor:NeedGameSettlement() end

---@param IsFinish boolean
function APVECommonGameModeActor:OnSettlement(IsFinish) end

function APVECommonGameModeActor:ConfirmInstanceSettlement() end

function APVECommonGameModeActor:OnLevelReward() end

---@param InstanceID number
function APVECommonGameModeActor:OnLevelRewardFinished(InstanceID) end

---@param InstanceID number
function APVECommonGameModeActor:OnLevelSettlementFinished(InstanceID) end

function APVECommonGameModeActor:OnResetData() end

function APVECommonGameModeActor:RefreshTeleportPoint() end

function APVECommonGameModeActor:OnRep_TeamScore() end

function APVECommonGameModeActor:OnRep_RefreshTeleportPoint() end

function APVECommonGameModeActor:OnRep_CurrentStage() end

---@return FPVEMiniMap
function APVECommonGameModeActor:GetMiniMapConfig() end

function APVECommonGameModeActor:ConstructLevelInstances() end
