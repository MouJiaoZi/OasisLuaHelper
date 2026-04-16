---@meta

---@class FProjectileCreateParams
---@field ProjectileClass AEliteProjectile
---@field Location FVector
---@field Direction FVector
---@field bDrop boolean
---@field ExplosionDelay number
---@field ServerInstanceID number
---@field ClientInstanceID number
FProjectileCreateParams = {}


---@class UThrowComponent: UActorComponent
---@field ThrowableConfig FThrowableConfig
---@field AllowThrowMode EAllowThrowMode
---@field bCreateProjectOnAim boolean
---@field ThrowStateChangedDelegate FThrowStateChangedDelegate
---@field CanThrowDelegate FCanThrowDelegate
---@field ThrowState EThrowState
---@field SpawnedProjectile FSpawnedProjectile
---@field ThrowObjectData FThrowObjectData
---@field GetThrowLocationDelegate FGetThrowLocationDelegate
---@field ThrowCanceledDelegate FThrowCanceledDelegate
---@field ThrowPrepareDelegate FSimpleThrowDelegate
---@field ThrowAimDelegate FSimpleThrowDelegate
---@field ThrowReleaseDelegate FSimpleThrowDelegate
---@field ThrowDropDelegate FSimpleThrowDelegate
---@field ThrowResetDelegate FSimpleThrowDelegate
---@field ClientInstanceID number
---@field ServerInstanceID number
---@field ProjectileInstancesData ULuaMapHelper<number, FProjectileInstanceData>
local UThrowComponent = {}

---@return boolean
function UThrowComponent:CanAim() end

---@return boolean
function UThrowComponent:CanThrow() end

---@return boolean
function UThrowComponent:CanDrop() end

---@return boolean
function UThrowComponent:CanSpawnProjectile() end

---@return boolean
function UThrowComponent:CanCancel() end

function UThrowComponent:BeginThrow() end

function UThrowComponent:FinishThrow() end

---@param bForce boolean
function UThrowComponent:CancelThrow(bForce) end

---@return boolean
function UThrowComponent:GetIsThrowing() end

---@return boolean
function UThrowComponent:IsThrowing() end

---@param AimDirection FVector
---@return FVector
function UThrowComponent:CalculateFinalThrowVelocity(AimDirection) end

---@return EThrowGrenadeMode
function UThrowComponent:GetThrowMode() end

---@param OutParams FPredictProjectilePathParams
function UThrowComponent:InitializePredictLine(OutParams) end

---@return boolean
function UThrowComponent:ShouldDrawTrajectory() end

---@return FVector
function UThrowComponent:GetAimDirection() end

---@return FVector
function UThrowComponent:GetThrowLocation() end

---@return number
function UThrowComponent:GetRemainingCooldownTime() end

---@param InstanceID number
function UThrowComponent:ServerStartPrepare(InstanceID) end

---@param ThrowEventData FThrowEventData
function UThrowComponent:ServerStartThrow(ThrowEventData) end

function UThrowComponent:ServerCancelThrow() end

function UThrowComponent:ServerCancelThrowAlways() end

function UThrowComponent:ClientCancelThrow() end

function UThrowComponent:ClientResetExplosionTimer() end

---@param InstanceID number
---@param FunctionName string
---@param Contents ULuaArrayHelper<number>
---@param NumBits number
function UThrowComponent:ServerExecuteProjectileFunction(InstanceID, FunctionName, Contents, NumBits) end

function UThrowComponent:ReceiveResetExplosionTimer() end

---@param NewProjectile AEliteProjectile
---@param bDrop boolean
---@param ExplosionDelay number
function UThrowComponent:InitializeNewProjectile(NewProjectile, bDrop, ExplosionDelay) end

function UThrowComponent:OnCancelThrow() end

---@param ItemID number
function UThrowComponent:ConsumeItem(ItemID) end

---@param PrevState EThrowState
function UThrowComponent:OnRep_ThrowState(PrevState) end

function UThrowComponent:OnRep_SpawnedProjectile() end

---@param PrevData FThrowObjectData
function UThrowComponent:OnRep_ThrowObjectData(PrevData) end

---@param PrevID number
function UThrowComponent:OnRep_ClientInstanceID(PrevID) end

---@param PrevID number
function UThrowComponent:OnAckClientInstanceID(PrevID) end

---@param NewState EThrowState
---@param PrevState EThrowState
function UThrowComponent:ReceiveThrowStateChanged(NewState, PrevState) end

---@param ItemID number
---@return string
function UThrowComponent:GetWeaponExtraParam(ItemID) end

---@param bDrop boolean
---@param ThrowEventData FThrowEventData
function UThrowComponent:FireProjecitle(bDrop, ThrowEventData) end
