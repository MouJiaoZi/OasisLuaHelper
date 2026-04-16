---@meta

---@class FCustomCurveFinishedMovementMode
---@field MovementMode EMovementMode
---@field CustomMode ECustomMovmentMode
FCustomCurveFinishedMovementMode = {}


---@class FCustomCurveFinishedMovementModeDelegate : ULuaSingleDelegate
FCustomCurveFinishedMovementModeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, MovementInstance: UCustomMovementBase) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomCurveFinishedMovementModeDelegate:Bind(Callback, Obj) end

---执行委托
---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
function FCustomCurveFinishedMovementModeDelegate:Execute(CharacterOwner, MovementInstance) end


---@class UCustomMovementCurveFlying: UCustomMovementBase
---@field Curves ULuaArrayHelper<UCurveFloat>
---@field bExitOnFalling boolean
---@field bClearZVelocityOnGround boolean
---@field CurveFinishedMovementMode EMovementMode
---@field CurveFinishedCustomMode ECustomMovmentMode
---@field GetCustomCurveFinishedMovementMode FCustomCurveFinishedMovementModeDelegate
local UCustomMovementCurveFlying = {}

---@param NewCurveTime number
---@return number
function UCustomMovementCurveFlying:GetMoveDist(NewCurveTime) end

---@return number
function UCustomMovementCurveFlying:GetCurveIndex() end

---@return FVector
function UCustomMovementCurveFlying:GetDir() end
