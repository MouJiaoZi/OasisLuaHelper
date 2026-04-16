---@meta

---@class EPlaneStateType
---@field Normal number @正常
---@field Smoking number @冒烟
---@field Exploded number @爆炸
EPlaneStateType = {}


---@class AAirDropHelicopterPlane: AAirDropPlane, IDamageableInterface
---@field TransitionDuration number
---@field CurHP number
---@field MaxLifeSpan number
---@field AirDropExitSpeed number
---@field CurState EPlaneStateType
---@field MaxHP number
---@field LowHPThreshold number
---@field AirDropHPThreshold number
---@field TransitionVelocity FVector
---@field bForceDropAirdropAtLocation boolean
---@field bHasDrop boolean
---@field OnAirdropBoxDropDelegate FOnAirdropBoxDrop
---@field DamageMap ULuaMapHelper<number, number>
local AAirDropHelicopterPlane = {}

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function AAirDropHelicopterPlane:BP_PreTakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param State EPlaneStateType
function AAirDropHelicopterPlane:BP_OnDamageStateChanged(State) end

---@return FTransform
function AAirDropHelicopterPlane:BP_GetDropStuffTransform() end

function AAirDropHelicopterPlane:BP_OnRepHasDrop() end

function AAirDropHelicopterPlane:OnRep_CurState() end

function AAirDropHelicopterPlane:OnRep_TransitionVelocity() end

function AAirDropHelicopterPlane:OnRep_bHasDrop() end

---@return string
function AAirDropHelicopterPlane:GetDamageMapString() end
