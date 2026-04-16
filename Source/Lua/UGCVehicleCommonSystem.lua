---@meta

---载具系统通用功能接口库
---@class UGCVehicleCommonSystem
UGCVehicleCommonSystem = {}

---设置载具最大血量
---本接口不会自动改变载具血量，游戏逻辑中改变载具血量时（比如收到伤害、载具维修等）会考虑载具最大血量
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param MaxHP number @最大血量
function UGCVehicleCommonSystem.SetVehicleHPMax(Vehicle, MaxHP) end

---设置载具血量
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param HP number @血量
function UGCVehicleCommonSystem.SetVehicleHP(Vehicle, HP) end

---设置载具油量（按照百分比设置）
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param FuelPercent number @油量百分比
function UGCVehicleCommonSystem.SetVehicleFuelPercent(Vehicle, FuelPercent) end

---获得载具最大血量
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具最大血量
function UGCVehicleCommonSystem.GetVehicleHPMax(Vehicle) end

---获得载具当前血量
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具当前血量
function UGCVehicleCommonSystem.GetVehicleHP(Vehicle) end

---获得载具最大油量
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具最大油量
function UGCVehicleCommonSystem.GetVehicleFuelMax(Vehicle) end

---获得当前油耗系数
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @当前油耗系数
function UGCVehicleCommonSystem.GetVehicleFuelConsumeFactor(Vehicle) end

---获得当前油量
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @当前油量
function UGCVehicleCommonSystem.GetVehicleFuel(Vehicle) end

---获得当前是否不耗油
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return boolean @当前是否不耗油
function UGCVehicleCommonSystem.IsDontConsumeFuel(Vehicle) end

---获得当前是否不受到伤害
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return boolean @当前是否不受到伤害
function UGCVehicleCommonSystem.IsDontDamage(Vehicle) end

---获得轮胎血量
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param WheelIndex number @轮胎 ID（从 1 开始）
---@return number @载具轮子血量
function UGCVehicleCommonSystem.GetWheelHP(Vehicle, WheelIndex) end

---设置轮胎血量
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param WheelIndex number @轮胎 ID（从 1 开始）
---@param HP number @载具轮子血量
---@return boolean @设置是否成功
function UGCVehicleCommonSystem.SetWheelHP(Vehicle, WheelIndex, HP) end