---@meta

---@class ESimpleTreasureChestStatus
---@field Close number
---@field Open number
ESimpleTreasureChestStatus = {}


---@class FCallBackDelegate : ULuaSingleDelegate
FCallBackDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCallBackDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FCallBackDelegate:Execute(Param1) end


---@class ASimpleTreasureChest: AActor
---@field Status ESimpleTreasureChestStatus
---@field BoxCoverRollMax number
---@field TimerOpenBoxCoverTick number
---@field TickCoverRelativeLocRotRatio number
local ASimpleTreasureChest = {}

function ASimpleTreasureChest:OnRep_Status() end

---@param IsIdle boolean
function ASimpleTreasureChest:BPOpenSimpleTreasureChest(IsIdle) end

function ASimpleTreasureChest:ServerOpenSimpleTreasureChest() end
