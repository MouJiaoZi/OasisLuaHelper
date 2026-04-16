---@meta

---@class EVENTS
---@field VEHICLE_ACTOR number
---@field VEHICLE_DRIVE_AWAY number
EVENTS = {}


---载具刷新器工具，用于管理载具的自动刷新和生成
---@class BP_UGCVehicleRefresherTool
local BP_UGCVehicleRefresherTool = {}

---添加载具生成事件监听器，外部代码调用此方法注册载具生成事件监听
---生效范围：服务器
---@param callback function @回调函数，参数为(Vehicle)
---@param context any @上下文对象（可选）
function BP_UGCVehicleRefresherTool:AddVehicleEventListener(callback, context) end

---添加载具开走事件监听器，外部代码调用此方法注册载具开走事件监听
---生效范围：服务器
---@param callback function @回调函数，参数为(Vehicle)
---@param context any @上下文对象（可选）
function BP_UGCVehicleRefresherTool:AddVehicleDriveAwayEventListener(callback, context) end

---移除载具生成事件监听器
---生效范围：服务器
---@param callback function @回调函数
---@param context any @上下文对象
function BP_UGCVehicleRefresherTool:RemoveVehicleEventListener(callback, context) end

---移除载具开走事件监听器
---生效范围：服务器
---@param callback function @回调函数
---@param context any @上下文对象
function BP_UGCVehicleRefresherTool:RemoveVehicleDriveAwayEventListener(callback, context) end

---根据权重配置随机生成载具
---生效范围：服务器
---@return boolean @true-生成成功, false-生成失败
function BP_UGCVehicleRefresherTool:GenerateVehicle() end

---生成指定的载具蓝图
---生效范围：服务器
---@param VehiclePath string @载具蓝图路径，如"/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C"
---@return boolean @true-生成成功, false-生成失败
function BP_UGCVehicleRefresherTool:GenerateCustomizeVehicle(VehiclePath) end

---销毁当前刷新点管理的载具
---生效范围：服务器
---@return boolean @true-销毁成功, false-销毁失败
function BP_UGCVehicleRefresherTool:DestroyCurrentVehicle() end

---重置载具刷新点，如果载具还在原地，先销毁再重新刷新
---生效范围：服务器
---@return boolean @true-重置成功, false-重置失败
function BP_UGCVehicleRefresherTool:ResetVehicleRespawnPoint() end

---获取配置的载具列表信息
---生效范围：服务器&客户端
---@return table @载具配置列表，包含index、path、weight字段
function BP_UGCVehicleRefresherTool:GetVehicleRespawnPointConfig() end

---获取当前车辆的实时状态信息
---生效范围：服务器&客户端
---@return table @当前车辆信息（包含isValid、location、healthState、hasDriver等字段），如无车辆返回false
function BP_UGCVehicleRefresherTool:GetVehicleStatusConfig() end