---@meta

---@class FUpdateBTReuseDelegate : ULuaMulticastDelegate
FUpdateBTReuseDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, item: UUAEUserWidget, index: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUpdateBTReuseDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param item UUAEUserWidget
---@param index number
function FUpdateBTReuseDelegate:Broadcast(item, index) end


---@class UBTReuseList: UUAEUserWidget
---@field itemSizeX number
---@field itemSizeY number
---@field itemSizeYList ULuaArrayHelper<number>
---@field totalNum number
---@field misaligned boolean
---@field visibleNum number
---@field topEmptyNum number
---@field oldTopEmptyNum number
---@field spacerList ULuaArrayHelper<USpacer>
---@field itemList ULuaArrayHelper<UUAEUserWidget>
---@field totalHeight number
---@field itemClass UUAEUserWidget
---@field itemUpdateDelegate FUpdateBTReuseDelegate
local UBTReuseList = {}

function UBTReuseList:DoInit() end

---@param itemX number
---@param itemY number
---@param num number
---@param misalign boolean
function UBTReuseList:SetRowNumAsUnif(itemX, itemY, num, misalign) end

---@param offset number
function UBTReuseList:RefreshListByOffset(offset) end
