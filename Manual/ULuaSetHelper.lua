---@meta

---@class ULuaSetHelper @集合帮助类
local ULuaSetHelper = {}

---添加一个元素
---@param Item any @需要添加的元素
---@return number @索引
function ULuaSetHelper:Add(Item)
end

---移除一个元素
---@param Item any @需要移除的元素
---@return number @移除的元素数量
function ULuaSetHelper:Remove(Item)
end

---根据索引移除一个元素
---@param Index number @索引
function ULuaSetHelper:RemoveAt(Index)
end

---根据索引获取一个元素
---@param Index number @索引
---@return any @元素
function ULuaSetHelper:Get(Index)
end

---设置一个元素
---@param Index number @索引
---@param Item any @元素
---@return number @索引
function ULuaSetHelper:Set(Index, Item)
end

---查找一个元素
---@param Item any @元素
---@return number @索引
function ULuaSetHelper:Find(Item)
end

---判断集合是否包含某个元素
---@param Item any @元素
---@return number @是否包含
function ULuaSetHelper:Contains(Item)
end

---判断指定索引是否合法
---@param Index number @索引
---@return number @是否合法
function ULuaSetHelper:IsValidIndex(Index)
end

---清空集合
function ULuaSetHelper:Empty()
end

---重置集合
---@param ExpectedSize number @期望的集合长度（可选）
function ULuaSetHelper:Reset(ExpectedSize)
end

---获取集合长度
---@return number @集合长度
function ULuaSetHelper:Num()
end
