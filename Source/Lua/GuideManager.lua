---@meta

---创建新的 GuideManager 实例
---@return GuideManager
function GuideManager.New() end

---启动新手引导系统
---@param pc PlayerController @家控制器（由组件传入）
function GuideManager:Startup(pc) end

---关闭
function GuideManager:Shutdown() end

---设置组件引用
---@param component table @layerController 组件
function GuideManager:SetComponent(component) end

---获取玩家标识
---@return any
function GuideManager:GetPlayerKey() end

---是否已初始化
---@return boolean
function GuideManager:IsInitialized() end

---注册引导
---@param config table
---@return boolean
function GuideManager:RegisterGuide(config) end

---注销引导
---@param guideId string
---@return boolean
function GuideManager:UnregisterGuide(guideId) end

---手动触发引导
---@param guideId string
---@param forceQueue boolean|nil
---@return boolean
function GuideManager:TriggerGuide(guideId, forceQueue) end

---完成当前引导
---@return boolean
function GuideManager:CompleteCurrentGuide() end

---跳过当前引导
---@return boolean
function GuideManager:SkipCurrentGuide() end

---获取引导状态
---@param guideId string
---@return number|nil
function GuideManager:GetGuideState(guideId) end

---获取完成次数
---@param guideId string
---@return number
function GuideManager:GetCompletionCount(guideId) end

---获取当前激活的引导ID
---@return string|nil
function GuideManager:GetCurrentGuideId() end

---是否有引导正在进行
---@return boolean
function GuideManager:IsGuideActive() end

---获取队列长度
---@return number
function GuideManager:GetQueueLength() end

---获取队列中的引导ID列表
---@return string[]
function GuideManager:GetQueuedGuideIds() end

---获取引导条目
---@param guideId string @导ID
---@return GuideEntry|nil
function GuideManager:GetGuideEntry(guideId) end

---检查引导是否已注册
---@param guideId string @导ID
---@return boolean
function GuideManager:IsGuideRegistered(guideId) end

---获取所有已注册的引导ID列表
---@return string[]
function GuideManager:GetRegisteredGuideIds() end

---设置条件检查器
---@param guideId string
---@param checker function
function GuideManager:SetConditionChecker(guideId, checker) end

---设置轮询开关
---@param enabled boolean
function GuideManager:SetPollingEnabled(enabled) end

---设置检查间隔
---@param interval number
function GuideManager:SetCheckInterval(interval) end

---设置进度加载器
---@param loader function
function GuideManager:SetProgressLoader(loader) end

---设置进度保存器
---@param saver function
function GuideManager:SetProgressSaver(saver) end

---加载进度
---@return table
function GuideManager:LoadProgress() end

---保存进度
function GuideManager:SaveProgress() end

---清空进度
function GuideManager:ClearProgress() end

---获取进度数据
---@return table
function GuideManager:GetProgressData() end

---检查运行端模式
---@param runMode number
---@return boolean
function GuideManager:_CheckRunMode(runMode) end

---激活引导
---@param entry GuideEntry
---@return boolean
function GuideManager:_ActivateGuide(entry) end

---加入队列
---@param entry GuideEntry
---@return boolean
function GuideManager:_EnqueueGuide(entry) end

---从队列移除
---@param guideId string
function GuideManager:_RemoveFromQueue(guideId) end

---处理队列
function GuideManager:_ProcessQueue() end

---排序条目
function GuideManager:_SortEntries() end

---轮询检查
function GuideManager:_CheckConditions() end

---启动轮询
function GuideManager:_StartPolling() end

---停止轮询
function GuideManager:_StopPolling() end

---应用进度数据
---@param data table
function GuideManager:_ApplyProgressData(data) end

---获取 UID
---@return number|nil
function GuideManager:_GetUID() end

---默认保存进度
---@param data table
function GuideManager:_DefaultSaveProgress(data) end

---默认加载进度
---@return table|nil
function GuideManager:_DefaultLoadProgress() end

---【Client 端调用】同步完成状态到 DS
---@param guideId string
function GuideManager:_SyncCompletionToServer(guideId) end

---【DS 端调用】接收 Client 完成引导的同步
---@param guideId string
function GuideManager:OnClientCompleteGuide(guideId) end

---【DS 端调用】接收 Client 进度同步
---@param guideId string
---@param completionCount number
function GuideManager:OnProgressSyncFromClient(guideId, completionCount) end

---【Client 端调用】接收 DS 进度同步
---@param data table @度数据
function GuideManager:OnProgressSyncFromServer(data) end