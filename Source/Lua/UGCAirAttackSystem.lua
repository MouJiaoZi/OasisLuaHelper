---@meta

---轰炸区接口库
---@class UGCAirAttachSystem
UGCAirAttachSystem = {}

---生成轰炸区
---生效范围：服务器
---@param ConfigID number @轰炸配置 ID
---@param Location FVector @轰炸中心坐标（系统会自动通过射线检测将炸弹位置修正到地面高度）
---@return bool, number @是否成功生成轰炸区, 实例ID
function UGCAirAttachSystem.GenerateBombingArea(ConfigID, Location) end

---停止轰炸区
---生效范围：服务器
---@param InstanceID number @轰炸实例 ID
---@return bool @是否成功停止轰炸区
function UGCAirAttachSystem.StopBombingArea(InstanceID) end

---修改轰炸区参数
---生效范围：服务器
---@param ConfigID number @轰炸配置 ID
---@param ParameterType string @参数类型（如："AttackAreaRadius", "EscapeTime", "AttackLastingTime"等）
---@param NewValue number @新的参数值
---@return bool @是否成功修改轰炸配置
function UGCAirAttachSystem.ModifyBombingAreaConfig(ConfigID, ParameterType, NewValue) end

---查看当前全部轰炸区
---生效范围：服务器
---@return table<number, UGCAirAttackConfig> @所有轰炸实例ID和对应的轰炸参数
function UGCAirAttachSystem.GetAllConfigBombingArea() end

---查看指定轰炸区参数
---生效范围：服务器
---@param InstanceID number @轰炸实例 ID
---@return UGCAirAttackConfig @指定实例的轰炸参数
function UGCAirAttachSystem.GetSpecifyBombingAreaList(InstanceID) end

---获取轰炸区管理器
---生效范围：服务器&客户端
---@return UGCAirAttackManager @轰炸区管理器实例，失败时返回nil
function UGCAirAttachSystem.GetAirAttackManager() end