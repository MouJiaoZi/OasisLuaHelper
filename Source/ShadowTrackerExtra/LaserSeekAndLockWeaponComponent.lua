---@meta

---@class ELaserTraceUIStage
---@field LaserTraceUIStage_1 number
---@field LaserTraceUIStage_2 number
---@field LaserTraceUIStage_3 number
ELaserTraceUIStage = {}


---@class FLaserTraceServerSyncData
---@field ClientTracePos FVector
FLaserTraceServerSyncData = {}


---@class ILaserSeekAndLockOwnerInterface: ISeekAndLockOwnerInterface
ILaserSeekAndLockOwnerInterface = {}

function ILaserSeekAndLockOwnerInterface:PlayLaserLockedByEnemy2DSound() end

function ILaserSeekAndLockOwnerInterface:StopPlayedLaserLockedByEnemy2DSound() end

function ILaserSeekAndLockOwnerInterface:StopPlayAllWeaponLockSound() end


---激光追踪导弹
---@class ULaserSeekAndLockWeaponComponent: USeekAndLockWeaponComponent
---@field UpdateLockTargetListInterval number
---@field SwitchLaserLockTargetInterval number
---@field bStopTraceByScopeInOut boolean
---@field bAutoTraceTargetInSeekArea boolean
---@field bAutoTraceTargetInSeekArea_Character boolean
---@field bAutoTraceTargetInSeekArea_Vehicle boolean
---@field ForceExitTracePlayerStateList ULuaArrayHelper<EPawnState>
---@field DrawTargetTraceLockSphereRadius number
---@field DrawTargetTraceLockLifetime number
---@field BulletExplodeCameraShakeClassOnScope UCameraShake
---@field BulletExplodeCameraShakeScaleOnScope number
---@field BulletDisCheckThreshold number
---@field TracePosPassWallCheckRevThreshold number
---@field LaserTraceUIStage ELaserTraceUIStage
---@field OnPostEnterLaserTraceStateDelegate FOnPostEnterLaserTraceStateDelegate
---@field OnPostNotifyBulletNearTargetDelegate FOnPostNotifyBulletNearTargetDelegate
---@field ServerLastSyncTimeStamp number
---@field SyncLaserTracePosition FVector
---@field bIsLaserTracing boolean
---@field CurLockCharacterList ULuaArrayHelper<ASTExtraCharacter>
---@field CurAutoLockTargetList ULuaArrayHelper<AActor>
---@field RepCurLockCharacterList ULuaArrayHelper<ASTExtraCharacter>
local ULaserSeekAndLockWeaponComponent = {}

---@param SyncData FLaserTraceServerSyncData
function ULaserSeekAndLockWeaponComponent:RPC_Server_NotifyChangeLaserTracePosition(SyncData) end

---@param bShow boolean
function ULaserSeekAndLockWeaponComponent:ShowLaserTraceUI(bShow) end

---@param bEnter boolean
function ULaserSeekAndLockWeaponComponent:EnterLaserTraceState(bEnter) end

function ULaserSeekAndLockWeaponComponent:OnRep_SyncLaserTracePosition() end

---@param Target ASTExtraCharacter
function ULaserSeekAndLockWeaponComponent:AddCharacterTarget(Target) end

---@param Target ASTExtraCharacter
function ULaserSeekAndLockWeaponComponent:RemoveCharacterTarget(Target) end

---@param Target AActor
---@return boolean
function ULaserSeekAndLockWeaponComponent:CheckTargetIsVisible(Target) end

---@param Data FLaserTraceServerSyncData
---@return boolean
function ULaserSeekAndLockWeaponComponent:VerifyClientLaserTraceData(Data) end

---@param bIsBegin boolean
function ULaserSeekAndLockWeaponComponent:HandleWeaponScopeIn(bIsBegin) end

---@param bIsBegin boolean
function ULaserSeekAndLockWeaponComponent:HandleWeaponScopeOut(bIsBegin) end

---@param List ULuaArrayHelper<ASTExtraCharacter>
function ULaserSeekAndLockWeaponComponent:RPC_Server_NotifyServerCurLockCharacterList(List) end

function ULaserSeekAndLockWeaponComponent:OnRep_RepCurLockCharacterList() end

---@param Weapon ASTExtraWeapon
function ULaserSeekAndLockWeaponComponent:HandleReconnectOnServer(Weapon) end

function ULaserSeekAndLockWeaponComponent:OnStartReload() end

function ULaserSeekAndLockWeaponComponent:HandleDestroy() end

function ULaserSeekAndLockWeaponComponent:HandleApplicationWillDeactivate() end

function ULaserSeekAndLockWeaponComponent:HandleApplicationHasReactivated() end

---@param LastState EFreshWeaponStateType
---@param NewState EFreshWeaponStateType
function ULaserSeekAndLockWeaponComponent:OnOwnerWeaponChangeState(LastState, NewState) end

---@param InTargetVehicle ASTExtraVehicleBase
function ULaserSeekAndLockWeaponComponent:HandlePlayerAttachedToVehcicle(InTargetVehicle) end
