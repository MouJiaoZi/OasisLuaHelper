---@meta

---【废弃】角色属性系统接口库
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@class UGCPawnAttrSystem
UGCPawnAttrSystem = {}

---【废弃】请使用 UGCAttributeSystem
---设置血量(不会超过最大血量)
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param Health number @血量
function UGCPawnAttrSystem.SetHealth(PlayerPawn, Health) end

---【废弃】请使用 UGCAttributeSystem
---获取当前血量
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @血量
function UGCPawnAttrSystem.GetHealth(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置血量上限（当前血量不会变化）
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param HealthMax number @最大血量
function UGCPawnAttrSystem.SetHealthMax(PlayerPawn, HealthMax) end

---【废弃】请使用 UGCAttributeSystem
---获取血量上限
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @最大血量
function UGCPawnAttrSystem.GetHealthMax(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置信号值（不会超过最大值）
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param Signal number @信号值
function UGCPawnAttrSystem.SetSignal(PlayerPawn, Signal) end

---【废弃】请使用 UGCAttributeSystem
---获取信号值
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @信号值
function UGCPawnAttrSystem.GetSignal(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取信号值上限
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @最大信号值
function UGCPawnAttrSystem.GetSignalMax(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置能量值（设置的值不能超过能量值上限[默认100]）
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param Energy number @能量值
function UGCPawnAttrSystem.SetEnergy(PlayerPawn, Energy) end

---【废弃】请使用 UGCAttributeSystem
---获取能量值
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @能量值
function UGCPawnAttrSystem.GetEnergy(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取能量值上限
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @最大能量值
function UGCPawnAttrSystem.GetEnergyMax(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置移动速度总系数，影响走路、冲刺、蹲下、趴下与游泳速度
---注：该接口已废弃，请改用其他各移动状态的速度修改接口
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param SpeedScale number @移动速度总系数
function UGCPawnAttrSystem.SetSpeedScale(PlayerPawn, SpeedScale) end

---【废弃】请使用 UGCAttributeSystem
---获取移动速度总系数
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @移动速度总系数
function UGCPawnAttrSystem.GetSpeedScale(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取走路移动速度系数
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @走路移动速度系数
function UGCPawnAttrSystem.GetWalkSpeedScale(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置走路移动速度系数
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param WalkSpeedScale number @走路移动速度系数
function UGCPawnAttrSystem.SetWalkSpeedScale(PlayerPawn, WalkSpeedScale) end

---【废弃】请使用 UGCAttributeSystem
---获取疾跑移动速度系数
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @疾跑移动速度系数
function UGCPawnAttrSystem.GetSprintSpeedScale(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置疾跑移动速度系数
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param SprintSpeedScale number @疾跑移动速度系数
function UGCPawnAttrSystem.SetSprintSpeedScale(PlayerPawn, SprintSpeedScale) end

---【废弃】请使用 UGCAttributeSystem
---获取蹲下移动速度系数
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @蹲下移动速度系数
function UGCPawnAttrSystem.GetCrouchSpeedScale(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置蹲下移动速度系数
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param CrouchSpeedScale number @蹲下移动速度系数
function UGCPawnAttrSystem.SetCrouchSpeedScale(PlayerPawn, CrouchSpeedScale) end

---【废弃】请使用 UGCAttributeSystem
---获取趴下移动速度系数
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @趴下移动速度系数
function UGCPawnAttrSystem.GetProneSpeedScale(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置趴下移动速度系数
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param ProneSpeedScale number @趴下移动速度系数
function UGCPawnAttrSystem.SetProneSpeedScale(PlayerPawn, ProneSpeedScale) end

---【废弃】请使用 UGCAttributeSystem
---获取游泳移动速度系数
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @游泳移动速度系数
function UGCPawnAttrSystem.GetSwimSpeedScale(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置游泳移动速度系数
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param SwimSpeedScale number @游泳移动速度系数
function UGCPawnAttrSystem.SetSwimSpeedScale(PlayerPawn, SwimSpeedScale) end

---【废弃】请使用 UGCAttributeSystem
---获取当前第三人称视角FOV
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @当前FOV
function UGCPawnAttrSystem.GetCurrentFOVTPP(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置当前第三人称视角FOV
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param CurrentFOV number @FOV
function UGCPawnAttrSystem.SetCurrentFOVTPP(PlayerPawn, CurrentFOV) end

---【废弃】请使用 UGCAttributeSystem
---获取是否可以切换至第一人称视角
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return boolean @是否可切换至第一人称
function UGCPawnAttrSystem.GetCanSwitchFPP(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置是否可以切换至第一人称视角
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param CanSwitchFPP boolean @是否可切换至第一人称
function UGCPawnAttrSystem.SetCanSwitchFPP(PlayerPawn, CanSwitchFPP) end

---【废弃】请使用 UGCAttributeSystem
---获取当前第一人称视角FOV
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @当前第一人称FOV
function UGCPawnAttrSystem.GetCurrentFOVFPP(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置当前第一人称视角FOV	
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param CurrentFOV_FPP number @FOV
function UGCPawnAttrSystem.SetCurrentFOVFPP(PlayerPawn, CurrentFOV_FPP) end

---【废弃】请使用 UGCAttributeSystem
---获取听觉半径
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @半径
function UGCPawnAttrSystem.GetHearRadius(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取拾取半径
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @半径
function UGCPawnAttrSystem.GetPickUpRadius(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取是否显示玩家名称
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return boolean @显示玩家名称
function UGCPawnAttrSystem.GetShowPlayerName(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置是否显示玩家名称
---生效范围：客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param ShowPlayerName boolean @显示玩家名称
function UGCPawnAttrSystem.SetShowPlayerName(PlayerPawn, ShowPlayerName) end

---【废弃】请使用 UGCAttributeSystem
---获取是否AI
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return boolean @是否AI
function UGCPawnAttrSystem.GetIsAI(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取玩家名称
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return string @玩家名称
function UGCPawnAttrSystem.GetPlayerName(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取字符串玩家PlayerKey
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return string @玩家PlayerKey
function UGCPawnAttrSystem.GetPlayerKey(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取64位玩家Key
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @玩家Key
function UGCPawnAttrSystem.GetPlayerKeyInt64(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取玩家UID
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return string @玩家 UID
function UGCPawnAttrSystem.GetPlayerUID(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取玩家队伍中序号（非TeamID，而是玩家在队伍中的序号）
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @玩家UID
function UGCPawnAttrSystem.GetPlayerTeamIndex(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取跳跃类型
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return ECharacterJumpType @跳跃类型
function UGCPawnAttrSystem.GetJumpType(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取跳跃高度
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @跳跃高度
function UGCPawnAttrSystem.GetJumpHeight(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取跳跃时的初速度
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @跳跃时的初速度
function UGCPawnAttrSystem.GetJumpZVelocity(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---设置跳跃时的初速度
---生效范围：服务器
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param JumpZVelocity number @跳跃时的初速度
function UGCPawnAttrSystem.SetJumpZVelocity(PlayerPawn, JumpZVelocity) end

---【废弃】请使用 UGCAttributeSystem
---获取站立半高
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @站立半高
function UGCPawnAttrSystem.GetStandHalfHeight(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取站立半径
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @站立半径
function UGCPawnAttrSystem.GetStandRadius(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取蹲伏半高
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @蹲伏半高
function UGCPawnAttrSystem.GetCrouchHalfHeight(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取匍匐半高
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @匍匐半高
function UGCPawnAttrSystem.GetProneHalfHeight(PlayerPawn) end

---【废弃】请使用 UGCAttributeSystem
---获取TeamID
---生效范围：服务器&客户端
---@deprecated @UGCPawnAttrSystem is deprecated and could be removed later, please use UGCAttributeSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @队伍ID
function UGCPawnAttrSystem.GetTeamID(PlayerPawn) end