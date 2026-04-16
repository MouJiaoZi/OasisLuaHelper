---@meta

---@class FSnapedActivityActorInfo
---@field CurType ESnapedBuildingType
FSnapedActivityActorInfo = {}


---@class FSnapedInfoChange : ULuaMulticastDelegate
FSnapedInfoChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Info: FSnapedActivityActorInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSnapedInfoChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param Info FSnapedActivityActorInfo
function FSnapedInfoChange:Broadcast(Info) end


---@class ASnapedBuildActivityActor: AActivityBaseActor, ISnapedBuildingInterface
---@field SnapedInfo FSnapedActivityActorInfo
---@field OnSnapedInfoChange FSnapedInfoChange
local ASnapedBuildActivityActor = {}

function ASnapedBuildActivityActor:OnRep_SnapedInfoChange() end

---@param Type ESnapedBuildingType
---@param LeftActor ASnapedBuildActivityActor
---@param RightActor ASnapedBuildActivityActor
function ASnapedBuildActivityActor:AddSnapedActor(Type, LeftActor, RightActor) end

---@param Type ESnapedBuildingType
function ASnapedBuildActivityActor:DeleteSnapedActor(Type) end

function ASnapedBuildActivityActor:ClearSnapedActor() end

---@param SnapedInfo FSnapedActivityActorInfo
function ASnapedBuildActivityActor:OnSnapedInfoChanged(SnapedInfo) end

---@param Type ESnapedHiddenType
function ASnapedBuildActivityActor:SetHiddenInfo(Type) end

---@param SnapedInfo FSnapedActivityActorInfo
function ASnapedBuildActivityActor:OnAddSnapedActor(SnapedInfo) end

---@param Type ESnapedBuildingType
---@param LeftActor ASnapedBuildActivityActor
---@param RightActor ASnapedBuildActivityActor
function ASnapedBuildActivityActor:SetRelationShip(Type, LeftActor, RightActor) end
