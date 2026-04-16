---@meta

---@class FOnPlaneNearSnowArea : ULuaMulticastDelegate
FOnPlaneNearSnowArea = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AirDropLoc: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlaneNearSnowArea:Add(Callback, Obj) end

---触发 Lua 广播
---@param AirDropLoc FVector
function FOnPlaneNearSnowArea:Broadcast(AirDropLoc) end


---@class AAirDropPlane: AFlightVehicle
---@field FlyingParam FFlyingParam
---@field OverrideFlyingSpeed number
---@field DroppingStuffLocation FVector
---@field DroppingStuffRotation FRotator
---@field DroppingSpeed number
---@field LifeSpanAfterDrop number
---@field LifeSpanDrawAirDropPath number
---@field AirDropIconID number
---@field AirDropMarkDistance number
---@field AirDropExIndex number
---@field AirDropOrder FAirDropOrder
---@field DropStrategyArray ULuaArrayHelper<UDropStuffStrategy>
---@field CustomActorMoveRepTime number
---@field CustomActorMoveJumpIntervalTime number
---@field CustomActorMoveScaleRange FVector2D
---@field CustomActorMoveDistance number
---@field CacheFlareGunAbilityID number
---@field AirDropMarkIds ULuaArrayHelper<number>
---@field bIsAirDropPlane boolean
---@field SnowAearDistance number
---@field OnPlaneNearSnowArea FOnPlaneNearSnowArea
---@field AirDropPlaneID number
---@field PlaneSpawnTime number
---@field IsFlareGunAirDrop boolean
local AAirDropPlane = {}

---@param Order FAirDropOrder
function AAirDropPlane:SetOrder(Order) end

---@param TipID number
function AAirDropPlane:ShowAirDropTip(TipID) end

---@param InOrder FAirDropOrder
function AAirDropPlane:TriggerDropAirBox(InOrder) end

---@param InWeapon ASTExtraWeapon
function AAirDropPlane:TryCacheFlareGunAbility(InWeapon) end

---@return number
function AAirDropPlane:TryGetFlareGunAbilityID() end

---@param DeltaTime number
---@return number
function AAirDropPlane:GetDroppingIndex(DeltaTime) end

function AAirDropPlane:OnRep_FlyingParams() end

function AAirDropPlane:OnRep_AirDropOrder() end

---@param Strategy UDropStuffStrategy
function AAirDropPlane:SetDropStrategy(Strategy) end

function AAirDropPlane:CheckShowAirDropTipOnServer() end

---@return FVector
function AAirDropPlane:GetFirstDroppingLoc() end
