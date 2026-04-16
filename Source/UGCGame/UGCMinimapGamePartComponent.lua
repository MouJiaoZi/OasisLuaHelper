---@meta

---路径绘制参数结构体
---@class FGuidePathDrawParams
---@field StartLocation FVector
---@field TargetLocation FVector
---@field ArrowLength number
---@field TrailWidth number
---@field MaxReachableDistance number
FGuidePathDrawParams = {}


---@class FOnGuidePathResult : ULuaSingleDelegate
FOnGuidePathResult = {}

---绑定回调函数
---@param Callback fun(Obj: any, bSuccess: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGuidePathResult:Bind(Callback, Obj) end

---执行委托
---@param bSuccess boolean
function FOnGuidePathResult:Execute(bSuccess) end


---@class UUGCMinimapGamePartComponent: UActorComponent, IUGCGamePartPlayerComponentInterface, ILuaInterface
local UUGCMinimapGamePartComponent = {}

---@return string
function UUGCMinimapGamePartComponent:GetLuaModule() end

---@param MinimapWidget UUserWidget
---@param EntireWidget UUserWidget
---@param InVisible boolean
function UUGCMinimapGamePartComponent:SetOriginalGuideLineVisibility(MinimapWidget, EntireWidget, InVisible) end

---@param ResID number
---@param Msg string
function UUGCMinimapGamePartComponent:MapMarkShortcutButtonClicked(ResID, Msg) end

---绘制指引路线（客户端调用）
---@param Params FGuidePathDrawParams
---@param OnResult FOnGuidePathResult
---@return number
function UUGCMinimapGamePartComponent:DrawGuidePathToTarget(Params, OnResult) end

---清除指引路线（客户端调用）
---@param DrawGuidePathRequestID number
function UUGCMinimapGamePartComponent:ClearGuidePath(DrawGuidePathRequestID) end

---@param TargetPos FVector
---@param PathPoints ULuaArrayHelper<FVector>
function UUGCMinimapGamePartComponent:ClientUpdateGuidePathPoints(TargetPos, PathPoints) end

---@param RequestID number
---@param StartLocation FVector
---@param TargetLocation FVector
function UUGCMinimapGamePartComponent:ServerRequestGuidePath(RequestID, StartLocation, TargetLocation) end

---@param RequestID number
---@param bSuccess boolean
---@param TargetPos FVector
---@param PathPoints ULuaArrayHelper<FVector>
function UUGCMinimapGamePartComponent:ClientOnGuidePathResult(RequestID, bSuccess, TargetPos, PathPoints) end
