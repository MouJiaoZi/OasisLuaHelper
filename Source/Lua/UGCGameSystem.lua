---@meta

---赛事胜利失败平局标记
---@class ETournamentMatchResult
---@field Win number @胜利
---@field Fail number @失败
---@field Draw number @平局
ETournamentMatchResult = {}


---停止补充玩家的原因
---@class EApplyPlayerJoinStoppedReason
---@field MaxPlayerCount number @达到最大玩家数
---@field SpecifiedPlayerCount number @达到指定玩家数
---@field Error number @其他错误
---@field Manual number @手动停止补充玩家
---@field Disabled number @补人功能被禁用
EApplyPlayerJoinStoppedReason = {}


---游戏通用接口库
---@class UGCGameSystem
UGCGameSystem = {}

---GameMode变量
---生效范围：服务器
UGCGameSystem.GameMode = nil

---GameState变量
---生效范围：服务器&客户端
UGCGameSystem.GameState = nil

---全局事件代理
---生效范围：服务器
UGCGameSystem.UGCSTExtraGMDelegatesMgr = nil

---停止补充玩家时触发
---生效范围：服务器
---@param ApplyPlayerJoinStoppedReason EApplyPlayerJoinStoppedReason @停止补充玩家的原因
UGCGameSystem.ApplyPlayerJoinStoppedDelegate = nil

---通过补充玩家接口（UGCGameSystem.ApplyPlayerJoin、UGCGameSystem.ApplyPlayerJoinLimitCount），使得每一名玩家加入成功时触发
---生效范围：服务器
---@param UID number @玩家 UID
---@param RemainingPlayerCountToJoin number @剩余需要加入的玩家数量
UGCGameSystem.ApplyPlayerJoinSucceededDelegate = nil

---获取所有的 PlayerController，客户端仅能拿到自己的PlayerController
---生效范围：服务器&客户端
---@param NotIgnorePureSpectator boolean @是否包含非玩家观战者（全局观战）
---@return APlayerController[]
function UGCGameSystem.GetAllPlayerController(NotIgnorePureSpectator) end

---获取所有的 PlayerPawn
---生效范围：服务器&客户端
---@return ASTExtraPlayerCharacter[]
function UGCGameSystem.GetAllPlayerPawn() end

---获取所有的 PlayerState，客户端仅能拿到所有队友的PlayerState
---生效范围：服务器&客户端
---@param NotIgnorePureSpectator boolean @【可选】是否包含非玩家观战者(全局观战)，客户端不生效
---@return ASTExtraPlayerState[]
function UGCGameSystem.GetAllPlayerState(NotIgnorePureSpectator) end

---获取所有的 PlayerKey，包括敌人的，该接口通过Pawn获取敌人的PlayerKey，如果敌人没有Pawn，则获取的UID不全
---生效范围：服务器&客户端
---@param NotIgnorePureSpectator boolean @【可选】是否包含非玩家观战者(全局观战)，客户端不生效
---@return int[] @PlayerKey列表
function UGCGameSystem.GetAllPlayerKey(NotIgnorePureSpectator) end

---获取所有的 UID，包括敌人的，该接口通过Pawn获取敌人的UID，如果敌人没有Pawn，则获取的UID不全
---生效范围：服务器&客户端
---@param NotIgnorePureSpectator boolean @是否包含非玩家观战者(全局观战)
---@return int[] @玩家UID列表
function UGCGameSystem.GetAllUID(NotIgnorePureSpectator) end

---通过PlayerController获取PlayerKey
---生效范围：服务器&客户端
---@param PlayerController ASTExtraPlayerController
---@return number @PlayerKey，无效时返回-1
function UGCGameSystem.GetPlayerKeyByPlayerController(PlayerController) end

---通过PlayerPawn获取PlayerKey
---生效范围：服务器&客户端
---@param PlayerPawn ASTExtraPlayerCharacter
---@return number @PlayerKey，无效时返回-1
function UGCGameSystem.GetPlayerKeyByPlayerPawn(PlayerPawn) end

---通过PlayerState获取PlayerKey
---生效范围：服务器&客户端
---@param PlayerState ASTExtraPlayerState
---@return number @PlayerKey，无效时返回-1
function UGCGameSystem.GetPlayerKeyByPlayerState(PlayerState) end

---通过 UID 获取 PlayerKey，客户端也可以获取敌人的UID
---生效范围：服务器&客户端
---@param UID number
---@return number @PlayerKey，无效时返回-1
function UGCGameSystem.GetPlayerKeyByUID(UID) end

---根据 PlayerKey 获取 PlayerController
---生效范围：服务器&客户端
---@param PlayerKey number @玩家唯一 Key
---@return APlayerController @玩家 Controller
function UGCGameSystem.GetPlayerControllerByPlayerKey(PlayerKey) end

---通过UID获取PlayerController
---生效范围：服务器
---@param UID number @玩家UID
---@return ASTExtraPlayerController @玩家 Controller
function UGCGameSystem.GetPlayerControllerByUID(UID) end

---通过PlayerState获取PlayerController，客户端只能通过PlayerState获取当前客户端的PlayerController
---生效范围：服务器&客户端
---@param PlayerState ASTExtraPlayerState
---@return ASTExtraPlayerController @玩家 Controller
function UGCGameSystem.GetPlayerControllerByPlayerState(PlayerState) end

---通过PlayerPawn获取PlayerController，客户端只能通过PlayerPawn获取当前客户端的PlayerController
---生效范围：服务器&客户端
---@param PlayerPawn ASTExtraPlayerCharacter
---@return ASTExtraPlayerController @玩家 Controller
function UGCGameSystem.GetPlayerControllerByPlayerPawn(PlayerPawn) end

---根据 AIPlayerKey 获取 AIController
---生效范围：服务器
---@param AIPlayerKey number @假玩家唯一 Key
---@return AFakePlayerAIController @假玩家 AIController
function UGCGameSystem.GetAIControllerByPlayerKey(AIPlayerKey) end

---根据 PlayerKey 获取 PlayerPawn（不会获取到尸体）
---生效范围：服务器&客户端
---@param PlayerKey number @玩家唯一 Key
---@return PlayerPawn @玩家 Pawn
function UGCGameSystem.GetPlayerPawnByPlayerKey(PlayerKey) end

---通过UID获取PlayerPawn，客户端也可以获取敌人的Pawn
---生效范围：服务器&客户端
---@param UID number @玩家UID
---@return ASTExtraPlayerCharacter @玩家 Pawn
function UGCGameSystem.GetPlayerPawnByUID(UID) end

---通过PlayerState获取PlayerPawn
---生效范围：服务器&客户端
---@param PlayerState ASTExtraPlayerState
---@return ASTExtraPlayerCharacter @玩家 Pawn
function UGCGameSystem.GetPlayerPawnByPlayerState(PlayerState) end

---通过PlayerController获取PlayerPawn
---生效范围：服务器&客户端
---@param PlayerController ASTExtraPlayerController
---@return ASTExtraPlayerCharacter @玩家 Pawn
function UGCGameSystem.GetPlayerPawnByPlayerController(PlayerController) end

---根据 PlayerKey 获取 PlayerState，客户端只能拿到队友的PlayerState
---生效范围：服务器&客户端
---@param PlayerKey number @玩家唯一 Key
---@return APlayerState @玩家 PlayerState
function UGCGameSystem.GetPlayerStateByPlayerKey(PlayerKey) end

---通过 PlayerPawn 获取 PlayerState，客户端仅能拿到所有队友的PlayerState
---生效范围：服务器&客户端
---@param PlayerPawn ASTExtraPlayerCharacter
---@return ASTExtraPlayerState @玩家 PlayerState
function UGCGameSystem.GetPlayerStateByPlayerPawn(PlayerPawn) end

---根据 UID 获取 PlayerState，客户端仅能拿到所有队友的PlayerState
---生效范围：服务器&客户端
---@param UID number @玩家 UID
---@return PlayerState @玩家 PlayerState
function UGCGameSystem.GetPlayerStateByUID(UID) end

---根据 PlayerController 获取 PlayerState
---生效范围：服务器&客户端
---@param PlayerController ASTExtraPlayerController @玩家 Controller
---@return PlayerState @玩家 PlayerState
function UGCGameSystem.GetPlayerStateByPlayerController(PlayerController) end

---根据 PlayerController 获取 UID
---生效范围：服务器&客户端
---@param PlayerController ASTExtraPlayerController @玩家 Controller
---@return number @玩家 UID
function UGCGameSystem.GetUIDByPlayerController(PlayerController) end

---根据 PlayerState 获取 UID
---生效范围：服务器&客户端
---@param PlayerState PlayerState @玩家 PlayerState
---@return number @玩家 UID
function UGCGameSystem.GetUIDByPlayerState(PlayerState) end

---根据 PlayerPawn 获取 UID
---生效范围：服务器&客户端
---@param PlayerPawn ASTExtraPlayerCharacter @玩家 PlayerPawn
---@return number @玩家 UID
function UGCGameSystem.GetUIDByPlayerPawn(PlayerPawn) end

---根据 PlayerKey 获取 UID，通过Pawn获取敌人的UID，如果敌人Pawn死亡则获取的结果不全
---生效范围：服务器&客户端
---@param PlayerKey number @玩家 PlayerKey
---@return string @玩家 UID
function UGCGameSystem.GetUIDByPlayerKey(PlayerKey) end

---创建 Object
---生效范围：服务器&客户端
---@param Outer UObject
---@param Class UClass
---@param Name string
---@return UObject @创建的对象
function UGCGameSystem.NewObject(Outer, Class, Name) end

---【废弃】请使用 UGCActorComponentUtility.SpawnActor
---创建 Actor
---生效范围：服务器&客户端
---@deprecated @UGCActorComponentUtility.SpawnActor()
---@param WorldContextObject UObject @世界上下文对象
---@param ActorClass UClass @需要使用 UE.LoadClass 加载对应 Class 再作为参数传入
---@param Location Vector @可使用 Vector.New(x,y,z) 创建,结构 {X=x,Y=y,Z=z}
---@param Rotation Rotator @可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
---@param Scale3D Vector @可使用 Vector.New(x,y,z) 创建,结构 {X=x,Y=y,Z=z}，不传缩放默认为 0，建议传 {X=1,Y=1,Z=1}
---@param Owner Actor @Actor 的拥有者
---@return Actor @创建的Actor
function UGCGameSystem.SpawnActor(WorldContextObject, ActorClass, Location, Rotation, Scale3D, Owner) end

---【废弃】请使用 UGCPlayerPawnSystem
---获取复活组件
---生效范围：服务器
---@deprecated @UGCPlayerPawnSystem
---@return UPlayerRespawnComponent @复活组件
function UGCGameSystem.GetRespawnComponent() end

---【废弃】请使用 UGCPlayerPawnSystem
---设置复活信息
---生效范围：服务器
---@deprecated @UGCPlayerPawnSystem
---@param PlayerKey number @PlayerKey
---@param IsUseRespawnLocation boolean @是否使用复活点 是：复活点复活 否：出生点复活
---@param RespawnLocation FTransform @复活点位置
function UGCGameSystem.SetPlayerRespawnInfo(PlayerKey, IsUseRespawnLocation, RespawnLocation) end

---【废弃】复活单个角色
---生效范围：服务器
---@deprecated @UGCPlayerPawnSystem
---@param PlayerKey number @PlayerKey
function UGCGameSystem.RespawnPlayer(PlayerKey) end

---【废弃】请使用 UGCPlayerPawnSystem
---复活所有角色
---生效范围：服务器
---@deprecated @UGCPlayerPawnSystem
function UGCGameSystem.RespawnAllPlayers() end

---获取玩家数量
---生效范围：服务器&客户端
---@param IsIgnoreAI boolean @是否忽略 AI
---@return number @玩家数量
function UGCGameSystem.GetPlayerNum(IsIgnoreAI) end

---获取角色 Controller，包括 AI
---生效范围：服务器
---@param PlayerPawn APawn
---@return AController
function UGCGameSystem.GetControllerByPawn(PlayerPawn) end

---造成爆炸类伤害，指定列表内 Actor 接受伤害
---生效范围：服务器
---@param BaseDamage number @伤害值（最大）
---@param MinimumDamage number @最小伤害
---@param Origin Vector @伤害中心
---@param DamageInnerRadius number @伤害内圈范围（受到最大伤害)
---@param DamageOuterRadius number @伤害外圈范围（伤害持续衰减）
---@param DamageFalloff number @内圈至外圈伤害衰减指数
---@param DamageTypeTags FGameplayTag[] @造成伤害的自定义类型列表
---@param GivenActors Actor[] @指定受伤害的 Actor 列表
---@param DamageCauser Actor @造成伤害的人/物体
---@param InstigatedByController Controller @煽动者的玩家控制器
---@param DamagePreventionChannel ECollisionChannel @伤害可见性阻挡通道
---@param ItemID number @造成伤害的物品 ID
---@return boolean @是否造成伤害
function UGCGameSystem.ApplyRadialDamageWhiteList(BaseDamage, MinimumDamage, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, DamageTypeTags, GivenActors, DamageCauser, InstigatedByController, DamagePreventionChannel, ItemID) end

---造成爆炸伤害
---生效范围：服务器
---@param BaseDamage number @伤害值（最大）
---@param MinimumDamage number @最小伤害
---@param Origin Vector @伤害中心
---@param DamageInnerRadius number @伤害内圈范围（受到最大伤害)
---@param DamageOuterRadius number @伤害外圈范围（伤害持续衰减）
---@param DamageFalloff number @内圈至外圈伤害衰减指数
---@param DamageTypeTags FGameplayTag[] @造成伤害的自定义类型列表
---@param IgnoreActors Actor[] @伤害忽略 Actor 列表
---@param DamageCauser Actor @造成伤害的人/物体
---@param InstigatedByController Controller @煽动者的玩家控制器
---@param DamagePreventionChannel ECollisionChannel @伤害可见性阻挡通道
---@param ItemID number @造成伤害的物品 ID
---@return boolean @是否造成伤害
function UGCGameSystem.ApplyRadialDamage(BaseDamage, MinimumDamage, Origin, DamageInnerRadius, DamageOuterRadius, DamageFalloff, DamageTypeTags, IgnoreActors, DamageCauser, InstigatedByController, DamagePreventionChannel, ItemID) end

---造成点伤害
---生效范围：服务器
---@param DamagedActor Actor @伤害目标
---@param BaseDamage number @伤害值
---@param HitFromDirection Vector @伤害来源方向（如子弹射击方向）
---@param HitInfo FHitResult @命中信息
---@param EventInstigator Controller @事件煽动者的玩家控制器
---@param DamageCauser Actor @造成伤害的人/物体
---@param DamageTypeTags FGameplayTag[] @造成伤害的自定义类型列表
---@param ItemID number @造成伤害的物品 ID
---@return number @实际伤害
function UGCGameSystem.ApplyPointDamage(DamagedActor, BaseDamage, HitFromDirection, HitInfo, EventInstigator, DamageCauser, DamageTypeTags, ItemID) end

---造成部位伤害
---生效范围：服务器
---@param DamagedActor Actor @伤害目标
---@param BaseDamage number @伤害值
---@param EventInstigator Controller @事件煽动者的玩家控制器
---@param DamageCauser Actor @造成伤害的人/物体
---@param AvatarDamagePosition EAvatarDamagePosition @造成伤害的部位
---@param DamageTypeTags FGameplayTag[] @造成伤害的自定义类型列表
---@return number @实际伤害
function UGCGameSystem.ApplyAvatarPositionDamage(DamagedActor, BaseDamage, EventInstigator, DamageCauser, AvatarDamagePosition, DamageTypeTags) end

---造成伤害
---生效范围：服务器
---@param DamagedActor Actor @伤害目标
---@param BaseDamage number @伤害值
---@param EventInstigator Controller @事件煽动者的玩家控制器
---@param DamageCauser Actor @造成伤害的人/物体
---@param DamageTypeTags FGameplayTag[] @造成伤害的自定义类型列表
---@return number @实际伤害
function UGCGameSystem.ApplyDamage(DamagedActor, BaseDamage, EventInstigator, DamageCauser, DamageTypeTags) end

---【废弃】发送玩家结算（代表玩家已经完成了游戏，后台进行完成率统计，每个玩家正常结束游戏都需要发送）
---最新：现已废弃，调用无效果，可以无需再调用，会在玩家退出游戏和触发 UGC请求退出DS Action 时自动发送
---生效范围：服务器
---@deprecated @UGCGameSystem.GameOver()
---@param PlayerKey number @玩家 Key
---@return boolean @是否发送成功。现在总是返回 true
function UGCGameSystem.SendPlayerSettlement(PlayerKey) end

---断开客户端连接。DS关闭后，需要同步关闭客户端对服务器的长链接检测，否则玩家客户端会弹出无法连接到服务器的报错信息。
---生效范围：客户端
function UGCGameSystem.DisconnectClient() end

---开启补充玩家（需要先开启补充玩家，发送补充玩家申请才会有效）
---例：成局人数最小为 10 人，最大 20 人，匹配设置中设置 10 人，然后开启补充玩家，申请 10 人的补充名额
---生效范围：服务器
function UGCGameSystem.OpenPlayerJoin() end

---停止补充玩家（清空补充玩家申请记录）                            
---生效范围：服务器
function UGCGameSystem.StopPlayerJoin() end

---申请补充玩家（申请数量会累加,需先调用 UGCGameSystem.OpenPlayerJoin 开启补充玩家）
---例：成局人数最小为10人，最大20人，匹配设置中设置10人，然后开启补充玩家，申请10人的补充名额
---生效范围：服务器
---@param Count number @需要补充的玩家数量
---@param TeamID number @队伍ID
function UGCGameSystem.ApplyPlayerJoin(Count, TeamID) end

---申请补充玩家（申请数量会累加,需先调用 UGCGameSystem.OpenPlayerJoin 开启补充玩家）
---例：成局人数最小为10人，最大20人，匹配设置中设置10人，然后开启补充玩家，申请10人的补充名额。但不会使得对局玩家的数量超过项目设置中 “小队玩家数量（TeamPlayers） * 队伍数量（NumberOfTeams）”设置的数量
---生效范围：服务器
---@param TeamPlayerCounts table<int, int> @需要补充的玩家数量，形式如同：TeamPlayerCounts = { [TeamID1] = PlayerCount1, [TeamID2] = PlayerCount2, ... }
function UGCGameSystem.ApplyPlayerJoinLimitCount(TeamPlayerCounts) end

---进入观战，默认观战任意队友
---可以通过 UGCGameSystem.ChangeAllowOBPlayerKeys 自定义可观战玩家列表
---生效范围：服务器
---@param PlayerController PlayerController @进入观战的玩家 Controller
---@return number @被观战的玩家的 PlayerKey
function UGCGameSystem.EnterSpectating(PlayerController) end

---退出观战
---生效范围：服务器
---@param PlayerController PlayerController @退出观战的玩家 Controller
function UGCGameSystem.LeaveSpectating(PlayerController) end

---设置可被观战玩家列表
---生效范围：服务器
---@param PlayerController PlayerController @可被观战玩家列表的 Controller
---@param PlayerKeyList int32[] @可观战玩家列表数组
function UGCGameSystem.ChangeAllowOBPlayerKeys(PlayerController, PlayerKeyList) end

---让观战我的人切换别的观战目标，只有当观战对象的Pawn死亡时才生效
---生效范围：服务器
---@param PlayerController PlayerController @不再被观战的玩家 Controller
function UGCGameSystem.MyObserversChangeTarget(PlayerController) end

---是否开启 GM，自定义 GM 逻辑和界面可接入此开关，正式服中此开关为 false
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家 Controller
---@return boolean @是否开启 GM
function UGCGameSystem.IsEnableGM(PlayerController) end

---是否为服务端
---逻辑依赖 UGCGameSystem.GameState，在 GameState 初始化前的逻辑不建议调用此函数判断
---生效范围：服务器&客户端
---@return boolean @是否为服务端
function UGCGameSystem.IsServer() end

---是否在 Debug（编辑器 Debug 调试）
---生效范围：服务器&客户端
---@return boolean @是否为 Debug 环境
function UGCGameSystem.IsDebug() end

---获取平台类型
---生效范围：服务器&客户端
---@return string @共有三种平台类型："PIE", "WINRELEASE", "CLIENT"
function UGCGameSystem.GetPlatformInfo() end

---获取所有的 AIController
---生效范围：服务器
---@return AFakePlayerAIController[] @获取所有的 AIController,获取失败时将返回 nil
function UGCGameSystem.GetAllAIController() end

---主动返回大厅（使用此接口返回大厅的玩家不会弹出重进战斗对话框）
---生效范围：客户端
function UGCGameSystem.ReturnToLobby() end

---改变当前观战目标（仅限观战中使用）
---例：被观战的玩家被淘汰后，需要使用此接口，切换至其他玩家进行观战
---生效范围：服务器
---@param PlayerController PlayerController @自己的 PlayerController
---@param PlayerKey number @观战目标玩家 PlayerKey
function UGCGameSystem.ChangeOBPlayer(PlayerController, PlayerKey) end

---向模式编辑器发送自定义事件
---根据自定义事件参数顺序传入,如 SendModeCustomEvent(EventName,param1,param2)
---生效范围：服务器
---@param EventName string @事件名
---@param ... any @自定义事件参数
function UGCGameSystem.SendModeCustomEvent(EventName, ...) end

---获取当前服务器时间
---生效范围：服务器&客户端
---@return number @当前服务器时间（UTC）:单位秒
function UGCGameSystem.GetServerTimeSec() end

---设置定时器
---生效范围：服务器&客户端
---@param Object UObject @对象
---@param CallbackFunction LuaFunction @Lua 回调函数
---@param Time number @定时时长
---@param IsLooping boolean @是否循环
---@return FTimerHandle, ULuaSingleDelegate @定时器句柄，定时器回调
function UGCGameSystem.SetTimer(Object, CallbackFunction, Time, IsLooping) end

---移除定时器
---生效范围：服务器&客户端
---@param Object UObject @上下文对象
---@param TimerHandle ULuaSingleDelegate @定时器句柄，定时器回调
function UGCGameSystem.ClearTimer(Object, TimerHandle) end

---记录埋点日志
---value 中多个字段建议使用_（下划线）分割
---例: ItemName_NormalItem_Count_1
---生效范围：服务器
---@param Key string @日志索引
---@param Value string @日志内容
function UGCGameSystem.SendTLog(Key, Value) end

---记录灰度埋点日志
---生效范围：服务器
---@param ID number @灰度 ID
---@param PlayerKey number @玩家 ID
function UGCGameSystem.SendGreyTLog(ID, PlayerKey) end

---发送游戏日志
---生效范围：服务器
---注意：函数会先做本地参数校验和频率限制；命中拦截时会直接 return，不会真正发包。
---@param Index number @日志索引，必填，范围是[800800, 801800]；传 nil、非 number 或越界值会在本地校验阶段被拦截，日志不会发出去
---@param UID number @玩家UID，必填；当前实现不支持传空，传 nil 或非 number 会在本地校验阶段被拦截，日志不会发出去；UID无效/错误仍可能导致上报失败
---@param CustomData table @自定义数据，必填 table；传 nil 或非 table 会在本地校验阶段被拦截，日志不会发出去；序列化后超过512字节会按表内键值对自动截断
function UGCGameSystem.SendPgcGameTlog(Index, UID, CustomData) end

---发送直播日志
---生效范围：服务器
---@param LogType number @类型 1-赛事，2-人生
---@param Id number @事件ID(自定义)
---@param Value table @事件内容(自定义)
function UGCGameSystem.SendLiveStreamingTLog(LogType, Id, Value) end

---设置赛事信息
---生效范围：服务器
---@param PlayerKey number @玩家Key
---@param bEscaped boolean @是否逃跑
---@param PersonRank number @个人排名
---@param TeamRank number @队伍排名
---@param MatchResult ETournamentMatchResult @胜利失败信息
function UGCGameSystem.SetTournamentInfo(PlayerKey, bEscaped, PersonRank, TeamRank, MatchResult) end

---是否关闭移动输入事件
---IsOverride 开启后需要在 PlayerController 重载 UGCMoveEvent(Vector2D) 事件
---生效范围：客户端
---@param PlayerController PlayerController @玩家控制器
---@param IsEnable boolean @是否关闭
---@param IsOverride boolean @是否重载（原移动输入会被覆盖）
function UGCGameSystem.SetMoveInputEventEnable(PlayerController, IsEnable, IsOverride) end

---开启/关闭旋转输入事件
---IsOverride 开启后需要在 PlayerController 重载 UGCLookEvent(Vector2D) 事件
---生效范围：客户端
---@param PlayerController PlayerController @玩家控制器
---@param IsEnable boolean @是否开启
---@param IsOverride boolean @是否重载（原旋转输入会被覆盖）
function UGCGameSystem.SetLookInputEventEnable(PlayerController, IsEnable, IsOverride) end

---在PlayerController对应的客户端震屏
---生效范围：服务器
---@param PlayerController ASTExtraPlayerController @震屏玩家的 PlayerController
---@param CameraShakeType EPESkillCameraShakeType @震屏类型(随机方向/X方向/Y方向)
---@param ShakeScale number @震屏强度
---@param Duration number @震屏时间(单位:秒，<=0 表示一直持续)
function UGCGameSystem.ClientPlayCameraShake(PlayerController, CameraShakeType, ShakeScale, Duration) end

---在PlayerController对应的客户端停止某类型的震屏
---生效范围：服务器
---@param PlayerController ASTExtraPlayerController @震屏玩家的 PlayerController
---@param CameraShakeType EPESkillCameraShakeType @震屏类型(随机方向/X方向/Y方向)
function UGCGameSystem.ClientStopCameraShake(PlayerController, CameraShakeType) end

---根据表格路径获取表格内容
---TablePath支持以下格式(...表示相对Asset目录的路径, 如Data/Table)：
---.../TableName
---UGCGameSystem.GetUGCResourcesFullPath('Asset/.../TableName.TableName')
---/Game/.../TableName.TableName
---生效范围：服务器&客户端
---@param TablePath string @表格路径
---@return any @表格全部内容
function UGCGameSystem.GetTableData(TablePath) end

---根据表格路径获取表格行数
---生效范围：服务器&客户端
---@param TablePath string @表格路径，支持格式见UGCGameSystem.GetTableData
---@return number @表格行数
function UGCGameSystem.GetTableCount(TablePath) end

---根据表格路径，以及key获取表格内容
---生效范围：服务器&客户端
---@param TablePath string @表格路径，支持格式见UGCGameSystem.GetTableData
---@param RowName number @key值 string型或者int型都可以
---@return any @表格某行内容
function UGCGameSystem.GetTableDataByRowName(TablePath, RowName) end

---获取指定DataTable的表格内容
---生效范围：服务器&客户端
---@param DataTable UDataTable @要读取的表格
---@return any @表格全部内容
function UGCGameSystem.GetDataTableData(DataTable) end

---获取指定DataTable的指定行的表格内容
---生效范围：服务器&客户端
---@param DataTable UDataTable @要读取的表格
---@param RowName string @行名
---@return any @指定行的全部内容
function UGCGameSystem.GetDataTableDataByRowName(DataTable, RowName) end

---获取指定DataTable的行数
---生效范围：服务器&客户端
---@param DataTable UDataTable @要读取的表格
---@return number @行数
function UGCGameSystem.GetDataTableRowCount(DataTable) end

---异步根据表格路径获取表格内容
---生效范围：服务器&客户端
---@param TablePath string @表格路径，支持格式见UGCGameSystem.GetTableData
---@param CallBack function @lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别)
---@param CallBack_self UObject @这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
function UGCGameSystem.AsyncGetTableData(TablePath, CallBack, CallBack_self) end

---异步根据表格路径获取表格行数
---生效范围：服务器&客户端
---@param TablePath string @表格路径，支持格式见UGCGameSystem.GetTableData
---@param CallBack function @lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别)
---@param CallBack_self UObject @这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
function UGCGameSystem.AsyncGetTableCount(TablePath, CallBack, CallBack_self) end

---异步根据表格路径获取表格内容
---生效范围：服务器&客户端
---@param TablePath string @表格路径，支持格式见UGCGameSystem.GetTableData
---@param RowName string @查询关键字
---@param CallBack function @lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别)
---@param CallBack_self UObject @这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
function UGCGameSystem.AsyncGetTableDataByRowName(TablePath, RowName, CallBack, CallBack_self) end

---添加好友
---生效范围：客户端
---@param UID number @玩家 UID
function UGCGameSystem.AddFriend(UID) end

---获取资源的完整加载路径
---仅自己工程下资源需要使用此函数获取路径，和平精英目录资源不需要使用此函数拼接路径
---例：自己工程资源
---local ClassPath = "Asset/MyBlueprint.MyBlueprint_C"
---UE.LoadClass(UGCGameSystem.GetUGCResourcesFullPath(ClassPath))
---例：和平精英目录资源
---local ClassPath = "/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C"
---UE.LoadClass(ClassPath)
---生效范围：服务器&客户端
---@param RelativePath string @工程资源路径
---@return string @完整资源路径
function UGCGameSystem.GetUGCResourcesFullPath(RelativePath) end

---用于替代原生require，如果需要将功能发布至资源商店，需要使用此函数 require lua 文件
---例：require("Script.MyLua");
---生效范围：服务器&客户端
---@param RelativePath string @Lua 文件路径
---@return any @加载的 lua 文件
function UGCGameSystem.UGCRequire(RelativePath) end

---显示绿洲段位，徽章结算界面
---会自动显示段位变化以及新增徽章
---详细内容参考：https://developer.gp.qq.com/wikieditor/#/catalog/375
---生效范围：客户端
function UGCGameSystem.ShowUGCRankAndAchievementUI() end

---获取 DS 全局事件代理
---生效范围：服务器
---@return UObject @全局代理类
function UGCGameSystem.GetSTExtraGMDelegatesMgr() end

---获取客户端当前的 PlayerController
---生效范围：客户端
---@return ASTExtraPlayerController @当前正在控制的玩家
function UGCGameSystem.GetLocalPlayerController() end

---获取客户端当前的 PlayerPawn
---生效范围：客户端
---@return PlayerPawn @当前的PlayerPawn
function UGCGameSystem.GetLocalPlayerPawn() end

---获取客户端当前的 PlayerState
---生效范围：客户端
---@return ASTExtraPlayerState @当前的PlayerState
function UGCGameSystem.GetLocalPlayerState() end

---获取客户端当前的 PlayerKey
---生效范围：客户端
---@return number @当前的PlayerKey
function UGCGameSystem.GetLocalPlayerKey() end

---获取当前的 GameMode
---生效范围：服务器
---@return AUGCGameModeBase @当前的 GameMode
function UGCGameSystem.GetGameMode() end

---获取当前的 GameState
---生效范围：服务器&客户端
---@return AUGCGameStateBase @当前的 GameState
function UGCGameSystem.GetGameState() end

---判断是否是房间模式
---生效范围：服务器
---@return boolean @true表示是房间模式，false表示不是房间模式
function UGCGameSystem.IsRoomMode() end

---反挂机数据收集 在结算数据里上报 1.击杀数-Kill 2.伤害量-DamageAmount 3.移动距离-TravelDistance 4.达到存档数-ReachedArchives
---生效范围：服务器
---@param UID number @上报玩家的UID
---@param DataKey string @上报数据的字段名字
---@param DataValue string @上报数据
function UGCGameSystem.CollectPlayerAntiAFKData(UID, DataKey, DataValue) end

---获取当前关卡
---生效范围：服务器
---@param WorldContextObject UObject @关卡上下文对象
---@param bRemovePrefixString boolean @是否移除前缀字符串
---@return string @当前关卡的名字
function UGCGameSystem.GetCurrentLevel(WorldContextObject, bRemovePrefixString) end

---加载关卡
---生效范围：服务器 & 客户端
---@param LevelName string @关卡名字
---@param bMakeVisibleAfterLoad boolean @是否在加载完成后显示关卡
---@param bShouldBlockOnLoad boolean @是否延迟加载
---@param LatentInfo LatentInfo @延迟信息
function UGCGameSystem.LoadStreamLevel(LevelName, bMakeVisibleAfterLoad, bShouldBlockOnLoad, LatentInfo) end

---卸载关卡
---生效范围：服务器 & 客户端
---@param LevelName string @关卡名字
---@param LatentInfo LatentInfo @延迟信息
function UGCGameSystem.UnloadStreamLevel(LevelName, LatentInfo) end

---强制刷新关卡流加载
---生效范围：服务器
function UGCGameSystem.FlushLevelStreaming() end

---【废弃】创建弱对象指针
---生效范围：服务器 & 客户端
---@deprecated @UGCObjectUtility.MakeWeakObjectPtr()
---@param InObject UObject @对象
---@return WeakObjectPtr @弱对象指针
function UGCGameSystem.MakeWeakObjectPtr(InObject) end

---【废弃】从弱对象指针获取对象
---生效范围：服务器 & 客户端
---@deprecated @UGCObjectUtility.GetObjectFromWeakObjectPtr()
---@param InWeakObjectPtr WeakObjectPtr @弱对象指针
---@return UObject @对象
function UGCGameSystem.GetObjectFromWeakObjectPtr(InWeakObjectPtr) end

---【废弃】判断弱对象指针是否有效
---生效范围：服务器 & 客户端
---@deprecated @UGCObjectUtility.IsWeakObjectPtrValid()
---@param InWeakObjectPtr WeakObjectPtr @弱对象指针
---@return boolean @是否有效
function UGCGameSystem.IsWeakObjectPtrValid(InWeakObjectPtr) end

---切换鼠标显示
---生效范围：客户端
function UGCGameSystem.SwitchMouseCursorShowState() end

---获取鼠标显示状态
---生效范围：客户端
---@return boolean @是否显示鼠标
function UGCGameSystem.GetShowMouseCursor() end

---设置鼠标显示
---生效范围：客户端
---@param bShow boolean @是否显示鼠标
function UGCGameSystem.SetMouseCursorShowState(bShow) end

---设置Actor描边
---生效范围：客户端
---@param InActor AActor @Actor
---@param bIsDrawOutline boolean @是否描边
---@param OutlineThickness number @描边粗细
---@param OutlineColor FLinearColor @描边颜色
function UGCGameSystem.DrawOutline(InActor, bIsDrawOutline, OutlineThickness, OutlineColor) end

---是否为PIE环境
---生效范围：服务器 & 客户端
---@return boolean @是否为PIE环境
function UGCGameSystem.IsUGCPIE() end

---在指定位置生成粒子效果，粒子系统播放完成后会自动销毁，不会进行网络复制
---生效范围：客户端
---@param WorldContext UObject @世界上下文对象
---@param EmitterTemplate UParticleSystem @要创建的粒子系统
---@param Location FVector @位置
---@param Rotation FRotator @旋转
---@param Scale FVector @缩放
---@param bAutoDestroy boolean @是否自动销毁
---@return UParticleSystemComponent @粒子系统组件
function UGCGameSystem.SpawnEmitterAtLocation(WorldContext, EmitterTemplate, Location, Rotation, Scale, bAutoDestroy) end

---播放指定效果，该效果会附加到指定组件并跟随其移动。效果播放完成后系统将消失。此效果不进行网络复制
---生效范围：客户端
---@param EmitterTemplate UParticleSystem @要创建的粒子系统
---@param AttachComponent USceneComponent @要附加到的组件
---@param AttachPointName string @附加组件中用于生成发射器的可选命名点（若不指定则在附加组件原点生成）
---@param Location FVector @根据 LocationType 的值，此参数可为相对于附加组件/点的偏移量；或为绝对世界位置（若 LocationType 为 KeepWorldPosition，则会将该位置转换为相对于附加组件/点的偏移）
---@param Rotation FRotator @根据 LocationType 的值，此参数可为相对于附加组件/点的旋转偏移量；或为绝对世界旋转（若 LocationType 为 KeepWorldPosition，则会将该旋转转换为相对于附加组件/点的偏移）
---@param Scale FVector @根据 LocationType 的值，此参数可为相对于附加组件的缩放比例；或为绝对世界缩放（若 LocationType 为 KeepWorldPosition，则会将该缩放转换为相对于附加组件的比例）
---@param LocationType EAttachLocation @指定 Location 是相对偏移量还是绝对世界位置
---@param bAutoDestroy boolean @粒子系统播放完成后，此组件是自动销毁还是可重新激活
---@return UParticleSystemComponent @创建的粒子系统组件
function UGCGameSystem.SpawnEmitterAttached(EmitterTemplate, AttachComponent, AttachPointName, Location, Rotation, Scale, LocationType, bAutoDestroy) end

---在指定位置和旋转角度生成一个贴花，生成后无需管理。此效果不进行网络复制
---@param WorldContext UObject @世界上下文对象
---@param DecalMaterial UMaterialInterface @贴花的材质
---@param DecalSize FVector @贴花的尺寸
---@param Location FVector @贴花在世界空间中的放置位置
---@param Rotation FRotator @贴花在世界空间中的放置旋转
---@param LifeSpan number @贴花组件在时间结束后销毁（0表示永久存在）
---@return UDecalComponent @创建的贴花组件
function UGCGameSystem.SpawnDecalAtLocation(WorldContext, DecalMaterial, DecalSize, Location, Rotation, LifeSpan) end

---在指定组件上生成一个附加并跟随的贴花。此效果不进行网络复制
---@param DecalMaterial UMaterialInterface @贴花的材质
---@param DecalSize FVector @贴花的尺寸
---@param AttachComponent USceneComponent @要附加到的组件
---@param AttachPointName string @附加组件中用于生成发射器的可选命名点（若不指定则在附加组件原点生成）
---@param Location FVector @根据 LocationType 的值，此参数可为相对于附加组件/点的偏移量；或为绝对世界位置（若 LocationType 指定为 KeepWorldPosition，则会将该位置转换为相对于附加组件/点的偏移）
---@param Rotation FRotator @根据 LocationType 的值，此参数可为相对于附加组件/点的旋转偏移量；或为绝对世界旋转（若 LocationType 指定为 KeepWorldPosition，则会将该旋转转换为相对于附加组件/点的偏移）
---@param LocationType EAttachLocation @指定 Location 是相对偏移量还是绝对世界位置
---@param LifeSpan number @贴花组件在时间结束后销毁（0 表示永久存在）
---@return UDecalComponent @创建的贴花组件
function UGCGameSystem.SpawnDecalAtAttached(DecalMaterial, DecalSize, AttachComponent, AttachPointName, Location, Rotation, LocationType, LifeSpan) end

---获得当前游戏开始之后的时间，单位秒，受时间膨胀影响，但不受游戏暂停影响
---生效范围：服务器 & 客户端
---@param WorldContext UObject @世界上下文对象
---@return number @当前游戏开始之后的时间，单位秒
function UGCGameSystem.GetTimeSeconds(WorldContext) end

---将日期时间转换为时间戳
---生效范围：服务器 & 客户端
---@param DateTime FDateTime @日期时间
---@return number @时间戳
function UGCGameSystem.DateTimeToTimeStamp(DateTime) end

---获取当前日期时间
---生效范围：服务器 & 客户端
---@return FDateTime @当前日期时间
function UGCGameSystem.GetCurrentDateTime() end

---获取DS剩余时间，单位秒
---生效范围：服务器
---@return int @DS剩余时间
function UGCGameSystem.GetDSRemainingTime() end

---设置DS关闭通知时间，监听UGCGenericMessageSystem.UserDefinedMessages.UGC.UGCDSShutDownManager.DSCloseNotify，会在到达时间时发送通知，附带参数为DS剩余时间
---假设已经到了设置的时间比DS长，例如DS剩余关闭时间是30s，设置的时间组是{50，40，20}，那么会在游戏开始时，50和40两个时间点合并仅发送一次通知，目前仅支持整数时间点
---生效范围：服务器
---@param NotifyTimes int[] @通知时间组
function UGCGameSystem.SetDSCloseNotify(NotifyTimes) end

---游戏结束，一键执行发送所有玩家结算，玩家退出和玩家销毁的动作，并关闭DS，这个接口会有一定延时，如果玩家还在游戏内执行，会将玩家强行踢出ds，返回大厅
---生效范围：服务器
function UGCGameSystem.GameOver() end

---判断玩家是否为观战玩家
---生效范围：服务器 & 客户端
---@param PlayerController APlayerController @玩家控制器
---@return boolean @是否为观战玩家
function UGCGameSystem.IsObserver(PlayerController) end

---生成自定义伤害数字默认参数
---生效范围：服务器 & 客户端
---@return FUGCDamageNumberParams @自定义伤害数字参数
function UGCGameSystem.MakeCustomDamageNumberParams() end

---显示自定义伤害数字
---生效范围：客户端
---@param WorldContext UObject @世界上下文对象
---@param TargetActor Actor @伤害数字显示目标
---@param Params FUGCDamageNumberParams @自定义伤害数字参数
---@return boolean @是否为观战玩家
function UGCGameSystem.AddUGCCustomDamageNumber(WorldContext, TargetActor, Params) end

---判断是否为外研线
---生效范围：服务器 & 客户端
---@return boolean @是否为外研线
function UGCGameSystem.IsOuterlineDEV() end