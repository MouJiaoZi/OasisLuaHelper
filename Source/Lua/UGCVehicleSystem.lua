---@meta

---载具系统接口库
---@class UGCVehicleSystem
UGCVehicleSystem = {}

---【废弃】请使用 UGCVehicleSystem.SpawnVehicleNew
---生成载具
---生效范围：服务器
---@deprecated @UGCVehicleSystem.SpawnVehicleNew()
---@param VehicleID number @载具表ID
---@param Location Vector @生成位置
---@param Rotation Rotator @旋转
---@param IsForce boolean @是否无视碰撞强行生成
---@return ASTExtraVehicleBase @载具
function UGCVehicleSystem.SpawnVehicle(VehicleID, Location, Rotation, IsForce) end

---进入载具
---仅限普通玩家控制的角色（Character）可以用
---生效范围：服务器&客户端
---@param Pawn ASTExtraBaseCharacter @普通玩家
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatType ESTExtraVehicleSeatType @座位类型
---@param IsForce boolean @是否无视距离和阻挡
function UGCVehicleSystem.EnterVehicle(Pawn, Vehicle, SeatType, IsForce) end

---离开载具
---仅限普通玩家控制的角色可以用
---生效范围：服务器&客户端
---@param Pawn ASTExtraBaseCharacter @普通玩家
function UGCVehicleSystem.ExitVehicle(Pawn) end

---获取载具的座位数量
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具的座位数量
function UGCVehicleSystem.GetVehicleSeatCount(Vehicle) end

---获取载具座位上的乘客列表（包括司机）
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @对应的载具
---@return ASTExtraBaseCharacter[] @载具上的乘客们（包括司机）
function UGCVehicleSystem.GetVehicleSeatOccupiers(Vehicle) end

---获取载具对应 SeatIndex 编号的座位类型
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位编号(从1开始)
---@return ESTExtraVehicleSeatType @载具座位类型
function UGCVehicleSystem.GetVehicleSeatType(Vehicle, SeatIndex) end

---获取 SeatIndex 编号获取对应座位上的乘客 Pawn
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位编号（从 1 开始）
---@return ASTExtraBaseCharacter @对应乘客，如果没有则返回 nil
function UGCVehicleSystem.GetOccupierBySeatIndex(Vehicle, SeatIndex) end

---使用蓝图路径生成载具
---不要在 Spawn 之后立马修改载具位置，等载具落地停稳后再修改，不然位置修改会失败（如果有类似需求，建议直接创建在对应点）
---生效范围：服务器
---@param VehicleBlueprintPath string @载具蓝图路径，格式类似 /Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C
---@param Location Vector @生成位置
---@param Rotation Rotator @旋转
---@param SnapFloor boolean @是否贴地
---@param IsForce boolean @是否无视碰撞强行生成
---@return ASTExtraVehicleBase @载具
function UGCVehicleSystem.SpawnVehicleNew(VehicleBlueprintPath, Location, Rotation, SnapFloor, IsForce) end

---乘客进入载具
---仅限普通玩家控制的角色可以用
---生效范围：服务器
---@param Character ASTExtraBaseCharacter @乘客
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatType ESTExtraVehicleSeatType @座位类型
---@param IsForce boolean @是否无视距离和阻挡
---@return boolean @是否成功
function UGCVehicleSystem.CharacterEnterVehicle(Character, Vehicle, SeatType, IsForce) end

---乘客离开当前所在载具
---仅限普通玩家控制的角色可以用
---生效范围：服务器
---@param Character ASTExtraBaseCharacter @乘客
function UGCVehicleSystem.CharacterLeaveVehicle(Character) end

---传送载具
---不要在 Spawn 之后立马传送载具，等载具落地停稳后再传送，不然传送会失败（如果有类似需求，建议直接创建在对应点）
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param Location Vector @位置
---@param Rotator Rotator @旋转
function UGCVehicleSystem.TeleportVehicleTo(Vehicle, Location, Rotator) end

---获得载具当前速度(单位是cm/s)
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具当前速度
function UGCVehicleSystem.GetForwardSpeed(Vehicle) end

---载具是否静止
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return boolean @载具是否静止
function UGCVehicleSystem.IsStoped(Vehicle) end

---载具引擎是否启动
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return boolean @载具引擎是否启动
function UGCVehicleSystem.IsEngineStarted(Vehicle) end

---获得当前载具健康状态
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return ESTExtraVehicleHealthState @载具当前健康状态
function UGCVehicleSystem.GetVehicleHealthState(Vehicle) end

---摧毁载具
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.DestroySelf(Vehicle) end

---重生载具
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.Respawn(Vehicle) end

---指定座位上是否有人
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位 ID
---@return boolean @指定座位上是否有人
function UGCVehicleSystem.GetSeatState(Vehicle, SeatIndex) end

---获得载具座位个数
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具座位个数
function UGCVehicleSystem.GetSeatNum(Vehicle) end

---获得轮胎数量
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具轮子数量
function UGCVehicleSystem.GetWheelNum(Vehicle) end

---获得轮胎是否可以被摧毁
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param WheelIndex number @轮胎 ID（从 1 开始）
---@return boolean @轮胎是否可以被摧毁
function UGCVehicleSystem.IsWheelDamageable(Vehicle, WheelIndex) end

---设置轮胎是否可以被摧毁
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param WheelIndex number @轮胎ID（从1开始）
---@param Damageable boolean @是否可以被摧毁
function UGCVehicleSystem.SetWheelDamageable(Vehicle, WheelIndex, Damageable) end

---车载武器停止攻击
---仅限驾驶位车载武器生效
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param VehicleWeapon AVehicleShootWeapon @车载武器
function UGCVehicleSystem.StopFireVehicleWeapon(Vehicle, VehicleWeapon) end

---车载武器开始攻击
---仅限驾驶位车载武器生效
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param VehicleWeapon AVehicleShootWeapon @车载武器
---@param Character ASTExtraBaseCharacter @攻击者(传入 nil 视为 Driver)
function UGCVehicleSystem.StartFireVehicleWeapon(Vehicle, VehicleWeapon, Character) end

---获得指定座位上指定 ID 的武器实例
---武器 ID 指载具蓝图中，座位上配置的武器序号
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位ID（从 1 开始）
---@param WeaponID number @武器ID（从 1 开始）
---@return AVehicleShootWeapon @武器实例
function UGCVehicleSystem.GetVehicleWeapon(Vehicle, SeatIndex, WeaponID) end

---获得所有车载武器的列表
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return AVehicleShootWeapon[] @武器列表
function UGCVehicleSystem.GetAllVehicleWeaponList(Vehicle) end

---暂停播放车载音乐
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.StopMusic(Vehicle) end

---获得载具类型
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return ESTExtraVehicleType @载具类型
function UGCVehicleSystem.GetVehicleType(Vehicle) end

---载具拉起手刹
---仅在主控端（驾驶员端）调用有效
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.StartBrake(Vehicle) end

---载具放下手刹
---仅在主控端（驾驶员端）调用有效
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.StopBrake(Vehicle) end

---获得载具是否能够加速
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return boolean @载具是否能够加速
function UGCVehicleSystem.CanDriverBoosting(Vehicle) end

---载具加速
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.StartBoosting(Vehicle) end

---载具取消加速
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.StopBoosting(Vehicle) end

---是否能按喇叭
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@return boolean @是否能按喇叭
function UGCVehicleSystem.CanDriverUsingHorn(Vehicle) end

---载具长按喇叭（按下）
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.StartHorn(Vehicle) end

---载具长按喇叭（抬起）
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
function UGCVehicleSystem.StopHorn(Vehicle) end

---载具前进/后退
---需要在驾驶员所在客户端每帧调用
---生效范围：客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param Throttle number @取值范围[-1,1]，负值代表后退，正值代表前进
function UGCVehicleSystem.MoveForward(Vehicle, Throttle) end

---驾驶员是否可以操控载具
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return boolean @是否可以操控载具
function UGCVehicleSystem.CanDrive(Vehicle) end

---播放车载音乐
---注意，武装载具不支持车载音乐功能
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param MusicIndex number @曲目ID（取值范围[1,8]）
function UGCVehicleSystem.PlayMusic(Vehicle, MusicIndex) end

---获取载具的基础类型
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return ESTExtraVehicleBaseType @载具基础类型
function UGCVehicleSystem.GetVehicleBaseType(Vehicle) end

---修改空气阻力的倍率
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param Scale number @空气阻力的修改倍率
function UGCVehicleSystem.ModifyWheeledVehicleDragCoefficientScale(Vehicle, Scale) end

---修改引擎最大转速的倍率
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param Scale number @引擎最大转速的修改倍率
function UGCVehicleSystem.ModifyWheeledVehicleMaxRPMScale(Vehicle, Scale) end

---修改引擎扭矩的倍率
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param Scale number @引擎扭矩的修改倍率
function UGCVehicleSystem.ModifyWheeledVehicleTorqueScale(Vehicle, Scale) end

---用自定义倍率刹车
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param Scale number @自定义刹车倍率
function UGCVehicleSystem.BrakeInCustomizeScale(Vehicle, Scale) end

---通过 PlayerController 获取 Vehicle
---生效范围：服务器&客户端
---@param PlayerController APlayerController @对应的玩家控制器
---@return ASTExtraVehicleBase @对应的载具
function UGCVehicleSystem.GetVehicleByPlayerController(PlayerController) end