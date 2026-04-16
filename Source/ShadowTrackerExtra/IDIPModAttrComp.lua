---@meta

---@class UIDIPModAttrComp: UActorComponent, ILuaInterface
local UIDIPModAttrComp = {}

---@return string
function UIDIPModAttrComp:GetLuaModule() end

---C++ 检测到有 IDIP 配置时调用，Lua 覆写此函数执行属性写入
---@param TargetObject UObject
---@param MatchedEntries ULuaArrayHelper<FIDIP_ItemAttributeValue>
function UIDIPModAttrComp:OnIDIPConfigMatched(TargetObject, MatchedEntries) end
