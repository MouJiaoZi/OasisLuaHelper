---@meta

---��Ʒ״̬�ı�ö��
---@class EUGCItemChangeType
---@field ItemChangeType_Add number @������Ʒʵ��
---@field ItemChangeType_Update number @������Ʒʵ�����ݸ���
---@field ItemChangeType_Remove number @�Ƴ���Ʒʵ��
EUGCItemChangeType = {}


---@class FUGCItemChangeDelegate : ULuaMulticastDelegate
FUGCItemChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ChangeType: EUGCItemChangeType, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCItemChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ChangeType EUGCItemChangeType
---@param DefineID FItemDefineID
function FUGCItemChangeDelegate:Broadcast(ChangeType, DefineID) end


---@class FUGCItemAddDelegate : ULuaMulticastDelegate
FUGCItemAddDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCItemAddDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FUGCItemAddDelegate:Broadcast(DefineID) end


---@class FUGCItemUpdateDelegate : ULuaMulticastDelegate
FUGCItemUpdateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCItemUpdateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FUGCItemUpdateDelegate:Broadcast(DefineID) end


---@class FUGCItemRemoveDelegate : ULuaMulticastDelegate
FUGCItemRemoveDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DefineID: FItemDefineID) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCItemRemoveDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DefineID FItemDefineID
function FUGCItemRemoveDelegate:Broadcast(DefineID) end


---@class IUGCItemContainerInterface: IUGCItemTransferInterface
IUGCItemContainerInterface = {}

---@param ItemID number
---@param Count number
---@param NewItemDefineIDs ULuaArrayHelper<FItemDefineID>
---@param AllowMerge boolean
---@return number
function IUGCItemContainerInterface:AddItemV2(ItemID, Count, NewItemDefineIDs, AllowMerge) end

---@param ItemDefineID FItemDefineID
---@param Count number
---@return number
function IUGCItemContainerInterface:RemoveItemByDefineIDV2(ItemDefineID, Count) end

---@param ItemDefineID FItemDefineID
---@return number
function IUGCItemContainerInterface:GetItemCountByDefineIDV2(ItemDefineID) end

---@param ItemID number
---@return number
function IUGCItemContainerInterface:GetItemCountV2(ItemID) end

---@return FUGCItemChangeDelegate
function IUGCItemContainerInterface:GetItemChangeDelegateV2() end

---@return FUGCItemAddDelegate
function IUGCItemContainerInterface:GetItemAddDelegateV2() end

---@return FUGCItemUpdateDelegate
function IUGCItemContainerInterface:GetItemUpdateDelegateV2() end

---@return FUGCItemRemoveDelegate
function IUGCItemContainerInterface:GetItemRemoveDelegateV2() end
