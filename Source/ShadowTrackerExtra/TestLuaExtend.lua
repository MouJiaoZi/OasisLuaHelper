---@meta

---@class UTestLuaExtend: UObject
---@field LoopCount number
---@field CppTimes ULuaMapHelper<string, number>
---@field TestComplexStruct FMarkDispatchAction
local UTestLuaExtend = {}

function UTestLuaExtend:RunPerformanceTest() end

---@return FMarkDispatchAction
function UTestLuaExtend:TestGetFStructCall() end

---@param Value FMarkDispatchAction
function UTestLuaExtend:TestSetFStructCall(Value) end

---@param Value ASTExtraBaseCharacter
function UTestLuaExtend:TestSetObjectCall(Value) end

function UTestLuaExtend:InitBPRunaway() end
