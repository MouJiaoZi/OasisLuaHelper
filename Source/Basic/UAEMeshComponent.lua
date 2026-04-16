---@meta

---@class FMeshVisibleChanged : ULuaMulticastDelegate
FMeshVisibleChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MeshComp: USkeletalMeshComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMeshVisibleChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param MeshComp USkeletalMeshComponent
function FMeshVisibleChanged:Broadcast(MeshComp) end


---@class UUAEMeshComponent: USkeletalMeshComponent
---@field bDelayInitAnimTick boolean
---@field bDelayInitRefreshPose boolean
---@field DelayedInitAnimTickParam FDelayInitAnimTickParam
---@field bMainCharMesh boolean
---@field bIsHidden boolean
---@field bIsUseMasterLOD boolean
---@field bUseBoneRetargetLODFeature boolean
---@field bDonotHiddenWhenHeadLOD2 boolean
---@field bDonotHiddenWhenSimulatedHeadHide boolean
---@field OnUAEMeshVisibleChanged FMeshVisibleChanged
---@field OnUAEMeshHiddenInGameChanged FMeshVisibleChanged
---@field bCanFollowMasterBoneVisibility boolean
local UUAEMeshComponent = {}

---@return boolean
function UUAEMeshComponent:UpdateLODStatus() end

---@param bMainChar boolean
function UUAEMeshComponent:SetCharMode(bMainChar) end

---@param InMasterBoneComp USceneComponent
function UUAEMeshComponent:SyncBoneVisibilityWithMaster(InMasterBoneComp) end

---@param InIsDelayInitAnimTick boolean
---@param InIsDelayInitRefreshPose boolean
function UUAEMeshComponent:MarkDelayInitAnimTickAndPoseFeature(InIsDelayInitAnimTick, InIsDelayInitRefreshPose) end

---@return boolean
function UUAEMeshComponent:IsInitAnimTickDelay() end

---@return boolean
function UUAEMeshComponent:IsInitRefreshPoseDelay() end

---@param InInitAnimTickParam FDelayInitAnimTickParam
function UUAEMeshComponent:DelayInitAnimTick(InInitAnimTickParam) end

function UUAEMeshComponent:DelayInitRefreshPose() end

function UUAEMeshComponent:PerformDelayedInitAnimTick() end

function UUAEMeshComponent:PerformDelayedInitRefreshPose() end

function UUAEMeshComponent:ResetLODBias() end
