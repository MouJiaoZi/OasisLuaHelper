---@meta

---@class FAdjacentPlayerChangedSignature : ULuaMulticastDelegate
FAdjacentPlayerChangedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Player: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAdjacentPlayerChangedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Player ASTExtraBaseCharacter
function FAdjacentPlayerChangedSignature:Broadcast(Player) end


---@class FPostHandleFoundPlayersChange : ULuaSingleDelegate
FPostHandleFoundPlayersChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPostHandleFoundPlayersChange:Bind(Callback, Obj) end

---执行委托
function FPostHandleFoundPlayersChange:Execute() end


---@class UAdjacentPlayerFinderComponent: UActorComponent
---@field FinderRadius number
---@field bFindByControllerOnServer boolean
---@field OnPlayerEnter FAdjacentPlayerChangedSignature
---@field OnPlayerLeave FAdjacentPlayerChangedSignature
---@field OnPostHandleFoundPlayersChange FPostHandleFoundPlayersChange
local UAdjacentPlayerFinderComponent = {}

function UAdjacentPlayerFinderComponent:GetFoundPlayers() end

---@param NewRadius number
---@param bUpdatePlayerCollection boolean
function UAdjacentPlayerFinderComponent:SetFinderRadius(NewRadius, bUpdatePlayerCollection) end

function UAdjacentPlayerFinderComponent:BuildAdjacentPlayersByOverlap() end

function UAdjacentPlayerFinderComponent:BuildAdjacentPlayersByControllerServer() end

---@return FVector
function UAdjacentPlayerFinderComponent:GetFinderCenterLoc() end

---@param Player ASTExtraBaseCharacter
---@return boolean
function UAdjacentPlayerFinderComponent:IsTargetPlayer(Player) end
