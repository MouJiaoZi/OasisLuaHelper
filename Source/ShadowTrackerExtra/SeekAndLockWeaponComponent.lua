---@meta

---@class ESeekAndLockStage
---@field ESeekAndLockStage_None number
---@field ESeekAndLockStage_1 number
---@field ESeekAndLockStage_2 number
---@field ESeekAndLockStage_3 number
ESeekAndLockStage = {}


---@class FHistoryLockMapDataItem
---@field LockTime number
---@field FrameLength number
---@field CacheTime number
FHistoryLockMapDataItem = {}


---@class FSeekAndLockStageConfig
---@field LockTotalTime number
---@field ShrinkSpeed number
FSeekAndLockStageConfig = {}


---@class ISeekAndLockOwnerInterface
ISeekAndLockOwnerInterface = {}

---@param TargetComponent USeekAndLockWeaponComponent
---@return boolean
function ISeekAndLockOwnerInterface:CanBeSeekAndLocked(TargetComponent) end

---@return boolean
function ISeekAndLockOwnerInterface:CanHearWeaponLockSound() end

---@return boolean
function ISeekAndLockOwnerInterface:NeedPlayLockedByEnemy2DSoundOnSimulatedClient() end

---@return FVector
function ISeekAndLockOwnerInterface:GetLocationForSeekAndLock() end

function ISeekAndLockOwnerInterface:PlayLockedByEnemy2DSound() end

function ISeekAndLockOwnerInterface:StopPlayedLockedByEnemy2DSound() end

function ISeekAndLockOwnerInterface:PlayEnemyLaunchRocket2DSound() end

function ISeekAndLockOwnerInterface:StopPlayedEnemyLaunchRocket2DSound() end

function ISeekAndLockOwnerInterface:HandleSeekLockRocketExplodedOnServer() end

function ISeekAndLockOwnerInterface:StopPlayAllWeaponLockSound() end

---@return boolean
function ISeekAndLockOwnerInterface:IsInterferingWithLocking() end


---跟踪导弹锁定组件
---@class USeekAndLockWeaponComponent: UWeaponLogicBaseComponent
---@field SeekAndLockTargetClassConfigList ULuaArrayHelper<AActor>
---@field SeekAndLockTargetClassBlackConfigList ULuaArrayHelper<AActor>
---@field SeekAreaPixelSize number
---@field bUseWholeScreenAsSeekArea boolean
---@field Stage1Confog FSeekAndLockStageConfig
---@field Stage2Confog FSeekAndLockStageConfig
---@field ScopeInDelayTime number
---@field InitialLockFrameLength number
---@field FinalLockFrameLength number
---@field MaxSeekDeistance number
---@field DSMaxSeekDisVerifyOffset number
---@field LineTraceTargetMaxDistance number
---@field HistoryLockDataMaxCacheTime number
---@field TrySeekAndGetLockTargetInterval number
---@field CheckSeekAndGetLockTargetVisibilityInterval number
---@field TraceTargetInterval number
---@field TraceTargetIntervalNoLaserTrace number
---@field SeekAndLockStageTipsMap ULuaMapHelper<ESeekAndLockStage, string>
---@field LockStageBeginSoundConfig ULuaMapHelper<ESeekAndLockStage, UAkAudioEvent>
---@field EnemyLockStageBeginSoundConfig ULuaMapHelper<ESeekAndLockStage, UAkAudioEvent>
---@field HideVehicleUIMsg string
---@field ShowVehicleUIMsg string
---@field bNeedDrawUI boolean
---@field OnSeekAndLockStageEnterDelegate FOnSeekAndLockStageEnterDelegate
---@field OnChangeTraceTargetLocDelegate FOnChangeTraceTargetLocDelegate
---@field OnChangeSeekAndLockStageTipDelegate FOnChangeSeekAndLockStageTipDelegate
---@field CurTrySeekAndGetLockTargetInterval number
---@field CurCheckSeekAndGetLockTargetVisibilityInterval number
---@field CurTraceTargetCountTime number
---@field bHasShowSeekAndLock3DUI boolean
---@field bEnable3DUI boolean
---@field bHasHideGameUI boolean
---@field bUseCancelLockRPCOnPC boolean
---@field bCanLockVehicleInSameCamp boolean
local USeekAndLockWeaponComponent = {}

---@return ESeekAndLockStage
function USeekAndLockWeaponComponent:GetCurrentSeekAndLockStage() end

---@param Target AActor
---@return boolean
function USeekAndLockWeaponComponent:CheckTargetClassIsIncluedByClassMap(Target) end

function USeekAndLockWeaponComponent:ResetSeekAndLockData() end

function USeekAndLockWeaponComponent:InitComplete() end

---@param Target AActor
---@param Sound UAkAudioEvent
function USeekAndLockWeaponComponent:PlaySound(Target, Sound) end

---@param Desc string
function USeekAndLockWeaponComponent:RecoverHideUIFailedReport(Desc) end

---@param OldTarget AActor
function USeekAndLockWeaponComponent:OnRep_CurSeekLockTargetRep(OldTarget) end

---@param LockTarget AActor
function USeekAndLockWeaponComponent:RPC_Server_NotifyServerCancelLock(LockTarget) end

function USeekAndLockWeaponComponent:InitTargetData() end

function USeekAndLockWeaponComponent:HandleTargetOutOfSeekArea() end

---@param Target AActor
function USeekAndLockWeaponComponent:AddTarget(Target) end

---@param Target AActor
function USeekAndLockWeaponComponent:RemoveTarget(Target) end

---@param TargetList ULuaArrayHelper<AActor>
function USeekAndLockWeaponComponent:RemoveTargetList(TargetList) end

---@param LockTarget AActor
---@param Stage ESeekAndLockStage
function USeekAndLockWeaponComponent:RPC_Server_NotifyServerEnterNewStage(LockTarget, Stage) end

---@param LockTarget AActor
---@param Stage ESeekAndLockStage
function USeekAndLockWeaponComponent:RPC_Client_NotifyServerEnterNewStage(LockTarget, Stage) end

---@param LockTarget AActor
function USeekAndLockWeaponComponent:RPC_Client_NotifyServerCancelLock(LockTarget) end

---@param Target AActor
---@return boolean
function USeekAndLockWeaponComponent:CheckTargetIsVisible(Target) end

---@param Weapon ASTExtraWeapon
function USeekAndLockWeaponComponent:HandleDisconnectOnServer(Weapon) end

---@param Weapon ASTExtraWeapon
function USeekAndLockWeaponComponent:HandleReconnectOnServer(Weapon) end

function USeekAndLockWeaponComponent:HandleDisconnectOnServerInVehicle() end

function USeekAndLockWeaponComponent:HandleReconnectOnServerInVehicle() end

function USeekAndLockWeaponComponent:BindEvent() end

function USeekAndLockWeaponComponent:UnBindEvent() end

---@param bIsSpectating boolean
function USeekAndLockWeaponComponent:HandleRepIsSpectating(bIsSpectating) end

function USeekAndLockWeaponComponent:HandleSpectatorChange() end

function USeekAndLockWeaponComponent:ForceScopeOut() end
