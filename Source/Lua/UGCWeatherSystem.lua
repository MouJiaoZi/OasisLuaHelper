---@meta

---天气系统接口库
---@class UGCWeatherSystem
UGCWeatherSystem = {}

---加载天气序列
---生效范围：服务器
---@param PlayerController PlayerController @玩家控制器
---@param WeatherSequence WeatherSequence @天气序列资源
---@param BlendTime number @过渡时间
function UGCWeatherSystem.LoadWeatherSequence(PlayerController, WeatherSequence, BlendTime) end

---卸载天气序列
---生效范围：服务器
---@param PlayerController PlayerController @玩家控制器
---@param WeatherSequence WeatherSequence @天气序列资源
function UGCWeatherSystem.UnloadWeatherSequence(PlayerController, WeatherSequence) end

---设置天气序列播放进度
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@param WeatherSequence WeatherSequence @天气序列资源
---@param Time number @目标时间
function UGCWeatherSystem.SeekWeatherSequence(PlayerController, WeatherSequence, Time) end

---暂停天气序列
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@param WeatherSequence WeatherSequence @天气序列资源
function UGCWeatherSystem.PauseWeatherSequence(PlayerController, WeatherSequence) end

---继续天气序列
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@param WeatherSequence WeatherSequence @天气序列资源
function UGCWeatherSystem.ResumeWeatherSequence(PlayerController, WeatherSequence) end

---获取当前天气序列
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@return WeatherSequence @天气序列资源
function UGCWeatherSystem.GetCurrentWeatherSequence(PlayerController) end

---获取当前天气播放进度
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@return number @播放进度（0~1）
function UGCWeatherSystem.GetCurrentWeatherPlayPercentage(PlayerController) end

---获取当前天气时间
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@return number @天气时间（0~24）
function UGCWeatherSystem.GetCurrentWeatherTime(PlayerController) end