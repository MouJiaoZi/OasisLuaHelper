---@meta

---@class ECameraPosType
---@field Middle number @中间区域
---@field Top number @顶部
---@field Bottom number @底部
ECameraPosType = {}


---@class ECameraBorderType
---@field HighestPos number @相机最高点
---@field TopReboundEdge number @上回弹边缘
---@field BottomReboundEdge number @下回弹边缘
---@field LowestPos number @相机最低点
ECameraBorderType = {}


---@class FCameraCrossBorderDelegate : ULuaMulticastDelegate
FCameraCrossBorderDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EnumBorderType: ECameraBorderType, EnumPosType: ECameraPosType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCameraCrossBorderDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EnumBorderType ECameraBorderType
---@param EnumPosType ECameraPosType
function FCameraCrossBorderDelegate:Broadcast(EnumBorderType, EnumPosType) end


---@class UCameraMoveComponent: UActorComponent
---@field bOutOfBound boolean
---@field PrevFingerLoc FVector2D
---@field hasPressed boolean
---@field bMouseScrolling boolean
---@field bScrollUp boolean
---@field bPressScroll boolean
---@field ScrollingTargetZ number
---@field ScrollBias number
---@field AllowedScrollErrorDistance number
---@field bNeedMoveCamera boolean
---@field bNeedEasingAfterRelease boolean
---@field FinalTarget number
---@field ScreenFactor number
---@field HighestPos number
---@field LowestPos number
---@field HighestReboundEdge number
---@field LowestReboundEdge number
---@field MoveSpeed number
---@field MaxBias number
---@field DampingFactor number
---@field DampingFactorEasing number
---@field StandardX number
---@field HighestPos_Long number
---@field LowestPos_Long number
---@field HighestPos_Short number
---@field LowestPos_Short number
---@field bNeedRebound boolean
---@field HighestReboundEdge_Long number
---@field LowestReboundEdge_Long number
---@field HighestReboundEdge_Short number
---@field LowestReboundEdge_Short number
---@field ReboundSpeed number
---@field CurPos ECameraPosType
---@field CameraCrossBorderDelegate FCameraCrossBorderDelegate
local UCameraMoveComponent = {}

function UCameraMoveComponent:InitCurrentCamera() end

---@param X number
---@param Y number
function UCameraMoveComponent:OnTouchBegin(X, Y) end

function UCameraMoveComponent:OnTouchEnd() end

---@param X number
---@param Y number
function UCameraMoveComponent:SetTouchInfo(X, Y) end

function UCameraMoveComponent:CleanTouchInfo() end

---@param bEnable boolean
function UCameraMoveComponent:EnableCameraMove(bEnable) end

function UCameraMoveComponent:UpdateCameraPosZone() end

function UCameraMoveComponent:CheckOutOfBound() end

---@return ECameraPosType
function UCameraMoveComponent:GetPos() end

---@param Border ECameraBorderType
function UCameraMoveComponent:CrossBorder(Border) end
