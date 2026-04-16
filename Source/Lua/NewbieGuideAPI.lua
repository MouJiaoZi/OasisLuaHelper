---@meta

---注册玩家的 GuideManager 实例
---@param playerKey any @家标识
---@param manager GuideManager @anager 实例
---@param component table @件实例
function NewbieGuideAPI.Register(playerKey, manager, component) end

---注销玩家的 GuideManager 实例
---@param playerKey any @家标识
function NewbieGuideAPI.Unregister(playerKey) end

---获取指定玩家的 GuideManager
---@param playerKey any @家标识
---@return GuideManager|nil
function NewbieGuideAPI.GetManager(playerKey) end

---获取指定玩家的组件
---@param playerKey any @家标识
---@return table|nil
function NewbieGuideAPI.GetComponent(playerKey) end

---获取本地玩家的 GuideManager（仅 Client 端）
---@return GuideManager|nil
function NewbieGuideAPI.GetLocalManager() end

---获取本地玩家的组件（仅 Client 端）
---@return table|nil
function NewbieGuideAPI.GetLocalComponent() end

---获取本地玩家的 playerKey（仅 Client 端）
---@return any
function NewbieGuideAPI.GetLocalPlayerKey() end

---获取所有注册的 playerKey 列表
---@return any[]
function NewbieGuideAPI.GetAllPlayerKeys() end

---获取注册的实例数量
---@return number
function NewbieGuideAPI.GetInstanceCount() end

---清空所有注册（测试用）
function NewbieGuideAPI.ClearRegistry() end

---是否已初始化
---@param playerKey any|nil @家标识（Client 端可省略）
---@return boolean
function NewbieGuideAPI.IsInitialized(playerKey) end

---注册引导
---@param config table @导配置
---@param playerKey any|nil @家标识（Client 端可省略）
---@return boolean
function NewbieGuideAPI.RegisterGuide(config, playerKey) end

---注销引导
---@param guideId string @导ID
---@param playerKey any|nil @家标识（Client 端可省略）
---@return boolean
function NewbieGuideAPI.UnregisterGuide(guideId, playerKey) end

---触发引导
---@param guideId string @导ID
---@param forceQueue boolean|nil @否强制排队
---@param playerKey any|nil @家标识（Client 端可省略）
---@return boolean
function NewbieGuideAPI.TriggerGuide(guideId, forceQueue, playerKey) end

---完成当前引导
---@param playerKey any|nil @家标识（Client 端可省略）
---@return boolean
function NewbieGuideAPI.CompleteCurrentGuide(playerKey) end

---跳过当前引导
---@param playerKey any|nil @家标识（Client 端可省略）
---@return boolean
function NewbieGuideAPI.SkipCurrentGuide(playerKey) end

---获取引导状态
---@param guideId string @导ID
---@param playerKey any|nil @家标识（Client 端可省略）
---@return number|nil
function NewbieGuideAPI.GetGuideState(guideId, playerKey) end

---获取完成次数
---@param guideId string @导ID
---@param playerKey any|nil @家标识（Client 端可省略）
---@return number
function NewbieGuideAPI.GetCompletionCount(guideId, playerKey) end

---获取当前激活的引导ID
---@param playerKey any|nil @家标识（Client 端可省略）
---@return string|nil
function NewbieGuideAPI.GetCurrentGuideId(playerKey) end

---是否有引导正在进行
---@param playerKey any|nil @家标识（Client 端可省略）
---@return boolean
function NewbieGuideAPI.IsGuideActive(playerKey) end

---获取队列长度
---@param playerKey any|nil @家标识（Client 端可省略）
---@return number
function NewbieGuideAPI.GetQueueLength(playerKey) end

---获取队列中的引导ID列表
---@param playerKey any|nil @家标识（Client 端可省略）
---@return string[]
function NewbieGuideAPI.GetQueuedGuideIds(playerKey) end

---获取进度数据
---@param playerKey any|nil @家标识（Client 端可省略）
---@return table
function NewbieGuideAPI.GetProgressData(playerKey) end

---设置条件检查器
---@param guideId string @导ID
---@param checker function @查函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.SetConditionChecker(guideId, checker, playerKey) end

---设置轮询开关
---@param enabled boolean @否启用
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.SetPollingEnabled(enabled, playerKey) end

---设置检查间隔
---@param interval number @隔秒数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.SetCheckInterval(interval, playerKey) end

---设置进度加载器
---@param loader function @载函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.SetProgressLoader(loader, playerKey) end

---设置进度保存器
---@param saver function @存函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.SetProgressSaver(saver, playerKey) end

---保存进度
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.SaveProgress(playerKey) end

---加载进度
---@param playerKey any|nil @家标识（Client 端可省略）
---@return table
function NewbieGuideAPI.LoadProgress(playerKey) end

---清空进度
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.ClearProgress(playerKey) end

---获取 OnGuideActivated 事件委托
---@param playerKey any|nil @家标识（Client 端可省略）
---@return Delegate|nil
function NewbieGuideAPI.GetOnGuideActivated(playerKey) end

---获取 OnGuideCompleted 事件委托
---@param playerKey any|nil @家标识（Client 端可省略）
---@return Delegate|nil
function NewbieGuideAPI.GetOnGuideCompleted(playerKey) end

---获取 OnGuideQueued 事件委托
---@param playerKey any|nil @家标识（Client 端可省略）
---@return Delegate|nil
function NewbieGuideAPI.GetOnGuideQueued(playerKey) end

---获取 OnProgressChanged 事件委托
---@param playerKey any|nil @家标识（Client 端可省略）
---@return Delegate|nil
function NewbieGuideAPI.GetOnProgressChanged(playerKey) end

---添加引导激活监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.AddOnGuideActivatedListener(callback, playerKey) end

---移除引导激活监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.RemoveOnGuideActivatedListener(callback, playerKey) end

---添加引导完成监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.AddOnGuideCompletedListener(callback, playerKey) end

---移除引导完成监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.RemoveOnGuideCompletedListener(callback, playerKey) end

---添加引导排队监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.AddOnGuideQueuedListener(callback, playerKey) end

---移除引导排队监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.RemoveOnGuideQueuedListener(callback, playerKey) end

---添加进度变化监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.AddOnProgressChangedListener(callback, playerKey) end

---移除进度变化监听
---@param callback function @调函数
---@param playerKey any|nil @家标识（Client 端可省略）
function NewbieGuideAPI.RemoveOnProgressChangedListener(callback, playerKey) end