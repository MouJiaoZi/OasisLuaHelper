---@meta

--- 创建新的引导条目
---@param config table @置表（见文件头部字段说明）
---@return GuideEntry|nil @uideEntry 实例，失败返回 nil
function GuideEntry.New(config) end

--- 初始化引导
--- 创建 triggerFunc 闭包，调用 onSetup 回调
---@param triggerGuideFunc function @发引导的函数（由 GuideManager 传入）
function GuideEntry:Setup(triggerGuideFunc) end

--- 清理引导
--- 调用 onTeardown 回调，释放资源
function GuideEntry:Teardown() end

--- 检查引导是否可用
--- 条件：已启用、非激活/禁用状态、未达完成上限
---@return boolean
function GuideEntry:IsAvailable() end

--- 检查前置依赖是否满足
---@param getCompletionCountFunc function @取指定引导完成次数的函数
---@return boolean
function GuideEntry:CheckPrerequisites(getCompletionCountFunc) end

--- 检查触发条件
--- 调用 conditionChecker 回调，带 pcall 保护
---@return boolean
function GuideEntry:CheckCondition() end

--- 激活引导
--- 设置状态为 Active，调用 onActivate 回调
---@return boolean
function GuideEntry:Activate() end

--- 完成引导
--- 增加完成次数，调用 onComplete 回调，更新状态
---@return boolean
function GuideEntry:Complete() end

--- 跳过引导
--- 将 Active 或 Queued 状态重置为 Idle
function GuideEntry:Skip() end

--- 设置为排队状态
function GuideEntry:SetQueued() end

--- 重置引导状态
--- 清空完成次数，恢复为初始状态
function GuideEntry:Reset() end

--- 获取用户自定义数据
---@return table|nil
function GuideEntry:GetUserData() end

--- 设置用户自定义数据
---@param data table
function GuideEntry:SetUserData(data) end

--- 序列化为可存储的数据
--- 仅保存需要持久化的字段
---@return table
function GuideEntry:Serialize() end

--- 从存储数据反序列化
--- 恢复完成次数和启用状态
---@param data table @储的数据
function GuideEntry:Deserialize(data) end