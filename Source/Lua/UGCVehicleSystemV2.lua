---@meta

---【实验性】载具系统接口库V2
---@class UGCVehicleSystemV2
UGCVehicleSystemV2 = {}

---【实验性】载具座位数据
---@class UGCVehicleSeatData
---@field SeatIndex int @座位索引，从0开始
---@field PlayerPawn ASTExtraBaseCharacter @坐在座位上的乘客，无乘客为 nil
---@field bDriverSeat bool @是否为司机位
---@field bCanLeanOut bool @是否可以探头
---@field CurrentWeapon AUGCVehicleShootWeapon @当前生效的载具武器，无武器为 nil
local UGCVehicleSeatData = {}

---【实验性】使用蓝图路径生成载具
---不要在 Spawn 之后立马修改载具位置，等载具落地停稳后再修改，不然位置修改会失败（如果有类似需求，建议直接创建在对应点）
---生效范围：服务器
---@param VehiclePath string @载具蓝图路径，格式示例："/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C"
---@param Location Vector @生成位置
---@param Rotation Rotator @旋转。可缺省，默认无旋转
---@param SnapFloor bool @是否贴地。可缺省，默认 true
---@param IsForce bool @是否无视碰撞强行生成。 可缺省，默认 false
---@return ASTExtraVehicleBase @载具
function UGCVehicleSystemV2.SpawnVehicle(VehiclePath, Location, Rotation, SnapFloor, IsForce) end

---【实验性】摧毁载具
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystemV2.DestroyVehicle(Vehicle) end

---【实验性】重生载具
---重生将创建新载具，旧的载具将被销毁不再可用
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@return ASTExtraVehicleBase @重生后的新载具。若为nil，表示操作失败，新的载具不会创建、旧的载具也不会销毁。
function UGCVehicleSystemV2.Respawn(Vehicle) end

---【实验性】玩家角色进入载具
---生效范围：服务器&客户端(客户端仅能操作自己的玩家角色)
---@param Player PlayerPawn | PlayerController @玩家角色或玩家PlayerController
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex int @座位索引(0为驾驶位，-1表示尝试进入任意空位置)。可缺省，默认-1。
---@param IsForce bool @是否无视距离和阻挡(仅服务器调用支持此项)。可缺省，默认 false
---@return bool @服务器:是否成功进入 | 客户端:返回值无意义
function UGCVehicleSystemV2.EnterVehicle(Player, Vehicle, SeatIndex, IsForce) end

---【实验性】玩家角色离开载具
---生效范围：服务器&客户端(客户端仅能操作自己的玩家角色)
---@param Player PlayerPawn | PlayerController @玩家角色或玩家PlayerController
---@param IsForce bool @是否需要强制离开载具(仅服务器调用支持此项)。可缺省，默认 false
---@return bool @服务器:是否成功离开 | 客户端:返回值无意义
function UGCVehicleSystemV2.LeaveVehicle(Player, IsForce) end

---【实验性】获取载具类型
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return ESTExtraVehicleBaseType @载具基础类型
function UGCVehicleSystemV2.GetVehicleType(Vehicle) end

---【实验性】驾驶员是否可以操控载具
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return bool @是否可以操控载具
function UGCVehicleSystemV2.CanDrive(Vehicle) end

---【实验性】操作载具前进/后退
---需要在驾驶员所在客户端每帧调用
---当地面载具处于前进状态时，输入后退操作，将执行刹车逻辑，受刹车力量系数(BrakeTorqueCoefficient)影响。
---当地面载具处于后退状态时，输入前进操作，也将执行刹车逻辑。
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param Throttle float @取值范围[-1,1]，负值代表后退，正值代表前进
function UGCVehicleSystemV2.MoveForward(Vehicle, Throttle) end

---【实验性】操作载具打右方向/左方向
---需要在驾驶员所在客户端每帧调用
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param Throttle float @取值范围[-1,1]，负值代表左方向，正值代表右方向
function UGCVehicleSystemV2.MoveTurn(Vehicle, Throttle) end

---【实验性】获得载具是否支持(急刹)手刹
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return bool @载具是否能够手刹
function UGCVehicleSystemV2.CanHandBrake(Vehicle) end

---【实验性】操作载具(急刹)手刹
---需要在驾驶员所在客户端调用
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param BrakeScale float @刹车倍率，取值范围[0,1]，0为无刹车，1为最强刹车
function UGCVehicleSystemV2.SetHandBrake(Vehicle, BrakeScale) end

---【实验性】获得载具能否加速
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return bool @载具是否能够加速
function UGCVehicleSystemV2.CanBoosting(Vehicle) end

---【实验性】开关载具加速
---需要在驾驶员所在客户端调用
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param Open bool @true开启加速，false关闭加速
function UGCVehicleSystemV2.SetBoosting(Vehicle, Open) end

---【实验性】获得载具能否按喇叭
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return bool @载具是否能够按喇叭
function UGCVehicleSystemV2.CanHorn(Vehicle) end

---【实验性】按下/抬起载具喇叭
---需要在驾驶员所在客户端调用
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param Open bool @true按下喇叭，false抬起喇叭
function UGCVehicleSystemV2.SetHorn(Vehicle, Open) end

---【实验性】获得载具当前速度(单位是cm/s)
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return FVector @载具当前速度
function UGCVehicleSystemV2.GetVelocity(Vehicle) end

---【实验性】获得当前载具健康状态
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return ESTExtraVehicleHealthState @载具当前健康状态
function UGCVehicleSystemV2.GetVehicleHealthState(Vehicle) end

---【实验性】获得载具是否能受到伤害
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@return bool @载具是否能受到伤害
function UGCVehicleSystemV2.CanDamage(Vehicle) end

---【实验性】设置载具是否能受到伤害
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param CanDamage bool @能否受到伤害
function UGCVehicleSystemV2.SetCanDamage(Vehicle, CanDamage) end

---【实验性】获取座位数量
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@return int @座位数量
function UGCVehicleSystemV2.GetSeatNum(Vehicle) end

---【实验性】获取座位数据
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex int @座位索引
---@return UGCVehicleSeatData @座位数据
function UGCVehicleSystemV2.GetSeatDataByIndex(Vehicle, SeatIndex) end

---【实验性】获取所有座位数据
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@return UGCVehicleSeatData[] @座位数据列表
function UGCVehicleSystemV2.GetAllSeatDatas(Vehicle) end

---【实验性】改变玩家乘客的座位
---生效范围：服务器&客户端 (客户端执行只能指定空位，否则会失败。服务端执行可以指定有乘客的座位，两人互相交换位置。)
---@param Player PlayerPawn | PlayerController @玩家角色或玩家PlayerController
---@param SeatIndex number @目标座位 ID
---@return bool @服务器:是否成功改变 | 客户端:返回值无意义
function UGCVehicleSystemV2.ChangePassengerSeat(Player, SeatIndex) end

---【实验性】车载武器开始攻击
---仅限驾驶位车载武器生效
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystemV2.StartFireVehicleWeapon(Vehicle) end