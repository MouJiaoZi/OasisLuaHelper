---@meta

---TriggerLevel检查状态枚举 用于表示关卡加载状态检查的最终结果
---@class ETriggerLevelCheckStatus
---@field Unknown number @未检查/未知状态
---@field Normal number @正常 - 所有检查都通过
---@field Warning_NotTriggered number @警告 - Trigger未触发但关卡已加载（可能是其他方式加载的）
---@field Error_ServerNotLoaded number @错误 - DS端应该加载但未加载
---@field Error_ClientNotLoaded number @错误 - 客户端应该加载但未加载
---@field Error_BothNeed_ServerMissing number @错误 - 双端都应该加载但DS未加载
---@field Error_BothNeed_ClientMissing number @错误 - 双端都应该加载但客户端未加载
---@field Error_BothNotLoaded number @错误 - 双端都未加载
ETriggerLevelCheckStatus = {}


---StreamingLevel的加载状态信息
---@class FGMStreamingLevelInfo
---@field PackageName string @关卡的PackageName
---@field ShortName string @关卡的短名称（用于显示）
---@field bIsLoaded boolean @是否已加载
---@field bIsVisible boolean @是否可见
---@field bShouldBeLoaded boolean @是否应该被加载
---@field bShouldBeVisible boolean @是否应该可见
---@field LevelType string @关卡类型
---@field LevelBounds FBox @关卡Bounds
FGMStreamingLevelInfo = {}


---DS上所有StreamingLevel的统计信息
---@class FStreamingLevelStats
---@field UpdateTimestamp number @更新时间戳（服务器时间）
---@field LevelInfoList ULuaArrayHelper<FGMStreamingLevelInfo> @所有StreamingLevel信息列表
---@field LoadedLevelCount number @已加载的关卡数量
---@field TotalLevelCount number @总关卡数量
FStreamingLevelStats = {}


---TriggerLevel的调试信息（从TriggerLevelsComponent迁移）
---@class FTriggerLevelDebugInfo
---@field LevelName string @关卡名称
---@field LoadType ELevelLoadType @加载方式
---@field LoadTypeDisplayName string @加载方式的显示字符串
---@field bIsTriggerActivated boolean @Trigger是否已触发加载（TriggerLevelsComponent中的LoadState）
---@field bIsLoadedOnServer boolean @DS端是否已加载此关卡（从Server同步）
---@field bIsLoadedOnClient boolean @客户端是否已加载此关卡（客户端本地检查，不复制）
---@field CheckStatus ETriggerLevelCheckStatus @最终检查状态（客户端本地计算，不复制）
---@field CheckStatusDisplayName string @检查状态的显示字符串（客户端本地计算，不复制）
---@field TriggerLevelDistance number @关卡加载距离(cm)
---@field PackageName string @PackageName
---@field LevelBox FBox @关卡Bounds
FTriggerLevelDebugInfo = {}


---TriggerLevel的统计信息
---@class FTriggerLevelDebugStats
---@field UpdateTimestamp number @更新时间戳（服务器时间）
---@field TriggerLevelList ULuaArrayHelper<FTriggerLevelDebugInfo> @所有TriggerLevel信息列表
---@field LoadedCount number @已加载的TriggerLevel数量
---@field TotalCount number @总TriggerLevel数量
FTriggerLevelDebugStats = {}


---@class FOnStreamingLevelStatsUpdated : ULuaMulticastDelegate
FOnStreamingLevelStatsUpdated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Stats: FStreamingLevelStats) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStreamingLevelStatsUpdated:Add(Callback, Obj) end

---触发 Lua 广播
---@param Stats FStreamingLevelStats
function FOnStreamingLevelStatsUpdated:Broadcast(Stats) end


---@class FOnTriggerLevelDebugInfoUpdated : ULuaMulticastDelegate
FOnTriggerLevelDebugInfoUpdated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Stats: FTriggerLevelDebugStats) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTriggerLevelDebugInfoUpdated:Add(Callback, Obj) end

---触发 Lua 广播
---@param Stats FTriggerLevelDebugStats
function FOnTriggerLevelDebugInfoUpdated:Broadcast(Stats) end


---关卡GM组件 - 用于GM面板管理和调试关卡相关信息 提供DS上StreamingLevel信息的收集、同步和展示功能
---@class ULevelGMComponent: UCustomGMComponentBase
---@field OnStreamingLevelStatsUpdated FOnStreamingLevelStatsUpdated @当StreamingLevel统计数据更新时触发（客户端）
---@field OnTriggerLevelDebugInfoUpdated FOnTriggerLevelDebugInfoUpdated @当TriggerLevel调试数据更新时触发（客户端）
---@field Rep_StreamingLevelStats FStreamingLevelStats @StreamingLevel统计信息（本地存储，不复制）
---@field Rep_TriggerLevelDebugStats FTriggerLevelDebugStats @TriggerLevel调试信息（本地存储，不复制）
local ULevelGMComponent = {}

---[Server] 收集DS上所有StreamingLevel的加载信息 并更新到Rep_StreamingLevelStats，触发复制到客户端
function ULevelGMComponent:Server_CollectStreamingLevelInfo() end

---[Server] 收集并同步StreamingLevel信息（带DoRepOnce）
function ULevelGMComponent:Server_CollectAndSyncStreamingLevelInfo() end

---[Server] 收集DS上所有TriggerLevel的信息 从TriggerLevelsComponent获取CurTriggerLevels数据
function ULevelGMComponent:Server_CollectTriggerLevelInfo() end

---[Server] 收集并同步TriggerLevel信息（带DoRepOnce）
function ULevelGMComponent:Server_CollectAndSyncTriggerLevelInfo() end

---[Server] 收集并同步所有关卡信息（StreamingLevel + TriggerLevel）
function ULevelGMComponent:Server_CollectAndSyncAllLevelInfo() end

---[Client->Server] 请求服务器更新StreamingLevel信息
function ULevelGMComponent:Client_RequestUpdateStreamingLevelInfo() end

---[Client] 检查客户端关卡加载状态并更新CheckStatus 在OnRep_TriggerLevelDebugStats时自动调用
function ULevelGMComponent:Client_CheckAndUpdateLevelStatus() end

---[Client] 根据关卡名搜索关卡信息
---@param SearchName string
---@param OutResults ULuaArrayHelper<FGMStreamingLevelInfo>
---@return boolean
function ULevelGMComponent:SearchLevelsByName(SearchName, OutResults) end

---[Client->Server] RPC请求更新数据
function ULevelGMComponent:ServerRPC_RequestUpdateStreamingLevelInfo() end

---[Server->Client] 分批发送StreamingLevel数据
---@param BatchIndex number
---@param TotalBatches number
---@param BatchData ULuaArrayHelper<FGMStreamingLevelInfo>
---@param TotalCount number
---@param LoadedCount number
---@param Timestamp number
function ULevelGMComponent:ClientRPC_ReceiveStreamingLevelBatch(BatchIndex, TotalBatches, BatchData, TotalCount, LoadedCount, Timestamp) end

---[Server->Client] 分批发送TriggerLevel数据
---@param BatchIndex number
---@param TotalBatches number
---@param BatchData ULuaArrayHelper<FTriggerLevelDebugInfo>
---@param TotalCount number
---@param LoadedCount number
---@param Timestamp number
function ULevelGMComponent:ClientRPC_ReceiveTriggerLevelBatch(BatchIndex, TotalBatches, BatchData, TotalCount, LoadedCount, Timestamp) end
