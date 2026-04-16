---@meta

---初始化引导系统
function BP_UGCNewbieGuideComponent:InitializeGuideSystem() end

---获取 GuideManager 实例
---@return GuideManager|nil
function BP_UGCNewbieGuideComponent:GetGuideManager() end

---获取需要复制的属性列表
---@return string, string
function BP_UGCNewbieGuideComponent:GetReplicatedProperties() end

---属性复制回调（Client 端接收）
---@param PropertyName string
function BP_UGCNewbieGuideComponent:OnRep_GuideProgressDataStr(PropertyName) end

---同步进度到 Client（DS 端调用）
function BP_UGCNewbieGuideComponent:SyncProgressToClient() end

---获取可用的 ServerRPC 列表
---@return string
function BP_UGCNewbieGuideComponent:GetAvailableServerRPCs() end

---【ServerRPC】同步引导进度到 DS
---@param guideId string @导ID
---@param completionCount number @成次数
function BP_UGCNewbieGuideComponent:Server_SyncGuideProgress(guideId, completionCount) end

---【ServerRPC】Client 端完成引导，同步到 DS
---@param guideId string @导ID
function BP_UGCNewbieGuideComponent:Server_CompleteGuide(guideId) end

---序列化表为字符串
---@param tbl table
---@return string
function BP_UGCNewbieGuideComponent:SerializeTable(tbl) end