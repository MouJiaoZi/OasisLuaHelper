---@meta

---空投系统接口库
---@class UGCAirDropManagerSystem
UGCAirDropManagerSystem = {}

---生成指定ID空投
---生效范围：服务器
---@param ID number @空投配置ID
---@param DroppingLocation FVector @掉落位置 结构Vector={X=0,Y=0,Z=0}
---@param DroppingSpeed number @掉落速度
---@return bool, int32 @是否生成成功, 实例ID
function UGCAirDropManagerSystem.GenerateAirDrop(ID, DroppingLocation, DroppingSpeed) end

---获得所有空投配置
---生效范围：服务器
---@param ID number @空投配置ID
---@return OneAirDrop[] @空投配置
function UGCAirDropManagerSystem.GetAllAirDropConfigs(ID) end

---销毁指定实例ID空投
---生效范围：服务器
---@param InsID number @指定实例ID的空投 0.1s 后销毁
---@return boolean @是否销毁成功
function UGCAirDropManagerSystem.DestroyAirDrop(InsID) end

---获取指定实例ID空投的物品列表
---生效范围：服务器
---@param InsID number @空投实例InsID
---@return FPickUpItemData[] @空投的物品列表
function UGCAirDropManagerSystem.GetAirDropItemList(InsID) end

---获取当前场景内所有的实例ID
---生效范围：服务器
---@return int32[] @空投实例ID列表
function UGCAirDropManagerSystem.GetAllAirDropInstanceIDs() end