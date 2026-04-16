---@meta

---@class EOwnerType
---@field EOwnerType_Item number @Item
---@field EOwnerType_Weapon number @Weapon
EOwnerType = {}


---@class EAlphaStateEnum
---@field EAlphaStateEnum_Rotating number @旋转中
---@field EAlphaStateEnum_IdleState number @待机状态
---@field EAlphaStateEnum_EmoteBegin number @主角开始播表情
---@field EAlphaStateEnum_RotatingWhenEmote number @播表情时旋转
EAlphaStateEnum = {}


---@class FAlphaState
---@field TargetAlpha number
---@field InterpolationSpeed number
---@field ErrorTolerance number
FAlphaState = {}


---@class FAlphaStateConfig
---@field AlphaStateMap ULuaMapHelper<EAlphaStateEnum, FAlphaState>
FAlphaStateConfig = {}


---@class ULobbyPhysicsAlphaMgr: UActorComponent
---@field CurOwnerType EOwnerType
---@field CurrentAlpha number
---@field TargetAlpha number
---@field CurInterpolationSpeed number
---@field CurErrorTolerance number
---@field RotatingTriggerValue number
---@field CurAlphaStateMap FAlphaStateConfig
local ULobbyPhysicsAlphaMgr = {}

function ULobbyPhysicsAlphaMgr:OnRotating() end

function ULobbyPhysicsAlphaMgr:OnRotateStop() end

---@param InAlphaState FAlphaState
function ULobbyPhysicsAlphaMgr:SetTargetAlpha(InAlphaState) end

function ULobbyPhysicsAlphaMgr:ItemTickFunc() end

function ULobbyPhysicsAlphaMgr:WeaponTickFunc() end

function ULobbyPhysicsAlphaMgr:UpdateInterpAlpha() end

function ULobbyPhysicsAlphaMgr:UpdateCurAlphaStateMap() end
