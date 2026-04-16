---@meta

---@class EPlayerTitleMarkType
---@field None number @ 0
---@field OasisPrivilege number @ 1 << 0
EPlayerTitleMarkType = {}


---【实验性】角色系统接口库
---@class UGCPlayerPawnSystem
UGCPlayerPawnSystem = {}

---【实验性】是否在指定状态下
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return boolean
function UGCPlayerPawnSystem.HasPawnState(PlayerPawn, PawnState) end

---【实验性】是否允许进入指定状态
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return boolean
function UGCPlayerPawnSystem.AllowPawnState(PlayerPawn, PawnState) end

---【实验性】切换 Pose 状态
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param PoseState ESTEPoseState @角色状态
---@return boolean
function UGCPlayerPawnSystem.SwitchPoseState(PlayerPawn, PoseState) end

---【实验性】进入指定状态
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return boolean
function UGCPlayerPawnSystem.EnterPawnState(PlayerPawn, PawnState) end

---【实验性】离开指定状态
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@return boolean
function UGCPlayerPawnSystem.LeavePawnState(PlayerPawn, PawnState) end

---【实验性】禁用指定状态
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param PawnState EPawnState @角色状态
---@param IsDisabled boolean @是否禁用
function UGCPlayerPawnSystem.DisabledPawnState(PlayerPawn, PawnState, IsDisabled) end

---【实验性】获取是否第一人称视角
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn
---@return boolean @是不是 FPP 模式
function UGCPlayerPawnSystem.GetIsFPP(PlayerPawn) end

---【实验性】设置是否第一人称视角
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsFPP boolean @是否第一人称
---@param bForce boolean @强制设置人称
---@return boolean @设置是否成功
function UGCPlayerPawnSystem.SetIsFPP(PlayerPawn, IsFPP, bForce) end

---【实验性】获取是否第三人称视角
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn
---@return boolean @是否第三人称
function UGCPlayerPawnSystem.GetIsTPP(PlayerPawn) end

---【实验性】设置是否第三人称视角
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsTPP boolean @是否第三人称
---@param bForce boolean @强制设置 TPP 模式
---@return boolean @设置是否成功
function UGCPlayerPawnSystem.SetIsTPP(PlayerPawn, IsTPP, bForce) end

---【实验性】获取是否无敌
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return boolean @是否无敌
function UGCPlayerPawnSystem.GetIsInvincible(PlayerPawn) end

---【实验性】设置是否无敌
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param IsInvincible boolean @是否无敌
function UGCPlayerPawnSystem.SetIsInvincible(PlayerPawn, IsInvincible) end

---【实验性】尝试进入跳伞状态
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param CheckPawnState EPawnState[] @不允许进入跳伞的角色状态
---@param CanOpenParachuteHeight number @允许开伞高度
---@param ForceOpenParachuteHeight number @强制开伞高度
---@param CloseParachuteHeight number @关伞高度
---@param bParachuteAvatarNotShown boolean @是否不显示伞包
function UGCPlayerPawnSystem.TryEnterParachuteState(PlayerPawn, CheckPawnState, CanOpenParachuteHeight, ForceOpenParachuteHeight, CloseParachuteHeight, bParachuteAvatarNotShown) end

---【实验性】退出跳伞状态
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
function UGCPlayerPawnSystem.ExitParachuteState(PlayerPawn) end

---【实验性】根据玩家角色的骨骼名称修改骨骼的显隐性
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param BoneName string @骨骼名称
---@param bHide boolean @true隐藏，false显示
function UGCPlayerPawnSystem.HideBoneByBoneName(PlayerPawn, BoneName, bHide) end

---【实验性】设置角色Avatar的显隐
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param bHide boolean @true显示，false隐藏
---@param ExcludingAvatarSlot EAvatarSlotType[] @排除的AvatarSlot类型
function UGCPlayerPawnSystem.SetAvatarVisibility(PlayerPawn, bVisible, ExcludingAvatarSlot) end

---【实验性】切换玩家角色使用的全身骨骼体
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param SkeletalMesh UClass|string @全身骨骼体蓝图类或路径
function UGCPlayerPawnSystem.ChangeAvatarMesh(PlayerPawn, SkeletalMesh) end

---【实验性】恢复玩家角色使用的全身骨骼体
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
function UGCPlayerPawnSystem.RecoverAvatarMesh(PlayerPawn) end

---【实验性】玩家死亡取消生成盒子
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param bIsSkip boolean @玩家是否取消生成死亡盒子
function UGCPlayerPawnSystem.SkipSpawnDeadTombBox(PlayerPawn, bIsSkip) end

---【实验性】获取角色骨骼里所有的PartTypeSocket
---生效范围：服务器&客户端
---@param Character ACharacter @角色
---@return UPartTypeSocket[] @PartTypeSocket列表
function UGCPlayerPawnSystem.GetPartTypeSockets(Character) end

---【实验性】设置玩家的默认复活方式
---生效范围：服务器
---@param Method EUGCPlayerRespawnPointSelectionMethod @复活方式
---@param RespawnMethodInfo FVector @指定复活位置（仅选择复活方式为指定复活点生效）
function UGCPlayerPawnSystem.SetDefaultPlayerRespawnPointSelectionMethod(Method, RespawnMethodInfo) end

---【实验性】设置玩家默认的出生方式
---生效范围：服务器
---@param Method EUGCPlayerSpawnPointSelectionMethod @出生方式
---@param SpawnMethodInfo FVector|uint8 @出生点类型
---@param PlayerStartInfo boolean @是否随机出生点ID
function UGCPlayerPawnSystem.SetDefaultPlayerSpawnPointSelectionMethod(Method, SpawnMethodInfo, PlayerStartInfo) end

---【实验性】复活单个角色
---生效范围：服务器
---@param PlayerKey number @PlayerKey
---@param RespawnDelayTime number @复活延时时间，默认为0
---@param IsDestoryAlivePawn boolean @是否销毁当前未死亡的角色
---@param DestroyDelayTime number @销毁未死亡角色的延时时间，默认为0.01，销毁时间不能设为零，否则角色不销毁
function UGCPlayerPawnSystem.RespawnPlayer(PlayerKey, RespawnDelayTime, IsDestoryAlivePawn, DestroyDelayTime) end

---【实验性】复活所有角色
---生效范围：服务器
---@param RespawnDelayTime number @复活延时时间，默认为0
---@param IsDestroyAlivePawn boolean @是否销毁当前未死亡的角色
---@param DestroyDelayTime number @销毁未死亡角色的延时时间，默认为0
function UGCPlayerPawnSystem.RespawnAllPlayers(RespawnDelayTime, IsDestroyAlivePawn, DestroyDelayTime) end

---【实验性】设置救援队友是否能被打断
---生效范围：服务器
---@param InPawn PlayerPawn @角色
---@param bCanBeInterrupt boolean @是否能被打断
---@param CanBeInterruptWhenOverRadius number @施救者可以移动的范围半径(传入的bCanBeInterrupt为true时这个变量才生效)
function UGCPlayerPawnSystem.SetRescueInterruptable(InPawn, bCanBeInterrupt, CanBeInterruptWhenOverRadius) end

---【实验性】设置救援队友的时长
---生效范围：服务器
---@param InPawn PlayerPawn @角色
---@param RescueOtherDuration number @救援队友的时长
function UGCPlayerPawnSystem.SetRescueOtherDuration(InPawn, RescueOtherDuration) end

---【实验性】设置自救的冷却时间
---生效范围：服务器
---@param InPawn PlayerPawn @角色
---@param RescuingSelfCDTime number @救援队友的冷却时间
function UGCPlayerPawnSystem.SetRescuingSelfCDTime(InPawn, RescuingSelfCDTime) end

---【实验性】确认救援队友
---生效范围：服务器
---@param InPawn PlayerPawn @角色
---@param InTargetPawn PlayerPawn @救援对象
function UGCPlayerPawnSystem.ConfirmRescueOther(InPawn, InTargetPawn) end

---【实验性】确认救援队友并将队友立即救起
---生效范围：服务器
---@param InPawn PlayerPawn @角色
---@param InTargetPawn PlayerPawn @救援对象
function UGCPlayerPawnSystem.ConfirmRescueOtherImmediately(InPawn, InTargetPawn) end

---【实验性】设置玩家倒地后立即死亡
---生效范围：服务器
---@param InPawn PlayerPawn @角色
---@param bIsDirectlyDie boolean @是否倒地后立即死亡
function UGCPlayerPawnSystem.SetIsDirectlyDie(InPawn, bIsDirectlyDie) end

---【实验性】设置玩家描边
---生效范围：客户端
---@param InPawn PlayerPawn @角色
---@param bIsDrawOutline boolean @是否描边
---@param OutlineThickness number @描边粗细
---@param OutlineColor FLinearColor @描边颜色
function UGCPlayerPawnSystem.DrawOutline(InPawn, bIsDrawOutline, OutlineThickness, OutlineColor) end

---【实验性】添加透视效果
---生效范围：客户端
---@param TargetCharacter ACharacter @被透视的角色或怪
---@param Causer AActor @透视的发起方
---@param Type EPEBuffOcclusionHighlightType @透视类型(仅Causer透视/Causer及其队友透视/所有人)
---@param Color FLinearColor @透视颜色
---@return number @透视ID，用于移除透视效果,<=0为无效值
function UGCPlayerPawnSystem.AddOcclusionHighlight(TargetCharacter, Causer, Type, Color) end

---【实验性】移除透视效果
---生效范围：客户端
---@param WorldContextObject UObject @世界上下文对象
---@param OcclusionID number @透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值
function UGCPlayerPawnSystem.RemoveOcclusionHighlight(WorldContextObject, OcclusionID) end

---【实验性】修改角色发出的声音音量
---生效范围：客户端
---@param InPawn PlayerPawn @角色
---@param Volume number @音量大小
function UGCPlayerPawnSystem.SetOutputBusVolume(InPawn, Volume) end

---【实验性】设置八向移动相同速度
---生效范围：客户端
---@param InPawn PlayerPawn @角色
---@param Enable boolean @是否启用
function UGCPlayerPawnSystem.SetEightWayUniformSpeedEnabled(InPawn, Enable) end

---【实验性】设置ViewTarget
---生效范围：服务端
---@param InPawn PlayerPawn @角色
---@param bSetUp boolean @是否启用
---@param TargetActor AActor @是否启用
---@param BlendTime number @缓动时间
function UGCPlayerPawnSystem.SetUpSubViewTargetServer(InPawn, bSetUp, TargetActor, BlendTime) end