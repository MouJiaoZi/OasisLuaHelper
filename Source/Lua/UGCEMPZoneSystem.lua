---@meta

---电磁干扰区接口库
---@class UGCEMPZoneSystem
UGCEMPZoneSystem = {}

---生成电磁干扰区
---生效范围：服务器
---@param ConfigID number @电磁干扰区配置 ID
---@param Location FVector @电磁干扰区中心坐标
---@return bool, number @是否成功生成电磁干扰区, 实例ID
function UGCEMPZoneSystem.GenerateElectromagneticArea(ConfigID, Location) end

---取消电磁干扰区
---生效范围：服务器
---@param InstanceID number @电磁干扰区实例 ID
---@return bool @是否成功取消电磁干扰区
function UGCEMPZoneSystem.DestroyElectromagneticArea(InstanceID) end

---修改电磁干扰区参数
---生效范围：服务器
---@param ConfigID number @电磁干扰区配置 ID
---@param ParameterType string @参数类型
---@param NewValue number @新的参数值
---@return bool @是否成功修改电磁干扰区配置
function UGCEMPZoneSystem.ModifyConfigElectromagneticArea(ConfigID, ParameterType, NewValue) end

---查看当前全部电磁干扰区
---生效范围：服务器
---@return table<number, UGCEMPZoneConfig> @所有电磁干扰区实例ID和对应的电磁干扰区参数
function UGCEMPZoneSystem.GetAllConfigElectromagneticArea() end

---查看指定电磁干扰区参数
---生效范围：服务器
---@param InstanceID number @电磁干扰区实例 ID
---@return UGCEMPZoneConfig @指定实例的电磁干扰区参数
function UGCEMPZoneSystem.GetSpecifyElectromagneticAreaList(InstanceID) end

---获取电磁干扰区管理器
---获取电磁干扰区全局管理器实例，用于绑定电磁干扰区相关事件
---生效范围：服务器&客户端
---@return UGCEMPZoneManager @电磁干扰区管理器实例，失败时返回nil
function UGCEMPZoneSystem.GetEMPZoneManager() end