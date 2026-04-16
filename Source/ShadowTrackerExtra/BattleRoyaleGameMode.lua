---@meta

---@class FGameModeDelegate : ULuaSingleDelegate
FGameModeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeDelegate:Bind(Callback, Obj) end

---执行委托
function FGameModeDelegate:Execute() end


---@class FAutoGroupParachuteTeam : ULuaSingleDelegate
FAutoGroupParachuteTeam = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAutoGroupParachuteTeam:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FAutoGroupParachuteTeam:Execute(Param1) end


---@class FRemoveActorDelegate : ULuaMulticastDelegate
FRemoveActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRemoveActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
function FRemoveActorDelegate:Broadcast(Param1) end


---@class ABattleRoyaleGameMode: ABattleRoyaleGameModeBase
---@field OnGameModeEnterFlying FGameModeDelegate
---@field OnGameModeExitFlying FGameModeDelegate
---@field bIsOpenNavlinkAbility boolean
---@field bDoOpenRadarAbility boolean
---@field bShowVehicleSetting_Helicopter boolean
---@field bShowVehicleSetting_UAV boolean
---@field StartReadyCountDownPlayerNum number
---@field bEnableAutoParachute boolean
---@field bEnableManualParachute boolean
---@field CharacterNetCullDistanceSquared number
---@field CharacterParachuteNetCullDistanceSquared number
---@field WeaponNetCullDistanceSquared number
---@field VehicleNetCullDistanceSquared number
---@field NavDataPath string
---@field NavLinkDataPath string
---@field SecondaryNavDataPath string
---@field LogicAreaDataPath string
---@field HurtGoblinScore number
---@field KillGoblinScore number
---@field DeleverTargetScore number
---@field NotMeetGoblinScore number
---@field DragOnGroundDownTraceDistance number
---@field DragOnGroundUpTraceDistance number
---@field bServerOpenCrowdManager boolean
---@field bReplacePistolWhenPickUpMainWeapon boolean
---@field bTeamRelevant boolean
local ABattleRoyaleGameMode = {}

function ABattleRoyaleGameMode:NotifyGameModeInit() end

function ABattleRoyaleGameMode:InitCrowdManager() end

function ABattleRoyaleGameMode:UnInitCrowdManager() end

---@param EnableTriggersName ULuaArrayHelper<string>
function ABattleRoyaleGameMode:OnIDIPTriggerEnableEvent(EnableTriggersName) end

---@param RelationShip EFatalDamageRelationShip
---@param MyPlayerState ASTExtraPlayerState
---@param CauserPlayerState ASTExtraPlayerState
---@param VictimPlayerState ASTExtraPlayerState
function ABattleRoyaleGameMode:OverrideFatalDamageRecordRelationShip(RelationShip, MyPlayerState, CauserPlayerState, VictimPlayerState) end
