---@meta

---客户端：SyncGroups 复制到达，遍历每组将 Entries 应用到对应的 TargetObject
---利用 Serial 批次号跳过已处理的旧条目，避免增量追加后重复应用历史数据
function IDIPSyncComp:OnRep_SyncGroups() end