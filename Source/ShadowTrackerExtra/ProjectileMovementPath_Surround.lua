---@meta

---@class ESurroundRotationType
---@field Clockwise number @顺时针
---@field Anticlockwise number @逆时针
ESurroundRotationType = {}


---@class EExtraInvalidCondition
---@field OwnerDied number @环绕Owner死亡时失效
---@field OwnerDestroyed number @环绕Owner销毁时失效
---@field None number @无
EExtraInvalidCondition = {}


---@class ESurroundTowardsType
---@field TangentDirection number @切线方向
---@field InverseTangentDirection number @逆切线方向
---@field CircleOutward number @圆形朝外
---@field CircleInward number @圆形朝内
---@field ZAxisUpward number @Z轴向上
---@field ZAxisDownward number @Z轴向下
ESurroundTowardsType = {}


---@class ESurroundState
---@field SurroundState number @环绕
---@field Normal number @抛物线
ESurroundState = {}


---@class UProjectileMovementPath_Surround: UProjectileMovementPath_Penetrate
---@field ProjectileGroupKey string
---@field ProjectileCenterOffset FVector
---@field SurroundRadius FFloatGetter
---@field SurroundAngle FFloatGetter
---@field SurroundSpeed FFloatGetter
---@field CenterRecoverSpeed FFloatGetter
---@field SurroundRotationType ESurroundRotationType
---@field SurroundTowardsType ESurroundTowardsType
---@field ValidTime FFloatGetter
---@field ProjectileConstrainedTime FFloatGetter
---@field ExtraInvalidCondition EExtraInvalidCondition
---@field ChasingDistance number
---@field CreateOffsetTime number
---@field CacheGroupData FProjectileGroupData
---@field CurrentRecordOrigin FVector
---@field NextOrigin FVector
---@field CurSurroundState ESurroundState
local UProjectileMovementPath_Surround = {}

---@param InSurroundTowardsType ESurroundTowardsType
function UProjectileMovementPath_Surround:SetSurroundTowardsType(InSurroundTowardsType) end

---@param DeltaSeconds number
function UProjectileMovementPath_Surround:CalculateCurTargetPosition(DeltaSeconds) end

function UProjectileMovementPath_Surround:UpdateProjectileTowards() end

---@param GroupKey string
---@param GroupData FProjectileGroupData
---@param DeltaSeconds number
function UProjectileMovementPath_Surround:UpdateGroupData(GroupKey, GroupData, DeltaSeconds) end

function UProjectileMovementPath_Surround:SetSurroundInValid() end

---@return FVector
function UProjectileMovementPath_Surround:GetSurroundOrigin() end

---@param DeltaSeconds number
---@param bUseGroup boolean
function UProjectileMovementPath_Surround:UpdateNextOrigin(DeltaSeconds, bUseGroup) end

---@return number
function UProjectileMovementPath_Surround:GetCurSurroundAngle() end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UProjectileMovementPath_Surround:OnPawnDynamicStateEnter(PersistComp, State) end

---@param DestroyedActor AActor
function UProjectileMovementPath_Surround:OnTargetDestroyed(DestroyedActor) end

---@param SurroundState ESurroundState
function UProjectileMovementPath_Surround:SetSurroundState(SurroundState) end
