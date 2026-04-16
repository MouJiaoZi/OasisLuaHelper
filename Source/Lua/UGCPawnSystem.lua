---@meta

---【废弃】角色系统接口库（废弃，已迁移到 UGCPlayerPawnSystem）
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@class UGCPawnSystem
UGCPawnSystem = {}

---【废弃】已迁移到 UGCPlayerPawnSystem
---是否在指定状态下
---生效范围：服务器&客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return bool
function UGCPawnSystem.HasPawnState(PlayerPawn, PawnState) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---是否允许进入指定状态
---生效范围：服务器&客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return bool
function UGCPawnSystem.AllowPawnState(PlayerPawn, PawnState) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---切换 Pose 状态
---生效范围：客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param PoseState ESTEPoseState @角色状态
---@return bool
function UGCPawnSystem.SwitchPoseState(PlayerPawn, PoseState) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---进入指定状态
---生效范围：服务器&客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return bool
function UGCPawnSystem.EnterPawnState(PlayerPawn, PawnState) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---离开指定状态
---生效范围：服务器&客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return bool
function UGCPawnSystem.LeavePawnState(PlayerPawn, PawnState) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---禁用指定状态
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@param IsDisabled bool @是否禁用
function UGCPawnSystem.DisabledPawnState(PlayerPawn, PawnState, IsDisabled) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---获取是否第一人称视角
---生效范围：服务器&客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn
---@return bool @是不是 FPP 模式
function UGCPawnSystem.GetIsFPP(PlayerPawn) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---设置是否第一人称视角
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsFPP bool @是否第一人称
---@param bForce bool @强制设置人称
---@return bool @设置是否成功
function UGCPawnSystem.SetIsFPP(PlayerPawn, IsFPP, bForce) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---获取是否第三人称视角
---生效范围：服务器&客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn
---@return bool @是否第三人称
function UGCPawnSystem.GetIsTPP(PlayerPawn) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---设置是否第三人称视角
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsTPP bool @是否第三人称
---@param bForce bool @强制设置 TPP 模式
---@return bool @设置是否成功
function UGCPawnSystem.SetIsTPP(PlayerPawn, IsTPP, bForce) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---获取是否无敌
---生效范围：服务器&客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@return bool @是否无敌
function UGCPawnSystem.GetIsInvincible(PlayerPawn) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---设置是否无敌
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsInvincible bool @是否无敌
function UGCPawnSystem.SetIsInvincible(PlayerPawn, IsInvincible) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---尝试进入跳伞状态
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param CheckPawnState EPawnState[] @不允许进入跳伞的角色状态
---@param CanOpenParachuteHeight float @允许开伞高度
---@param ForceOpenParachuteHeight float @强制开伞高度
---@param CloseParachuteHeight float @关伞高度
---@param bParachuteAvatarNotShown bool @是否不显示伞包
function UGCPawnSystem.TryEnterParachuteState(PlayerPawn, CheckPawnState, CanOpenParachuteHeight, ForceOpenParachuteHeight, CloseParachuteHeight, bParachuteAvatarNotShown) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---退出跳伞状态
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
function UGCPawnSystem.ExitParachuteState(PlayerPawn) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---根据玩家角色的骨骼名称修改骨骼的显隐性
---生效范围：客户端
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param BoneName FName @骨骼名称
---@param bHide bool @true隐藏，false显示
function UGCPawnSystem.HideBoneByBoneName(PlayerPawn, BoneName, bHide) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---切换玩家角色使用的全身骨骼体
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param SkeletalMeshPath string @全身骨骼体路径
function UGCPawnSystem.ChangeAvatarMesh(PlayerPawn, SkeletalMeshPath) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---恢复玩家角色使用的全身骨骼体
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
function UGCPawnSystem.RecoverAvatarMesh(PlayerPawn) end

---【废弃】已迁移到 UGCPlayerPawnSystem
---玩家死亡取消生成盒子
---生效范围：服务器
---@deprecated @UGCPawnSystem is deprecated and could be removed later, please use UGCPlayerPawnSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param bIsSkip bool @玩家是否取消生成死亡盒子
function UGCPawnSystem.SkipSpawnDeadTombBox(PlayerPawn, bIsSkip) end