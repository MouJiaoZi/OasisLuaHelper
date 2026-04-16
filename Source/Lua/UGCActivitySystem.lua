---@meta

---UGC活动生效周期
---@class UGCActivityPeriod
---@field StartTime int @开始时间
---@field EndTime int @结束时间
local UGCActivityPeriod = {}

---UGC活动信息
---@class UGCActivityInfo
---@field ID int @活动ID
---@field Title string @活动标题
---@field Description string @活动描述
---@field bEnabled bool @活动在管理平台是否开启
---@field bPermanentTime bool @是否时永久活动
---@field Periods UGCActivityPeriod[] @活动生效时间周期
local UGCActivityInfo = {}

---活动系统库（需要启用活动GamePart）
---@class UGCActivitySystem
UGCActivitySystem = {}

---活动信息准备好时触发的委托
---生效范围：客户端&&服务器
UGCActivitySystem.OnActivityInfoReadyDelegate = nil

---更新有效活动时触发的委托
---活动系统会按照每个活动配置的生效周期来定期更新有效活动
---生效范围：客户端&&服务器
UGCActivitySystem.OnUpdateValidActivityIDsDelegate = nil

---活动信息是否已准备好
---生效范围：客户端&&服务器
---@return bool @活动信息是否已准备好
function UGCActivitySystem.IsActivityInfoReady() end

---获取所有活动的信息
---生效范围：客户端&&服务器
---@return UGCActivityInfo[] @所有活动信息
function UGCActivitySystem.GetAllActivityInfos() end

---获取指定活动ID的活动信息
---生效范围：客户端&&服务器
---@param ActivityID int @活动ID
---@return UGCActivityInfo @活动信息
function UGCActivitySystem.GetActivityInfo(ActivityID) end

---获取所有有效的活动ID
---生效范围：客户端&&服务器
---@return int[]
function UGCActivitySystem.GetValidActivityIDs() end

---获取指定活动距当前时间最近的生效周期序号，
---如果已经没有符合条件的开启周期，则返回最后一个生效周期的序号
---生效范围：服务器&客户端
---@param ActivityID int @活动ID
---@return int @活动开启周期序号, 0表示永久时间，-1表示活动不存在或未开启
function UGCActivitySystem.GetNearestPeriodIndex(ActivityID) end