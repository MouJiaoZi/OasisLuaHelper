---@meta

---@class EFortressDoorState
---@field EndOpen number
---@field BeginOpen number
---@field EndClose number
---@field BeginClose number
EFortressDoorState = {}


---@class EFortressContainerState
---@field None number
---@field Idle number
---@field Drop number
EFortressContainerState = {}


---刷僵尸的BGM的状态
---@class EBGMStatus
---@field Stop number
---@field Play_ZombieWarning number
---@field Play_SpawnZombie number
---@field Play_SpawnBoss number
---@field Play_BossDead number
EBGMStatus = {}


---@class EFortressDoorCategory
---@field Outter number
---@field Inner number
EFortressDoorCategory = {}


---@class FMiniMapData
---@field NormalIconID number
---@field GrayIconID number
FMiniMapData = {}


---@class FUITipsConfig
---@field UITipsTime number
---@field TipsID number
---@field bNeedNewbieGuide boolean
---@field bUITipsNotify boolean
FUITipsConfig = {}


---@class FNightBeginEndTime
---@field ElapsedSeconds number
---@field bDoorClose boolean
---@field FUITipsConfigList ULuaArrayHelper<FUITipsConfig>
FNightBeginEndTime = {}


---@class FRoaringTimeRange
---@field BeginSeconds number
---@field EndSeconds number
FRoaringTimeRange = {}


---@class FFortressDoorInfo
---@field FortressDoorCategory EFortressDoorCategory
---@field bOpen boolean
---@field WorldLocation FVector
FFortressDoorInfo = {}


---要塞actor, feishen, 20191205
---@class AFortress: AActor, ITriggerAction_SpawnItemInterface, ICircleFloatInterface
---@field DoorBeginCloseOrOpen FDoorBeginCloseOrOpen @门（除车库门）开始关闭或者打开
---@field GarageDoorBeginCloseOrOpen FDoorBeginCloseOrOpen @车库门开始关闭或者打开
---@field DoorEndCloseOrOpen FDoorEndCloseOrOpen @门（除车库门）完全关闭（IsAllDoorsCloseCompleted == true）或者完全打开（IsAllDoorsOpenCompleted == true)
---@field GarageDoorEndCloseOrOpen FDoorEndCloseOrOpen @车库门完全关闭（IsGarageDoorCloseCompleted == true）或者完全打开（IsGarageDoorOpenCompleted == true)
---@field FortressDoorState EFortressDoorState
---@field FortressGarageDoorState EFortressDoorState
---@field bRegisterGameMode boolean
---@field OpenLevelCheckDelay number
---@field CircleContainMaxFloatLength number
---@field MiniMapData FMiniMapData
---@field PlayerControllerList ULuaArrayHelper<ASTExtraPlayerController> @记录在要塞里面的玩家
---@field PlayerControllerListAddingOnly ULuaArrayHelper<ASTExtraPlayerController>
---@field TickCD number
---@field NightBeginEndTimeList ULuaArrayHelper<FNightBeginEndTime>
---@field FourCornnerLoc ULuaArrayHelper<FVector2D>
---@field FortressRoofZ number
---@field FortressFloorZ number
---@field LuaTickFreq number @生化主题, feishen, 20200922
---@field UseBiochemicalTheme boolean
---@field BossTreasure AActor
---@field CheatBoxTreasure ULuaMapHelper<number, number>
---@field UseBiochemicalThemeReset boolean
---@field BiochemicalThemeReset boolean
---@field UseSpawnDefaultZombie boolean
---@field SpawnDefaultZombieTag string
---@field DelaySpawnDefaultZombie number
---@field UseZombieCountControl boolean
---@field ZombieCountControlTotal number
---@field ZombieRoaringSpawnZombieCount number
---@field BoxPath string
---@field GunPath string
---@field CarPath string
---@field FuelPercent number
---@field bActiveByStartVolume boolean
---@field BossID number
---@field BossPath string
---@field UseSpawnBossDelayTimeUITips boolean
---@field SpawnBossDelayTime number
---@field BGMStatus EBGMStatus @刷僵尸的BGM的状态
---@field FortressContainerState EFortressContainerState
---@field UseModifyFog boolean
---@field DelayActiveFortressCD number
---@field TipsID_BossDeath number
---@field UseMaskFilter boolean
---@field MaskFilter number
---@field UseRoaringTimeRange boolean
---@field RoaringTimeRangeList ULuaArrayHelper<FRoaringTimeRange>
---@field ForbidHideContainer number
---@field TipsUICountDown number
---@field bActived boolean @要塞只被激活一次
---@field bSpawnBoss boolean
---@field SpawnBossDelayTimeCur number
---@field HostActionList ULuaArrayHelper<UObject>
---@field ZombieList ULuaArrayHelper<AActor>
---@field bActiveAndEndOpenKillAllZombied boolean
local AFortress = {}

---@param IconID number
function AFortress:ShowFortressMiniMapMark(IconID) end

function AFortress:HideFortressMiniMapMark() end

---@return boolean
function AFortress:IsLocalPlayerInFortress() end

---@param STExtraBaseCharacter ASTExtraBaseCharacter
---@return boolean
function AFortress:IsPlayerInFortress(STExtraBaseCharacter) end

function AFortress:FindPlayerInFortress() end

---开车库门
function AFortress:OpenGarageDoor() end

---关车库门
function AFortress:CloseGarageDoor() end

---门（除车库门）的数量
---@return number
function AFortress:GetDoorCount() end

---门（除车库门）是否打开
---@param Index number
---@return boolean
function AFortress:IsDoorOpen(Index) end

---设置门（除车库门）开关
---@param Index number
---@param bOpen boolean
function AFortress:SetDoorOpen(Index, bOpen) end

---门（除车库门）是否正在移动（正在打开或者正在关闭）
---@param Index number
---@return boolean
function AFortress:IsDoorMoving(Index) end

---刷新 GameMode 门状态
function AFortress:InvalidateGameModeDoorState() end

function AFortress:GetFortressDoorInfos() end

---@param bgm UAkAudioEvent
function AFortress:BPPlayAkAudioEvent(bgm) end

function AFortress:BPStopAkAudioEvent() end

function AFortress:PlayContainerIdleAnimation() end

function AFortress:PlayContainerDropAnimation() end

function AFortress:SetToStatic() end

---处理碰撞盒子忽略玩家
function AFortress:SetCollisionBoxMaskFilter() end

function AFortress:LuaTick() end

---@param Sender AFortress
function AFortress:OnFortressDoorBeginCloseOrOpen(Sender) end

---@param Sender AFortress
function AFortress:OnFortressGarageDoorBeginCloseOrOpen(Sender) end

---@param Sender AFortress
function AFortress:OnFortressDoorEndCloseOrOpen(Sender) end

---@param Sender AFortress
function AFortress:OnFortressGarageDoorEndCloseOrOpen(Sender) end

function AFortress:OnRep_FortressDoorState() end

function AFortress:OnRep_FortressGarageDoorState() end

function AFortress:OnRep_BGMStatus() end

function AFortress:OnRep_FortressContainerState() end

---@param State EFortressContainerState
function AFortress:ModifyFortressContainerState(State) end

---@param State EFortressContainerState
function AFortress:OnModifyFortressContainerState(State) end

---车库门是否完全关闭（处于关闭状态并且不处于 Moving）
---@return boolean
function AFortress:IsGarageDoorCloseCompleted() end

---车库门是否完全关闭（处于打开状态并且不处于 Moving）
---@return boolean
function AFortress:IsGarageDoorOpenCompleted() end
