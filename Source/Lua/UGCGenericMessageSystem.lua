---@meta

---广播信息接口库
---@class UGCGenericMessageSystem
UGCGenericMessageSystem = {}

---玩家相关消息
UGCGenericMessageSystem.Messages.UGC.Player = nil

---玩家进入游戏
---生效范围：服务器
---ListenedObject：无，全局事件
---@param PlayerKey number @玩家的 PlayerKey
UGCGenericMessageSystem.Messages.UGC.Player.PlayerEnter = nil

---玩家退出游戏
---生效范围：服务器
---ListenedObject：无，全局事件
---@param PlayerKey number @玩家的 PlayerKey
UGCGenericMessageSystem.Messages.UGC.Player.PlayerExit = nil

---玩家掉线
---生效范围：服务器
---ListenedObject：无，全局事件
---@param PlayerKey number @玩家的 PlayerKey
UGCGenericMessageSystem.Messages.UGC.Player.PlayerLost = nil

---玩家重连进入游戏
---生效范围：服务器
---ListenedObject：无，全局事件
---@param PlayerKey number @玩家的 PlayerKey
UGCGenericMessageSystem.Messages.UGC.Player.PlayerReconnect = nil

---玩家角色相关的消息
UGCGenericMessageSystem.Messages.UGC.PlayerPawn = nil

---玩家角色首次出生
---生效范围：服务器
---ListenedObject：无，全局事件
---@param PlayerKey number @玩家的 PlayerKey
UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnSpawn = nil

---玩家角色受到伤害前（最终伤害计算前)
---生效范围：服务器
---ListenedObject：指定被伤害角色，不指定则接收所有角色消息
---@param VictimPlayer ASTExtraBaseCharacter @造成伤害的玩家角色
---@param DamageCauserActor AActor @伤害来源
---@param EventInstigator Controller @伤害来源的玩家控制器
---@param Damage number @伤害值
---@param DamageContext FGameMagnitudeContext @伤害事件上下文
UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PreTakeDamage = nil

---玩家角色受到伤害后（最终伤害计算后)
---生效范围：服务器
---ListenedObject：指定被伤害角色，不指定则接收所有角色消息
---@param VictimPlayer ASTExtraBaseCharacter @造成伤害的玩家角色
---@param DamageCauserActor AActor @伤害来源
---@param EventInstigator Controller @伤害来源的玩家控制器
---@param Damage number @伤害值
---@param DamageContext FGameMagnitudeContext @伤害事件上下文
UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PostTakeDamage = nil

---玩家角色受到治疗前（最终治疗计算前)
---生效范围：服务器
---ListenedObject：指定被伤害角色
---@param RecoverValue float @预治疗值
---@param RecoveryInstigator AActor @治疗来源的玩家控制器
---@param RecoveryCauser Controller @治疗来源
---@param RecoverTags FGameplayTag[] @治疗附带的Tags
UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PreRecoverHealth = nil

---玩家角色受到治疗后（最终治疗计算后)
---生效范围：服务器
---ListenedObject：指定被伤害角色
---@param RecoverValue float @实际治疗值
---@param RecoveryInstigator AActor @治疗来源的玩家控制器
---@param RecoveryCauser Controller @治疗来源
---@param RecoverTags FGameplayTag[] @治疗附带的Tags
UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PostRecoverHealth = nil

---玩家角色被击败
---生效范围：服务器
---ListenedObject：无，全局事件
---@param VictimPlayerKey number @被击败玩家的 PlayerKey
---@param InstigatorPlayerKey number @击败玩家的 PlayerKey
---@param DamageType EDamageType @伤害类型
UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnDefeat = nil

---玩家角色重生
---生效范围：服务器
---ListenedObject：无，全局事件
---@param PlayerKey number @玩家的 PlayerKey
UGCGenericMessageSystem.Messages.UGC.PlayerPawn.PawnRespawn = nil

---怪物角色首次出生
---生效范围：服务器&客户端
---ListenedObject：指定生成的怪物，不指定则接收所有怪物角色消息
---@param MobPawn AUGCMobCharacter @怪物
UGCGenericMessageSystem.Messages.UGC.MobPawn.Spawn = nil

---怪物角色受到伤害前（最终伤害计算前)
---生效范围：服务器
---ListenedObject：指定被伤害怪物角色，不指定则接收所有怪物角色消息
---@param MobPawn AUGCMobCharacter @怪物
---@param DamageCauserActor AActor @伤害来源
---@param EventInstigator Controller @伤害来源的玩家控制器
---@param Damage number @伤害值
---@param DamageContext FGameMagnitudeContext @伤害事件上下文
UGCGenericMessageSystem.Messages.UGC.MobPawn.PreTakeDamage = nil

---怪物角色受到伤害后（最终伤害计算后)
---生效范围：服务器
---ListenedObject：指定被伤害怪物角色，不指定则接收所有怪物角色消息
---@param MobPawn AUGCMobCharacter @怪物
---@param DamageCauserActor AActor @伤害来源
---@param EventInstigator Controller @伤害来源的玩家控制器
---@param Damage number @伤害值
---@param DamageContext FGameMagnitudeContext @伤害事件上下文
UGCGenericMessageSystem.Messages.UGC.MobPawn.PostTakeDamage = nil

---怪物角色受到治疗前（最终治疗计算前)
---生效范围：服务器
---ListenedObject：指定被伤害怪物角色
---@param RecoverValue float @预治疗值
---@param RecoveryInstigator AActor @治疗来源的玩家控制器
---@param RecoveryCauser Controller @治疗来源
---@param RecoverTags FGameplayTag[] @治疗附带的Tags
UGCGenericMessageSystem.Messages.UGC.MobPawn.PreRecoverHealth = nil

---怪物角色受到治疗后（最终治疗计算后)
---生效范围：服务器
---ListenedObject：指定被伤害怪物角色
---@param RecoverValue float @实际治疗值
---@param RecoveryInstigator AActor @治疗来源的玩家控制器
---@param RecoveryCauser Controller @治疗来源
---@param RecoverTags FGameplayTag[] @治疗附带的Tags
UGCGenericMessageSystem.Messages.UGC.MobPawn.PostRecoverHealth = nil

---怪物角色被击杀
---生效范围：服务器&客户端
---ListenedObject：指定被击杀怪物角色，不指定则接收所有怪物角色消息
---@param MobPawn AUGCMobCharacter @被击杀的怪物
---@param Killer Controller @击杀该怪物的玩家控制器
UGCGenericMessageSystem.Messages.UGC.MobPawn.PostBeKilled = nil

---怪物角色状态变化
---生效范围：服务器&客户端
---ListenedObject：指定改变状态的怪物角色，不指定则接收所有怪物角色消息
---@param MobPawn AUGCMobCharacter @被击杀的怪物
---@param OldState EUGCMobState @变化前的状态
---@param NewState EUGCMobState @变化后的状态
UGCGenericMessageSystem.Messages.UGC.MobPawn.StateChange = nil

---刷怪器相关的消息
UGCGenericMessageSystem.Messages.UGC.MobSpawner = nil

---刷怪管理器波次开始
---生效范围：服务器
---ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息
---@param MobSpawnerManager AUGCMobSpawnerManager @波次所属的刷怪管理器
---@param WaveIndex number
UGCGenericMessageSystem.Messages.UGC.MobSpawner.WaveStart = nil

---刷怪管理器波次结束
---生效范围：服务器
---ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息
---@param MobSpawnerManager AUGCMobSpawnerManager @波次所属的刷怪管理器
---@param WaveIndex number
UGCGenericMessageSystem.Messages.UGC.MobSpawner.WaveEnd = nil

---刷怪管理器所有波次结束
---生效范围：服务器
---ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息
---@param MobPawn AUGCMobCharacter @被击杀的怪物
UGCGenericMessageSystem.Messages.UGC.MobSpawner.AllWaveEnd = nil

---刷怪管理器所有波次的怪物死亡
---生效范围：服务器
---ListenedObject：指定特定的刷怪管理器，不指定则接收所有刷怪管理器消息
---@param MobPawn AUGCMobCharacter @被击杀的怪物
UGCGenericMessageSystem.Messages.UGC.MobSpawner.AllMobDie = nil

---初始化和平 MainUI
---生效范围：客户端
---ListenedObject：无，全局事件
---@param PC Controller @初始化 MainUI 的玩家控制器
UGCGenericMessageSystem.Messages.UGC.Client.MainUI.InitMainUI = nil

---游戏结束
---生效范围：服务器
---ListenedObject：无，全局事件
UGCGenericMessageSystem.Messages.UGC.Game.GameEnd = nil

---游戏开始
---生效范围：服务器
---ListenedObject：无，全局事件
UGCGenericMessageSystem.Messages.UGC.Game.GameStart = nil

---GamePart 加载完成。在此消息回调中执行 GetGamePartGlobalActor 以确保 GamePart 对象可用。
---生效范围：服务器&客户端
---ListenedObject：无，全局事件
---@param GamePart string @加载完成的 GamePart 模块
UGCGenericMessageSystem.Messages.UGC.GamePart.GamePartLoaded = nil

---GamePart 加载完成。在此消息回调中执行 GetGamePartGlobalActor 以确保 GamePart 对象可用。
---ForPlayer 可区分不同客户端上运行的 GamePart 模块。
---生效范围：服务器&客户端
---ListenedObject：无，全局事件
---@param GamePart string @加载完成的 GamePart 模块
---@param PlayerController PlayerController @加载完成的 GamePart 模块所属的客户端玩家控制器
UGCGenericMessageSystem.Messages.UGC.GamePart.GamePartLoadedForPlayer = nil

---枪械相关的消息
UGCGenericMessageSystem.Messages.UGC.Weapon = nil

---枪械的子弹命中
---生效范围：服务器
---ListenedObject：无，全局事件
---@param Gun ASTExtraShootWeapon @监听的枪械
---@param Data FBulletHitInfoUploadData @命中数据
UGCGenericMessageSystem.Messages.UGC.Weapon.BulletHit = nil

---枪械开火
---生效范围：服务器
---ListenedObject：无，全局事件
---@param Gun ASTExtraShootWeapon @监听的枪械
UGCGenericMessageSystem.Messages.UGC.Weapon.Fire = nil

---枪械停火
---生效范围：服务器
---ListenedObject：无，全局事件
---@param Gun ASTExtraShootWeapon @监听的枪械
UGCGenericMessageSystem.Messages.UGC.Weapon.StopFire = nil

---枪械装备
---生效范围：服务器
---ListenedObject：无，全局事件
---@param bIsEquip boolean @是否装备
---@param Player ASTExtraCharacter @持有者
---@param Weapon ASTExtraWeapon @当前武器
UGCGenericMessageSystem.Messages.UGC.Weapon.PostEquipWeapon = nil

---枪械换弹
---生效范围：服务器
---ListenedObject：无，全局事件
---@param Gun ASTExtraShootWeapon @监听的枪械
UGCGenericMessageSystem.Messages.UGC.Weapon.Reload = nil

---枪械开镜
---生效范围：服务器
---ListenedObject：无，全局事件
---@param Gun ASTExtraShootWeapon @监听的枪械
UGCGenericMessageSystem.Messages.UGC.Weapon.ScopeIn = nil

---枪械关镜
---生效范围：服务器
---ListenedObject：无，全局事件
---@param Gun ASTExtraShootWeapon @监听的枪械
UGCGenericMessageSystem.Messages.UGC.Weapon.ScopeOut = nil

---枪械切换
---生效范围：服务器
---ListenedObject：无，全局事件
---@param NewGun ASTExtraShootWeapon @新武器
---@param OldGun ASTExtraShootWeapon @老武器
---@param Player ASTExtraCharacter @持有者
UGCGenericMessageSystem.Messages.UGC.Weapon.SwitchWeapon = nil

---全局属性改变
---生效范围：服务器
---ListenedObject：监听的属性，不指定监听的属性则接收所有属性消息
---@param OwnerActor AActor @属性所有者
---@param AttrName string @属性名
---@param CurValue number @属性值
UGCGenericMessageSystem.Messages.UGC.Attribute.GlobalAttrChanged = nil

---关卡开始
---生效范围：服务器
---ListenedObject：无，全局事件
---@param int CurrentStage @当前关卡数
UGCGenericMessageSystem.Messages.UGC.LevelFlow.LevelBegin = nil

---游戏开始
---生效范围：服务器
---ListenedObject：无，全局事件
UGCGenericMessageSystem.Messages.UGC.LevelFlow.GameBegin = nil

---任务模板中所有任务初始化完毕
---生效范围：服务器&客户端
---ListenedObject：指定任务监听器，不指定则接受所有任务监听器消息
UGCGenericMessageSystem.Messages.UGC.Task.TaskCreated = nil

---PersistEffect挂载到UPersistBaseComponent
---生效范围：服务器&客户端
---ListenedObject：指定UPersistBaseComponent，不指定则接收所有UPersistBaseComponent消息
---@param PE UPersistEffectBase @当前挂载的PersistEffect
UGCGenericMessageSystem.Messages.UGC.PersistEffect.ApplyPersistEffect = nil

---PersistEffect从UPersistBaseComponent上卸载
---生效范围：服务器&客户端
---ListenedObject：指定UPersistBaseComponent，不指定则接收所有UPersistBaseComponent消息
---@param PE UPersistEffectBase @当前卸载的PersistEffect
UGCGenericMessageSystem.Messages.UGC.PersistEffect.UnApplyPersistEffect = nil

---PersistEffectSkill的状态改变
---生效范围：服务器&客户端
---ListenedObject：指定UPersistEffectSkill，不指定则接收所有UPersistEffectSkill消息
---@param PESkill UPersistEffectSkill @当前改变状态的PersistEffectSkill
---@param EventType EPSkillEventSkillStateEvent @当前改变后的状态
UGCGenericMessageSystem.Messages.UGC.PersistEffect.ChangeState = nil

---队伍相关
UGCGenericMessageSystem.Messages.UGC.Team = nil

---有队员加入队伍
---生效范围：服务器
---ListenedObject：无，全局事件
---@param PlayerKey number @加入队伍玩家的PlayerKey
---@param TeamID number @队伍ID
UGCGenericMessageSystem.Messages.UGC.Team.TeammateLogin = nil

---成功生成AirDrop
---生效范围：服务器
---ListenedObject：无，全局事件
---@param InsID number @空投箱实例ID
---@param AirDropBox BP_UGCAirDropBox_GamePart_C @空投箱
UGCGenericMessageSystem.Messages.UGC.AirDrop.SuccessfullyGeneratedAirDrop = nil

---成功销毁AirDrop
---生效范围：服务器
---ListenedObject：无，全局事件
---@param InsID number @空投箱实例ID
UGCGenericMessageSystem.Messages.UGC.AirDrop.SuccessfullyDestroyedAirDrop = nil

---成功拾取AirDrop
---生效范围：服务器
---ListenedObject：无，全局事件
---@param InsID number @空投箱实例ID
UGCGenericMessageSystem.Messages.UGC.AirDrop.SuccessfullyPickedUpAirDrop = nil

---塔防波次相关消息
UGCGenericMessageSystem.Messages.UGC.TowerWave = nil

---波次变化（客户端本地通知）
---生效范围：客户端
---ListenedObject：无，全局事件
---@param CurrentWaveIndex number @当前波次索引（从0开始，-1=未开始）
---@param TotalWaveCount number @总波次数
UGCGenericMessageSystem.Messages.UGC.TowerWave.WaveChanged = nil

---波次状态变化（客户端本地通知）
---生效范围：客户端
---ListenedObject：无，全局事件
---@param CurrentWaveIndex number @当前波次索引
---@param WaveState number @波次状态（EWaveState枚举值）
UGCGenericMessageSystem.Messages.UGC.TowerWave.StateChanged = nil

---倒计时变化（客户端本地通知）
---生效范围：客户端
---ListenedObject：无，全局事件
---@param Countdown number @剩余倒计时（秒）
UGCGenericMessageSystem.Messages.UGC.TowerWave.CountdownChanged = nil

---所有波次完成
---生效范围：服务器&客户端
---ListenedObject：无，全局事件
---@param TotalWaveCount number @总波次数
UGCGenericMessageSystem.Messages.UGC.TowerWave.AllComplete = nil

---请求回合结束（所有波次完成后触发）
---生效范围：服务器
---ListenedObject：无，全局事件
UGCGenericMessageSystem.Messages.UGC.TowerWave.RequestRoundEnd = nil

---DS关闭前通知
---生效范围：服务器
---ListenedObject：无，全局事件
---@param DSRemainingTime table @DS剩余时间，唯一key: DSRemainingTime
UGCGenericMessageSystem.UserDefinedMessages.UGC.UGCDSShutDownManager.DSCloseNotify = nil

---监听对象的广播信息，作用包含ListenUserDefinedObjectMessage，正常仅调用本接口即可
---生效范围：服务器&客户端
---@param ListenedObject UObject @被监听对象
---@param Message string @广播信息的索引，后续的广播和监听都通过索引进行操作
---@param Listener UObject @监听对象
---@param Callback function @监听对象监听到广播后调用的回调函数
---@return number @返回监听ID
function UGCGenericMessageSystem.ListenObjectMessage(ListenedObject, Message, Listener, Callback) end

---广播自定义的对象消息
---生效范围：服务器&客户端
---@param ListenedObject UObject @被监听对象
---@param Message string @广播信息的索引，后续的广播和监听都通过索引进行操作
---@param ... any @自定义事件参数
function UGCGenericMessageSystem.BroadcastUserDefinedObjectMessage(ListenedObject, Message, ...) end

---监听全局的广播信息，作用包含ListenUserDefinedGlobalMessage，正常仅调用本接口即可
---生效范围：服务器&客户端
---@param WorldContextObject UObject @世界上下文对象
---@param Message string @广播信息的索引，后续的广播和监听都通过索引进行操作
---@param Listener UObject @监听对象
---@param Callback function @监听对象监听到广播后调用的回调函数
---@return number @返回监听ID
function UGCGenericMessageSystem.ListenGlobalMessage(WorldContextObject, Message, Listener, Callback) end

---监听自定义的全局广播信息
---生效范围：服务器&客户端
---@param WorldContextObject UObject @世界上下文对象
---@param Message string @广播信息的索引，后续的广播和监听都通过索引进行操作
---@param Listener UObject @监听对象
---@param Callback function @监听对象监听到广播后调用的回调函数
---@return number @返回监听ID
function UGCGenericMessageSystem.ListenUserDefinedGlobalMessage(WorldContextObject, Message, Listener, Callback) end

---广播自定义的全局消息
---生效范围：服务器&客户端
---@param Message string @广播信息的索引，后续的广播和监听都通过索引进行操作
---@param ... any @自定义事件参数
function UGCGenericMessageSystem.BroadcastUserDefinedGlobalMessage(Message, ...) end

---解除监听对象以及全局的广播信息
---生效范围：服务器&客户端
---@param Listener UObject|number @监听对象/监听ID
---@param Message string @广播信息的索引，后续的广播和监听都通过索引进行操作
function UGCGenericMessageSystem.UnListenMessage(Listener, Message) end

---注册自定义消息
---生效范围：服务器&客户端
---@param Message string @广播信息的索引，后续的广播和监听都通过索引进行操作
---@return string @返回注册后的Message，与输入的Message相同
function UGCGenericMessageSystem.RegisterUserDefinedMessage(Message) end