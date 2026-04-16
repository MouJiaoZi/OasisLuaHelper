---@meta

---计时器工具类
---@class UGCTimerUtility
UGCTimerUtility = {}

---定时器实例
---@class UGCLuaTimerInstance
---@field timePoint number
---@field offset number
---@field func function
---@field loop boolean
---@field name string
---@field willLog boolean
local UGCLuaTimerInstance = {}

---创建 Lua 计时器
--- 1. TimeOffset > 0，则 TimeOffset 单位是秒。
--- 2. TimeOffset == 0，遇到 tick 就会执行。
--- 3. TimeOffset < 0，是负数如 -N 的话，会在间隔 N 帧后执行第一次。如果传入了 InitDelay，则此条略过，按下面 InitDelay 参数说明来执行：
--- 	a) 如果 InitDelay ~= nil(即传入 InitDelay 参数)，则计时器会在 InitDelay 秒后执行第一次；后面根据 TimeOffset 的设置，循环调用。
--- 	b) 如果 InitDelay == 0，则 InsertTimer 时，会立即执行第一次；后面根据 TimeOffset 的设置，循环调用。
---		c) 如果 InitDelay == nil(即未传入 InitDelay 参数)，则会在 TimeOffset 后，执行第一次；后面根据 TimeOffset 的设置，循环调用。
---生效范围：服务器&客户端
---@param TimeOffset number @间隔时间
---@param Callback function @回调函数
---@param bLoop boolean @是否循环
---@param TimerName string @计时器名称
---@param InitDelay number @第一次执行延迟时间
---@param bLog boolean @是否记录日志
---@param bCoroutine boolean @是否是协程
---@return UGCLuaTimerInstance @创建的计时器实例
function UGCTimerUtility.CreateLuaTimer(TimeOffset, Callback, bLoop, TimerName, InitDelay, bLog, bCoroutine) end

---移除 Lua 计时器
---生效范围：服务器&客户端
---@param TimerInstance UGCLuaTimerInstance @计时器实例
function UGCTimerUtility.RemoveLuaTimer(TimerInstance) end

---根据名称移除 Lua 计时器
---生效范围：服务器&客户端
---@param TimerName string @计时器名称
function UGCTimerUtility.RemoveLuaTimerByName(TimerName) end

---根据名称判断 Lua 计时器是否存在
---生效范围：服务器&客户端
---@param TimerName string @计时器名称
---@return boolean @是否存在
function UGCTimerUtility.IsLuaTimerExistByName(TimerName) end

---设置 UE 计时器
---生效范围：服务器&客户端
---@param CallbackFunction LuaFunction @Lua 回调函数
---@param Time number @定时时长
---@param IsLooping boolean @是否循环
---@return FTimerHandle, ULuaSingleDelegate @计时器句柄，计时器回调
function UGCTimerUtility.CreateUETimer(CallbackFunction, Time, IsLooping) end

---移除 UE 计时器
---生效范围：服务器&客户端
---@param TimerHandle FTimerHandle @计时器句柄
function UGCTimerUtility.RemoveUETimer(TimerHandle) end