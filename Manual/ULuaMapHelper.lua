---@meta

---@class ULuaMapHelper @映射帮助类
local ULuaMapHelper = {}

---添加一个键值对
---@param Key any @键
---@param Value any @值
---@return boolean @是否更新成功
function ULuaMapHelper:Add(Key, Value)
end

---根据键移除一个元素
---@param Key any @键
---@return number @移除的元素数量
function ULuaMapHelper:Remove(Key)
end

---根据键获取值
---@param Key any @键
---@return any @值
function ULuaMapHelper:Get(Key)
end

---更新键值对
---@param Key any @键
---@param Value any @值
---@return boolean @是否更新成功
function ULuaMapHelper:Set(Key, Value)
end

---根据键获取值
---@param Key any @键
---@return any @值
function ULuaMapHelper:Find(Key)
end

---清空哈希表
function ULuaMapHelper:Empty()
end

---重置哈希表
---@param ExpectedSize number @期望的哈希表长度（可选）
function ULuaMapHelper:Reset(ExpectedSize)
end

---获取哈希表长度
---@return number @长度
function ULuaMapHelper:Num()
end