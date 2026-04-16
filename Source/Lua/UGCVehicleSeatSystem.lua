---@meta

---载具系统座位系统接口库
---@class UGCVehicleSeatSystem
UGCVehicleSeatSystem = {}

---在目标座位上没有乘客时更换乘客座位
---生效范围：客户端&服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param Passenger ASTExtraBaseCharacter @乘客
---@param SeatIndex number @座位 ID
function UGCVehicleSeatSystem.ChangePassengerSeat(Vehicle, Passenger, SeatIndex) end

---在目标座位上有乘客时更换乘客座位
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param Passenger ASTExtraBaseCharacter @乘客
---@param SeatIndex number @座位 ID
function UGCVehicleSeatSystem.ForceChangePassengerSeat(Vehicle, Passenger, SeatIndex) end

---获得载具座位个数
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @载具座位个数
function UGCVehicleSeatSystem.GetSeatNum(Vehicle) end

---获得空闲的载具座位个数
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return number @空闲的载具座位个数
function UGCVehicleSeatSystem.GetAvailableSeatNum(Vehicle) end

---获得对应座位的乘客
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位 ID
---@return ASTExtraBaseCharacter @对应座位的乘客
function UGCVehicleSeatSystem.GetPassenger(Vehicle, SeatIndex) end

---获得对应座位是否空着
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位 ID
---@return boolean @对应座位是否空着
function UGCVehicleSeatSystem.IsSeatIndexAvailable(Vehicle, SeatIndex) end

---获得指定乘客的座位 ID
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param Passenger ASTExtraBaseCharacter @乘客
---@param GetBySocket boolean @BySocket
---@return number @指定乘客的座位 ID
function UGCVehicleSeatSystem.GetCharacterSeatIndex(Vehicle, Passenger, GetBySocket) end

---获得司机
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return ASTExtraBaseCharacter @司机
function UGCVehicleSeatSystem.GetDriver(Vehicle) end

---获得所有乘客
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return ASTExtraBaseCharacter[] @所有乘客
function UGCVehicleSeatSystem.GetPassengers(Vehicle) end

---获得所有空闲座位的 Index
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@return int32[] @所有空闲座位的索引
function UGCVehicleSeatSystem.GetAvailableSeatIndexes(Vehicle) end

---座位上是否可以探头
---生效范围：服务器&客户端
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位 ID
---@return boolean @是否可以探头
function UGCVehicleSeatSystem.CanLeanOut(Vehicle, SeatIndex) end

---移除指定座位上对应 ID 的车载武器
---需要这个座位原来也配置了载具武器，且这个载具武器不在使用中
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位 ID
---@param WeaponIndex number @车载武器 ID
function UGCVehicleSeatSystem.RemoveVehicleWeapon(Vehicle, SeatIndex, WeaponIndex) end

---将座位武器库中的武器装备到座位武器孔上
---需要这个座位原来也配置了载具武器，且这个载具武器不在使用中
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位 ID
---@param WeaponIndex number @车载武器 ID
---@param WeaponIndexSupport number @武器库武器 ID
function UGCVehicleSeatSystem.AddVehicleWeaponFromSupportKit(Vehicle, SeatIndex, WeaponIndex, WeaponIndexSupport) end

---设置当前座位上的车载武器是否能使用
---需要这个座位原来也配置了载具武器，且乘客正在该座位上
---生效范围：服务器
---@param Vehicle ASTExtraVehicleBase @载具
---@param SeatIndex number @座位 ID
---@param bControlVehicleWeapon boolean @是否能控制车载武器
function UGCVehicleSeatSystem.SetPassengerVehicleWeapon(Vehicle, SeatIndex, bControlVehicleWeapon) end