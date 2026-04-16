---@meta

---@class ULuaArrayHelper @数组帮助类
local ULuaArrayHelper = {}

---添加元素
---@param Item any @需要添加的元素
function ULuaArrayHelper:Add(Item)
end

---往数组里添加一个元素，如果已存在则不压入
---@param Item any @需要添加的元素
function ULuaArrayHelper:AddUnique(Item)
end

---往数组里压入一个元素
---@param Item any @需要添加的元素
function ULuaArrayHelper:Push(Item)
end

---在指定位置插入一个元素
---@param Index number @需要插入的元素索引
---@param Item any @需要添加的元素
function ULuaArrayHelper:Insert(Index, Item)
end

---移除一个元素
---@param Item any @需要移除的元素
function ULuaArrayHelper:Remove(Item)
end

---根据索引移除一个元素
---@param Index number @索引
function ULuaArrayHelper:RemoveAt(Index)
end

---弹出最后一个元素
---@return any @移除的元素
function ULuaArrayHelper:Pop()
end

---跟据索引获取一个元素
---@param Index number @索引
function ULuaArrayHelper:Get(Index)
end

---设置一个元素
---@param Index number @索引
---@param Item any @元素
function ULuaArrayHelper:Set(Index, Item)
end

---查找一个元素
---@param Item any @元素
function ULuaArrayHelper:Find(Item)
end

---判断数组是否包含某个元素
---@param Item any @元素
function ULuaArrayHelper:Contains(Item)
end

---清空数组
function ULuaArrayHelper:Empty()
end

---重置数组
---@param ExpectedSize number @数组容量（可选）
function ULuaArrayHelper:Reset(ExpectedSize)
end

---获取数组长度
---@return number @数组长度
function ULuaArrayHelper:Num()
end
