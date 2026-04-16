---@meta

---@class FPostUpdateCameraDynamicDelegate : ULuaMulticastDelegate
FPostUpdateCameraDynamicDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CameraManager: ASTPlayerCameraManager, Location: FVector, Rotation: FRotator) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPostUpdateCameraDynamicDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CameraManager ASTPlayerCameraManager
---@param Location FVector
---@param Rotation FRotator
function FPostUpdateCameraDynamicDelegate:Broadcast(CameraManager, Location, Rotation) end


---@class ASTPlayerCameraManager: APlayerCameraManager
---@field ScreenAppearanceClass AActor
---@field bApplyCameraModifiers boolean
---@field bApplyCameraShake boolean
---@field bEnableBlueprintUpdateCamera boolean
---@field InVehicleFPPViewPitchLimitMin number
---@field InVehicleFPPViewYawLimit number
---@field InVehicleNarrowSeatGrenadesYawLimit number
---@field InVehicleNarrowSeatMeleeThrowYawLimit number
---@field InVehicleFPPViewPitchLimitName string
---@field InVehicleFPPViewYawLimitName string
---@field DynamicViewYawLimitName string
---@field SeatSpecial_NarrowViewYawLimitName string
---@field PostUpdateCameraDynamicDelegate FPostUpdateCameraDynamicDelegate
---@field ModifyProcessViewRotation FLimitViewRotationDelegate
---@field Custom_ViewLimit any
---@field DontReportPawnStates ULuaArrayHelper<EPawnState>
---@field DiffViewLimitTime number
---@field CameraInfoAdditive FMinimalViewInfo
---@field CameraInfoAdditiveWeight number
local ASTPlayerCameraManager = {}

function ASTPlayerCameraManager:OnAsyncLoadScreenAppearanceClassFinished() end

---@param NewLimit FViewLimitRange
---@return boolean
function ASTPlayerCameraManager:ReviseViewLimit(NewLimit) end

---@param OutViewLimit FViewLimitRange
---@param LimitName string
---@param ViewLimitType EViewLimitType
---@param bIsAdditive boolean
---@return boolean
function ASTPlayerCameraManager:FindViewLimit(OutViewLimit, LimitName, ViewLimitType, bIsAdditive) end

---@param NewLimit FViewLimitRange
---@return boolean
function ASTPlayerCameraManager:AddViewLimit(NewLimit) end

---@param NewLimit FViewLimitRange
---@return boolean
function ASTPlayerCameraManager:AddOrOverrideViewLimit(NewLimit) end

---@param LimitName string
---@param LimitType EViewLimitType
---@param bIsAdditive boolean
---@return boolean
function ASTPlayerCameraManager:RemoveViewLimit(LimitName, LimitType, bIsAdditive) end

function ASTPlayerCameraManager:UpdateViewLimit() end

---@param ViewLimitType EViewLimitType
function ASTPlayerCameraManager:UpdateViewLimitByType(ViewLimitType) end

function ASTPlayerCameraManager:ClearAdditiveViewInfo() end

---@param AdditiveFOV number
function ASTPlayerCameraManager:SetAdditiveFOV(AdditiveFOV) end

---@param NewWeight number
function ASTPlayerCameraManager:SetAdditiveViewInfoBlendWeight(NewWeight) end

---@param DecreasePerFrame number
function ASTPlayerCameraManager:ResetAdditiveFOVGradually(DecreasePerFrame) end
