---@meta

---@class ECustomFlyingMoveMode
---@field CUSTOM_FLYING_MOVE_None number
---@field CUSTOM_FLYING_MOVE_CURRENT number
---@field CUSTOM_FLYING_MOVE_ROCKETBOY1 number
---@field CUSTOM_FLYING_MOVE_ROCKETBOY2 number
---@field CUSTOM_FLYING_MOVE_SPACEROSE1 number
---@field CUSTOM_FLYING_MOVE_SPACEROSE2 number
---@field CUSTOM_FLYING_MOVE_HOME number
---@field CUSTOM_FLYING_MOVE_SKYDANCE number
---@field CUSTOM_FLYING_MOVE_SKYARENA number
---@field CUSTOM_FLYING_MOVE_DRAGONBOY number
---@field CUSTOM_FLYING_MOVE_MODE_MAX number
ECustomFlyingMoveMode = {}


---@class FCustomFlyingParam
---@field MaxDownSpeed number
---@field FinalMaxSpeed number
---@field Gravity number
---@field HorizonalAccLockTime number
---@field bVerticleMaxSpeedCheckGravity boolean
---@field LateralFriction number
---@field VerticalFriction number
---@field bRecalcRealVelocity boolean
---@field bUseUpCurveInNoneFlag boolean
---@field bTrustClient boolean
FCustomFlyingParam = {}


---@class FCustomFlyingContext
---@field EnterFlagTime number
---@field FirstEnterFlagHorizontalAcc FVector
---@field HorizontalAccSetted boolean
---@field FlagTimeElasped number
FCustomFlyingContext = {}


---@class FOnResetTimeElasped : ULuaMulticastDelegate
FOnResetTimeElasped = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldTimeElasped: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnResetTimeElasped:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldTimeElasped number
function FOnResetTimeElasped:Broadcast(OldTimeElasped) end


---@class UCustomMovementFlying: UCustomMovemeneFlyingBase
---@field Params ULuaArrayHelper<FCustomFlyingParam>
---@field TrustClientDist number
---@field TrustClientDistTimeInterval number
---@field TrustClientMaxCount number
---@field MoveMode ECustomFlyingMoveMode
---@field MoveFlyingFlag ECustomFlyingMoveFlag
---@field StartMoveMode ECustomFlyingMoveMode
---@field Contexts ULuaArrayHelper<FCustomFlyingContext>
---@field OnResetTimeElasped FOnResetTimeElasped
local UCustomMovementFlying = {}

---@param Flags number
---@return ECustomFlyingMoveFlag
function UCustomMovementFlying:GetFlyingMoveFlag(Flags) end

---@return number
function UCustomMovementFlying:GetMaxUpSpeed() end

---@return number
function UCustomMovementFlying:GetMaxDownSpeed() end

---@return number
function UCustomMovementFlying:GetLateralFriction() end

---@return number
function UCustomMovementFlying:GetMaxHorizontalSpeed() end

---@param DeltaTime number
---@return number
function UCustomMovementFlying:GetAccelerationZ(DeltaTime) end

---@return number
function UCustomMovementFlying:GetHorizontalAccLockTime() end

---@return number
function UCustomMovementFlying:GetGravity() end

---@param InitialVelocity FVector
---@param Gravity FVector
---@param DeltaTime number
---@return FVector
function UCustomMovementFlying:GetFlyingVelocity(InitialVelocity, Gravity, DeltaTime) end

---@param MoveFlag ECustomFlyingMoveFlag
---@param ResetFlagEnterTime boolean
---@return boolean
function UCustomMovementFlying:SetFlyingMoveFlag(MoveFlag, ResetFlagEnterTime) end

---@param Flag number
---@return boolean
function UCustomMovementFlying:SetMoveFlag(Flag) end

---@param NewMoveMode ECustomFlyingMoveMode
---@param NewMoveFlag ECustomFlyingMoveFlag
---@param ResetFlagEnterTime boolean
function UCustomMovementFlying:SetMoveMode(NewMoveMode, NewMoveFlag, ResetFlagEnterTime) end

---@param DeltaTime number
---@param Friction number
function UCustomMovementFlying:ApplyVelocityZBraking(DeltaTime, Friction) end

---@return boolean
function UCustomMovementFlying:IsInServerPriorityControl() end

---@param deltaTime number
---@param Iterations number
function UCustomMovementFlying:PhysCustom(deltaTime, Iterations) end

---@return number
function UCustomMovementFlying:GetMaxSpeed() end

---@return boolean
function UCustomMovementFlying:GetCustomFlag0() end

---@return boolean
function UCustomMovementFlying:GetCustomFlag1() end

---@param NewMoveMode ECustomFlyingMoveMode
---@param NewMoveFlag ECustomFlyingMoveFlag
---@param bTestSet boolean
---@return boolean
function UCustomMovementFlying:TrySetMoveMode(NewMoveMode, NewMoveFlag, bTestSet) end

---@return boolean
function UCustomMovementFlying:ShouldCheckAdjustment() end

---@return ECustomFlyingMoveFlag
function UCustomMovementFlying:GetMoveFlag() end

---@return ECustomFlyingMoveMode
function UCustomMovementFlying:GetMoveMode() end

---@param ClientMovementMode number
---@param ClientLoc FVector
---@return boolean
function UCustomMovementFlying:CanTrustClientLoc(ClientMovementMode, ClientLoc) end

---@return boolean
function UCustomMovementFlying:IsSprint() end

---@return number
function UCustomMovementFlying:GetEnterFlagTimeElapsed() end
