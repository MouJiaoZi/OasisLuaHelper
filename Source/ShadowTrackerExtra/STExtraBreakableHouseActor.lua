---@meta

---@class FOnHouseBrokenDelegate : ULuaMulticastDelegate
FOnHouseBrokenDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LogicAreaLoc: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHouseBrokenDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LogicAreaLoc FVector
function FOnHouseBrokenDelegate:Broadcast(LogicAreaLoc) end


---可被破坏的房子
---@class ASTExtraBreakableHouseActor: ASTExtraHouseActor
---@field NetCullDIstanceMeters number @Net cull distance in meters
---@field AirAttackPos FVector
---@field BrokenMesh UStaticMesh
---@field TraceHeight number
---@field bMarked boolean
---@field bIsBroken boolean
---@field OnHouseBroken FOnHouseBrokenDelegate
---@field OnHouseBrokenClient FOnHouseBrokenDelegate
local ASTExtraBreakableHouseActor = {}

function ASTExtraBreakableHouseActor:RegisterAsRegionObject() end

function ASTExtraBreakableHouseActor:SendBrokenNetMulticastRPC() end

---@param prevIsBroken boolean
function ASTExtraBreakableHouseActor:OnRep_IsBroken(prevIsBroken) end

function ASTExtraBreakableHouseActor:HouseExplosion() end

function ASTExtraBreakableHouseActor:HouseExplosionClientSimulate() end

function ASTExtraBreakableHouseActor:ClearRCR() end

function ASTExtraBreakableHouseActor:SetBrokenMesh() end

function ASTExtraBreakableHouseActor:DeleteBrokenObject() end
