---@meta

---@class ZombieKind
---@field zombie_NomalM number
---@field zombie_NomalF number
---@field zombie_Bomb number
---@field zombie_Tank number
---@field zombie_Tyrant number
---@field zombie_Venom number
---@field zombie_Dog number
---@field zombie_Jump number
---@field zombie_Scientist number
---@field zombie_Squealer number
---@field zombie_Raven number
---@field zombie_Master number
ZombieKind = {}


---所有状态
---@class EMobStateType
---@field HealthState0 number @血量状态HealthState0，值为0
---@field HealthState1 number @血量状态HealthState1，值为1
---@field HealthState2 number @血量状态HealthState2，值为2
EMobStateType = {}


---@class FSTExtraZombieCharacterCallBackDelegate : ULuaSingleDelegate
FSTExtraZombieCharacterCallBackDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSTExtraZombieCharacterCallBackDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FSTExtraZombieCharacterCallBackDelegate:Execute(Param1) end


---@class ASTExtraZombieCharacter: ASTExtraSimpleCharacter, IManagedActorInterface, ISTExtraInputInterface
---@field ZombieKD ZombieKind
---@field MonsterName string
---@field MoveSpeedScaleInNight number
---@field bDropDeadBox boolean
---@field HeadDamageScale number
---@field bApplyZombieHitBodyDamageScale boolean
---@field ZombieHitBodyDamageScaleMap ULuaMapHelper<EAvatarDamagePosition, number>
---@field bInWater boolean
---@field DefaultTag string
---@field ItemValueCategory string @记录僵尸所属类型，用来控制存活比例，feishen, 20210101
---@field DropBulletCfgTableName string
---@field InvincibleTime number
---@field CurrentHealthState EMobStateType
---@field MaskFilter number @设置僵尸的MaskFilter, 使得僵尸能穿越特殊碰撞, feishen, 20191231
---@field ForbidRoaring boolean
---@field MiniMapIconID number
---@field MiniMapTickInterval number
---@field bUpdateMiniMapIconOnClient number
---@field bUpdateMiniMapIconOnServer number
---@field MiniMapIconUpdateDistanceThresold number
---@field MinFlySimulateSyncSyncSpeed number
---@field EndViewTargetUseCharacterRot boolean
---@field bEnableVoiceCheckCD boolean
---@field voiceCheckCD number
---@field voiceCheckShowCD number
---@field voiceCheckDis number
---@field voiceCheckBrush FSlateBrush
---@field bForceSpectatorNoRelevance boolean
---@field bEnableNotNetRelevantInLua boolean @已废弃, IsNetRelevantFor可能在非Game线程中调用, 引发未知问题
---@field bOnlyRelevantToTargetEnemy boolean
---@field HitEffectSwitch boolean
---@field bCustomCheckShouldPlayFleshEffectOnDamage boolean
local ASTExtraZombieCharacter = {}

function ASTExtraZombieCharacter:OnRespawned_BP() end

function ASTExtraZombieCharacter:OnRecycled_BP() end

function ASTExtraZombieCharacter:RefreshPlayerName() end

---@return number
function ASTExtraZombieCharacter:GetForwardVel() end

---@param WeatherMgr ADynamicWeatherMgr
---@param Event FWeatherChangeEvent
function ASTExtraZombieCharacter:OnWeatherChangeEvent(WeatherMgr, Event) end

function ASTExtraZombieCharacter:OnRepInWater() end

---@param inWater boolean
function ASTExtraZombieCharacter:OnInWaterStateChange(inWater) end

---@param NewController AController
function ASTExtraZombieCharacter:PossessedBy(NewController) end

---@param CurrentState EMobStateType
---@param bPlayAnimation boolean
function ASTExtraZombieCharacter:BP_OnHealthStateChange(CurrentState, bPlayAnimation) end

function ASTExtraZombieCharacter:OnRep_ZombieHealthState() end

---@param CurrentState EMobStateType
function ASTExtraZombieCharacter:BroadcastZombieHealthStateChange(CurrentState) end

function ASTExtraZombieCharacter:OnRep_SetMaskFilter() end

---@param Tag string
function ASTExtraZombieCharacter:DoZombieCharacterCallBackDelegate(Tag) end

function ASTExtraZombieCharacter:ShowMiniMap() end

function ASTExtraZombieCharacter:HideMiniMap() end

function ASTExtraZombieCharacter:UpdateMiniMap() end

---@param OutLocation FVector
---@param OutRotation FRotator
function ASTExtraZombieCharacter:GetMiniMapLocationAndRotation(OutLocation, OutRotation) end

---@return FRotator
function ASTExtraZombieCharacter:GetViewRotation() end

function ASTExtraZombieCharacter:OnRep_Owner() end

function ASTExtraZombieCharacter:OnRepOwnerEvent() end

---@param RealViewer AActor
---@param ViewTarget AActor
---@param SrcLocation FVector
---@return boolean
function ASTExtraZombieCharacter:IsNotNetRelevantInLua(RealViewer, ViewTarget, SrcLocation) end

---@return boolean
function ASTExtraZombieCharacter:CustomShouldPlayFleshEffectOnDamage() end
