---@meta

---UGC地面拾取物Actor
---@class AUGCPickUpWrapperActor: APickUpWrapperActor
---@field ItemID number
---@field ShowCount number
---@field GroundParticlePath FSoftObjectPath
local AUGCPickUpWrapperActor = {}

function AUGCPickUpWrapperActor:OnRep_DefineID() end

function AUGCPickUpWrapperActor:OnRep_DefineID_BP() end

---获取拾取物物品的实例ID
---DS & 客户端 可调用
---@return FItemDefineID @实例ID
function AUGCPickUpWrapperActor:GetDefineID() end

---获取拾取物物品的物品数量
---DS & 客户端 可调用
---@return number @物品数量
function AUGCPickUpWrapperActor:GetItemCount() end

function AUGCPickUpWrapperActor:TryInitPickupWrapper() end

---Event
---当地面拾取物初始化后回调
---可重载并自定义
---DS & 客户端 被调用
---能通过此事件，实现自定义的初始化逻辑
function AUGCPickUpWrapperActor:OnInitPickupWrapper() end

---Event
---当地面拾取物被拾取后回调
---可重载并自定义
---DS 被调用
---能通过此事件，实现自定义的被拾取后处理逻辑
---@param PickupCharacter ASTExtraBaseCharacter @拾取物品的角色
---@param PickupCount number @拾取数量
---@param NewItemCount number @拾取后的物品数量
function AUGCPickUpWrapperActor:OnItemPickup(PickupCharacter, PickupCount, NewItemCount) end

---Event
---当地面拾取物物品数量改变时回调(拾取物销毁时也会有回调)
---如果是拾取导致的改变，时机略晚于 OnItemPickup
---可重载并自定义
---DS & 客户端 被调用
---能通过此事件，实现自定义的物品数量改变处理逻辑
---@param OldItemCount number @改变前的物品数量
---@param NewItemCount number @改变后的物品数量
function AUGCPickUpWrapperActor:OnItemCountChange(OldItemCount, NewItemCount) end

---Event
---当地面拾取物销毁前回调
---可重载并自定义
---DS & 客户端 被调用
---能通过此事件，实现自定义的反初始化逻辑
function AUGCPickUpWrapperActor:OnUnInitPickupWrapper() end
