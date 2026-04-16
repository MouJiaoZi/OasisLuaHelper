---@meta

---@class FMobaVFFrameMergedDelegate : ULuaMulticastDelegate
FMobaVFFrameMergedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UMobaVisualFieldComponent, Param2: FMobaVisualFieldFrame) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMobaVFFrameMergedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UMobaVisualFieldComponent
---@param Param2 FMobaVisualFieldFrame
function FMobaVFFrameMergedDelegate:Broadcast(Param1, Param2) end


---@class UMobaVisualFieldComponent: UVisualFieldComponent
---@field MobaVisualFieldFrame FMobaVisualFieldFrame
local UMobaVisualFieldComponent = {}

---@param InPC APlayerController
function UMobaVisualFieldComponent:ListenMobaPeerVisualFieldReport(InPC) end

---@param InPC APlayerController
function UMobaVisualFieldComponent:UnregisterPeerVisualFieldReport(InPC) end

---@param CampID number
function UMobaVisualFieldComponent:GetVisibleHeroListForCamp(CampID) end

---@param PlayerController AController
---@param PlayerUIDList ULuaArrayHelper<string>
---@param MinionIDList ULuaArrayHelper<number>
---@param MonsterIDList ULuaArrayHelper<number>
function UMobaVisualFieldComponent:OnClientReportMobaPeerVisualFieldFrame(PlayerController, PlayerUIDList, MinionIDList, MonsterIDList) end
