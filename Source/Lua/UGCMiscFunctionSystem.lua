---@meta

---游戏杂项函数接口库
---@class UGCMiscFunctionSystem
UGCMiscFunctionSystem = {}

---开始航线飞行
---生效范围：服务器
---@param WorldObjectContext UObject @世界上下文对象
function UGCMiscFunctionSystem.StartAirRoute(WorldObjectContext) end

---【废弃】请使用 UGCAirDropManagerSystem
---开始空投
---生效范围：服务器
---@deprecated @UGCAirDropManagerSystem
---@param WorldObjectContext UObject @世界上下文对象
---@param Index number @定时普通空投设置中的配置序号（AirDropConfigsUGC）
---@param AirDropType EAirDropType @空投箱空投类型一般为 EAirDropType.AirDrop_NormalAirDrop
function UGCMiscFunctionSystem.StartAirDrop(WorldObjectContext, Index, AirDropType) end

---【废弃】请使用 UGCAirDropManagerSystem
---自定义空投
---生效范围：服务器
---@deprecated @UGCAirDropManagerSystem
---@param WorldObjectContext UObject @世界上下文对象
---@param StartPos Vector2D @飞机起始点,结构：{X=x,Y=y}
---@param DropPos Vector2D @飞机结束点，结构：{X=x,Y=y}
---@param Distance number @空投点距离起始点的比例 （0-1）的一个范围，0=StartPos，1=DropPos
---@param AirDropType EAirDropType @空投箱空投类型一般为EAirDropType.AirDrop_NormalAirDrop
function UGCMiscFunctionSystem.StartNormalAirDrop(WorldObjectContext, StartPos, DropPos, Distance, AirDropType) end