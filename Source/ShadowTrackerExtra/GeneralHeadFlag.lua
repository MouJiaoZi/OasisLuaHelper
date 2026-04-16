---@meta

---@class FGeneralHeadFlagRemove : ULuaMulticastDelegate
FGeneralHeadFlagRemove = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGeneralHeadFlagRemove:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ASTExtraBaseCharacter
function FGeneralHeadFlagRemove:Broadcast(Param1) end


---@class UGeneralHeadFlag: UUAEUserWidget
---@field Limit FVector4
---@field LocOffset FVector
---@field UITeamOffset FVector2D
---@field rightPlus number
---@field heightPlus number
---@field aside boolean
---@field ChildSockets ULuaArrayHelper<UCustomSocketPanel>
local UGeneralHeadFlag = {}

---@param BC ASTExtraBaseCharacter
---@param headFlagType string
function UGeneralHeadFlag:SetBaseCharacter(BC, headFlagType) end

---@param PS ASTExtraPlayerState
---@param headFlagType string
function UGeneralHeadFlag:SetPlayerState(PS, headFlagType) end

---@param headFlagType string
function UGeneralHeadFlag:ActivateFlag(headFlagType) end
