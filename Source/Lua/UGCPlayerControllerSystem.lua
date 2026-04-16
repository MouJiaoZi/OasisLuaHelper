---@meta

---玩家控制器系统
---@class UGCPlayerControllerSystem
UGCPlayerControllerSystem = {}

---禁用摇杆触发疾跑
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
function UGCPlayerControllerSystem.DisableJoyStickSprint(PlayerController) end

---启用摇杆触发疾跑
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
function UGCPlayerControllerSystem.EnableJoyStickSprint(PlayerController) end

---通过 PlayerController 获取 TeamID
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@return number @玩家队伍 ID
function UGCPlayerControllerSystem.GetTeamID(PlayerController) end

---获取玩家角色
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@return ASTExtraBaseCharacter @玩家角色
function UGCPlayerControllerSystem.GetPlayerCharacter(PlayerController) end

---瞬移至坐标
---生效范围：服务器
---@param PlayerController PlayerController @玩家控制器
---@param X number @X坐标
---@param Y number @Y坐标
---@param Z number @Z坐标
function UGCPlayerControllerSystem.TeleportTo(PlayerController, X, Y, Z) end

---设置控制旋转
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器
---@param NewRotation Rotator @新旋转量 可使用Rotator.New(Roll,Pitch,Yaw)创建,结构{Roll=Roll, Pitch=Pitch, Yaw=Yaw}
function UGCPlayerControllerSystem.SetControlRotation(PlayerController, NewRotation) end

---启用子弹尾迹特效
---生效范围：客户端
---@param PlayerController PlayerController @玩家控制器
function UGCPlayerControllerSystem.EnableBulletTrackEffect(PlayerController) end

---使玩家立刻进入游戏。首先设置PlayerController蓝图上的DelayNotifyBattleBeginPlay，设置之后在切换DS，或者进入游戏的两种情况下的loading图会延长，接着调用本接口，即可立刻跳过loading图进入游戏
---生效范围：服务器
---@param PlayerController PlayerController @玩家控制器
function UGCPlayerControllerSystem.NotifyBattleBeginPlay(PlayerController) end

---判断是否为主控端
---生效范围：客户端&服务器
---@param InController AController @Pawn
---@return boolean @当前端是否为主控端
function UGCPlayerControllerSystem.IsLocalController(InController) end