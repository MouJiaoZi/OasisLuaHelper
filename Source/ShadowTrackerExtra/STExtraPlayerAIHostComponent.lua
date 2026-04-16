---@meta

---@class FAIHostControllerCachedData
FAIHostControllerCachedData = {}


---@class FOnRepAIHostedDelegate : ULuaMulticastDelegate
FOnRepAIHostedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bAIHosted: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepAIHostedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bAIHosted boolean
function FOnRepAIHostedDelegate:Broadcast(bAIHosted) end


---@class USTExtraPlayerAIHostComponent: UActorComponent
---@field OnRepAIHostedDelegate FOnRepAIHostedDelegate
---@field bAutoStartAIHost boolean
---@field bAutoStopAIHost boolean
---@field NoInputEnterAIHostTime number
---@field KickOutTime number
---@field CancelSkills ULuaArrayHelper<AUTSkill>
---@field ClearBBKs ULuaArrayHelper<string>
---@field ShootingSimulatePawnRotationPeriod number
---@field AIFeatureID number
---@field DefaultAIFeatureConfigID number
---@field AIFeatureInfo FAIFeatureInfo
---@field AIShootMissInfo FAIShootMissInfo
---@field shootingPoseOffsetInfo FAIShootingPoseOffsetInfo
---@field AITargetInViewOffset FAITargetInViewOffset
---@field AIType number
---@field BindActionNames ULuaArrayHelper<string>
---@field BindAxisNames ULuaArrayHelper<string>
---@field BindAxisKeys ULuaArrayHelper<FKey>
---@field bUseDefaultDamageScale boolean
---@field DefaultDamageScale number
---@field BehaviorTreeTickInterval number @行为树Tick频率
---@field AIFeatureInfoTableName string @AI属性表配置表
---@field AIWeaponRangeTableName string
---@field AIDifficultyInfoTableName string @AI 全局属性配置表
---@field AITagTableName string
---@field HitRateConfigNum number
---@field DefaultNavigationFilterClass UNavigationQueryFilter
---@field LastAIWayPointID number
---@field CurAIWayPointID number
---@field bStopAILogicOnUnposses number
---@field ActorLocationTetherDistance number
---@field bAIHosted boolean
---@field bAllowStrafe number
---@field bSetControlRotationFromPawnOrientation number @Copy Pawn rotation to ControlRotation, if there is no focus point.
---@field AIHostCachedData FAIHostControllerCachedData
---@field AIControllerCachedData FAIControllerCachedData
---@field CheckPeriod number
---@field RandomDeviation number
---@field ProtectCountdownTime number
---@field SpawnEquipDelayTime number
---@field SpawnEquipFreezeRadius number
---@field ProtectShootRadius FVector2D
---@field NoTouchTimeStamp number
---@field AIHostedTime number
---@field bIsShooting boolean
---@field AIHostDuration number @托管单局持续时间
---@field ShootingSimulatePawnRotationTime number @主动托管朝向同步时间时间
---@field AIHostCount number @托管单局进入次数
local USTExtraPlayerAIHostComponent = {}

---@return boolean
function USTExtraPlayerAIHostComponent:StartAIHosting() end

function USTExtraPlayerAIHostComponent:StopAIHosting() end

function USTExtraPlayerAIHostComponent:ServerRequestStartAIHosting() end

function USTExtraPlayerAIHostComponent:ServerRequestStopAIHosting() end

function USTExtraPlayerAIHostComponent:KickOutPlayer() end

---@param BTAsset UBehaviorTree
function USTExtraPlayerAIHostComponent:PostStartAIHosting(BTAsset) end

function USTExtraPlayerAIHostComponent:PostStopAIHosting() end

---@param InFeatureID number
---@return boolean
function USTExtraPlayerAIHostComponent:InitAI(InFeatureID) end

---@param CurrentTime number
---@param MissRange FVector2D
---@param MissOnPurposeCD number
function USTExtraPlayerAIHostComponent:UpdateAIMissShootInfo(CurrentTime, MissRange, MissOnPurposeCD) end

---@param PlayerController ASTExtraPlayerController
---@return number
function USTExtraPlayerAIHostComponent:GetRatingDamageFiringAccuRadius(PlayerController) end

---@param OtherCtrl AController
---@return boolean
function USTExtraPlayerAIHostComponent:IsCampFriendlyWith(OtherCtrl) end

---@param NewPawn APawn
function USTExtraPlayerAIHostComponent:SetCurAttackMeEnemy(NewPawn) end

---@param ShootTargetLocation FVector
function USTExtraPlayerAIHostComponent:RPCClientStartFire(ShootTargetLocation) end

function USTExtraPlayerAIHostComponent:RPCClientStopFire() end

---初始化AI属性
---@param InID number
function USTExtraPlayerAIHostComponent:InitAIFeatureInfo(InID) end

function USTExtraPlayerAIHostComponent:OnRep_bAIHosted() end

function USTExtraPlayerAIHostComponent:OnAutonomousClientEnterAIHost() end

function USTExtraPlayerAIHostComponent:OnAutonomousClientExitAIHost() end

---@param NewlyClaimed FGameplayResourceSet
---@param FreshlyReleased FGameplayResourceSet
function USTExtraPlayerAIHostComponent:OnGameplayTaskResourcesClaimed(NewlyClaimed, FreshlyReleased) end

---@return FVector
function USTExtraPlayerAIHostComponent:GetFocalPoint() end

---@param Actor AActor
---@return FVector
function USTExtraPlayerAIHostComponent:GetFocalPointOnActor(Actor) end

---@param Dest FVector
---@param AcceptanceRadius number
---@param bStopOnOverlap boolean
---@param bUsePathfinding boolean
---@param bProjectDestinationToNavigation boolean
---@param bCanStrafe boolean
---@param FilterClass UNavigationQueryFilter
---@param bAllowPartialPath boolean
---@param bUseNavLink boolean
---@return EPathFollowingRequestResult
function USTExtraPlayerAIHostComponent:MoveToLocation(Dest, AcceptanceRadius, bStopOnOverlap, bUsePathfinding, bProjectDestinationToNavigation, bCanStrafe, FilterClass, bAllowPartialPath, bUseNavLink) end

function USTExtraPlayerAIHostComponent:ClearAllFocus() end

---@return number
function USTExtraPlayerAIHostComponent:GetCurrTimeStamp() end
