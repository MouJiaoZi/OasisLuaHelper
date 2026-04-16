---@meta

---一组需要同步的 IDIP 属性修改：目标对象 + 属性条目列表 + 批次序号
---@class FIDIP_SyncGroup
---@field Entries ULuaArrayHelper<FIDIP_ItemAttributeValue> @该目标对象上需要修改的属性条目
---@field Serial number @批次序号：每次 BeginBatch 递增，客户端据此跳过已处理的旧批次
FIDIP_SyncGroup = {}


---@class UIDIPSyncComp: UActorComponent, ILuaInterface
---@field SyncGroups ULuaArrayHelper<FIDIP_SyncGroup> @多组同步数据，每组含一个 TargetObject 引用和对应的属性条目列表；持续追加，不清空
local UIDIPSyncComp = {}

---@return string
function UIDIPSyncComp:GetLuaModule() end

---服务端：追加一组 (TargetObject, Entries)，支持同一帧多次调用（不同 TargetObject）
---@param InTargetObject UObject
---@param NewEntries ULuaArrayHelper<FIDIP_ItemAttributeValue>
function UIDIPSyncComp:AddSyncData(InTargetObject, NewEntries) end

---服务端（Lua 友好）：逐条追加单个属性条目到指定 TargetObject 的同步组 同一 TargetObject 多次调用会合并到同一组，避免重复创建
---@param InTargetObject UObject
---@param Entry FIDIP_ItemAttributeValue
function UIDIPSyncComp:AddSyncEntry(InTargetObject, Entry) end

---服务端：开始新批次，CurrentSerial 自增，后续 AddSyncData/AddSyncEntry 的条目归属该批次
function UIDIPSyncComp:BeginBatch() end

---服务端：清空所有同步组（下次属性修改前调用，避免累积旧数据）
function UIDIPSyncComp:ClearSyncGroups() end

---客户端：SyncGroups 复制到达时的 Lua 覆写入口，遍历每组应用属性
function UIDIPSyncComp:OnRep_SyncGroups() end
