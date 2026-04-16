---@meta

---@class FWeaponsCompanionOnRescueDelegate : ULuaMulticastDelegate
FWeaponsCompanionOnRescueDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, RescuerKey: number, WoundedKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponsCompanionOnRescueDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param RescuerKey number
---@param WoundedKey number
function FWeaponsCompanionOnRescueDelegate:Broadcast(RescuerKey, WoundedKey) end


---@class FWeaponsCompanionOnDestinyCircleOver : ULuaSingleDelegate
FWeaponsCompanionOnDestinyCircleOver = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FWeaponsCompanionOnDestinyCircleOver:Bind(Callback, Obj) end

---执行委托
function FWeaponsCompanionOnDestinyCircleOver:Execute() end


---@class UWeaponsCompanionGameModeComponent: UGameModeBaseComponent
---@field WeaponsCompanionEnable boolean
---@field FirstKiller number
---@field LastKiller number
---@field OnRescueDelegate FWeaponsCompanionOnRescueDelegate
---@field PlayerComponentList ULuaArrayHelper<UWeaponsCompanionVoiceComponent>
---@field DestinyCircleList ULuaArrayHelper<ASTExtraPlayerController>
---@field OnDestinyCircleOver FWeaponsCompanionOnDestinyCircleOver
local UWeaponsCompanionGameModeComponent = {}

---@return boolean
function UWeaponsCompanionGameModeComponent:GetEnableErrorReport() end

---@return boolean
function UWeaponsCompanionGameModeComponent:GetEnableSilenceTest() end

---@param reportMessage string
function UWeaponsCompanionGameModeComponent:ReportErrorMessage(reportMessage) end

---@param gameMode AActor
---@return number
function UWeaponsCompanionGameModeComponent:GetLastKiller_Static(gameMode) end

---@param gameMode AActor
---@return number
function UWeaponsCompanionGameModeComponent:GetFirstKiller_Static(gameMode) end

function UWeaponsCompanionGameModeComponent:Init() end

function UWeaponsCompanionGameModeComponent:InitPlayersComponent() end

---@param gameMode AUAEGameMode
---@param teamPlayers ULuaArrayHelper<AUAEPlayerController>
---@param compClass UClass
function UWeaponsCompanionGameModeComponent:InitTeamComponent(gameMode, teamPlayers, compClass) end

---@param playerController ASTExtraPlayerController
---@return boolean
function UWeaponsCompanionGameModeComponent:NeedOpenWeaponsCompanion(playerController) end

---@param data FPlayerFatalDamageData
function UWeaponsCompanionGameModeComponent:OnPlayerCauseFatalDamage(data) end

function UWeaponsCompanionGameModeComponent:OnKillFakeAI() end

---@param SavorKey number
---@param InjuredKey number
function UWeaponsCompanionGameModeComponent:OnPlayerRescueOthers(SavorKey, InjuredKey) end

---@param circleIndex number
---@param maxCircleIndex number
---@param circleStatus number
function UWeaponsCompanionGameModeComponent:OnCircleStateChange(circleIndex, maxCircleIndex, circleStatus) end

---@param playerKey number
---@return boolean
function UWeaponsCompanionGameModeComponent:IsInDestinyCircleList(playerKey) end
