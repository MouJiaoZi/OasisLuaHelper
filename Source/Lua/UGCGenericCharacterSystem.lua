---@meta

---怪物系统接口库
---@class UGCGenericCharacterSystem
UGCGenericCharacterSystem = {}

---强制杀死怪物
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
function UGCGenericCharacterSystem.KillGenericCharacter(GenericCharacter) end

---小怪是否存活
---生效范围：服务器&客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return boolean @小怪是否存活
function UGCGenericCharacterSystem.IsAlive(GenericCharacter) end

---目标是否为小怪
---生效范围：服务器&客户端
---@param Target AActor @目标
---@return boolean @是否为小怪
function UGCGenericCharacterSystem.IsGenericCharacter(Target) end

---获取小怪血量
---生效范围：服务器&客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return number @血量
function UGCGenericCharacterSystem.GetHealth(GenericCharacter) end

---获取小怪血量上限
---生效范围：服务器&客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return number @血量上限
function UGCGenericCharacterSystem.GetHealthMax(GenericCharacter) end

---设置小怪血量
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param Health number @血量
function UGCGenericCharacterSystem.SetHealth(GenericCharacter, Health) end

---设置小怪血量上限
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param HealthMax number @血量上限
function UGCGenericCharacterSystem.SetHealthMax(GenericCharacter, HealthMax) end

---启动移动能力
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
function UGCGenericCharacterSystem.EnableMovement(GenericCharacter) end

---关闭移动能力
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
function UGCGenericCharacterSystem.DisableMovement(GenericCharacter) end

---设置避障组
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param AvoidanceGroup EGenericAvoidanceGroup @避障组
function UGCGenericCharacterSystem.SetAvoidanceGroup(GenericCharacter, AvoidanceGroup) end

---移动到目标位置(注意不要和行为树移动冲突)
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param InDestination FVector @目的地
---@param InStopRadius number @停止距离
function UGCGenericCharacterSystem.MoveTo(GenericCharacter, InDestination, InStopRadius) end

---停止移动(注意不要和行为树移动冲突)
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
function UGCGenericCharacterSystem.StopMove(GenericCharacter) end

---获取当前怪物动量
---生效范围：服务器/客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return FVector @当前动量
function UGCGenericCharacterSystem.GetCurrentVelocity(GenericCharacter) end

---设置最大移动速度
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param InSpeed number @速度
---@param Reason number @原因
function UGCGenericCharacterSystem.SetMaxSpeed(GenericCharacter, InSpeed, Reason) end

---获取最大移动速度
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return number @最大移动速度
function UGCGenericCharacterSystem.GetMaxSpeed(GenericCharacter) end

---获取默认最大移动速度
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return number @默认最大移动速度
function UGCGenericCharacterSystem.GetDefaultMaxSpeed(GenericCharacter) end

---获取当前仇恨目标
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return AActor @当前仇恨对象
function UGCGenericCharacterSystem.GetTargetEnemy(GenericCharacter) end

---运行指定行为树
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param BehaviorTreePath string @行为树路径
function UGCGenericCharacterSystem.RunBehavior(GenericCharacter, BehaviorTreePath) end

---停止当前行为树
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param Reason string @原因
function UGCGenericCharacterSystem.StopBehavior(GenericCharacter, Reason) end

---覆盖行为树设置并重新启动行为树
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param InBehaviorTreeSetting FBehaviorTreeReflectSetting @新的行为树设置
function UGCGenericCharacterSystem.OverrideBehaviorTreeSetting(GenericCharacter, InBehaviorTreeSetting) end

---获取当前行为树设置
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@return FBehaviorTreeReflectSetting
function UGCGenericCharacterSystem.GetBehaviorTreeSetting(GenericCharacter) end

---暂停当前行为树
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param Reason string @原因
function UGCGenericCharacterSystem.PauseBehavior(GenericCharacter, Reason) end

---继续当前行为树
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param Reason string @原因
function UGCGenericCharacterSystem.ResumeBehavior(GenericCharacter, Reason) end

---播放蒙太奇动画
---生效范围：客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param AnimMontage UAnimMontage @蒙太奇动画
---@param InPlayRate number @播放速率
function UGCGenericCharacterSystem.PlayAnimMontage(GenericCharacter, AnimMontage, InPlayRate) end

---通过Tag播放蒙太奇动画
---生效范围：客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param AnimGameplayTag FGameplayTag @蒙太奇动画Tag
---@param InPlayRate number @播放速率
function UGCGenericCharacterSystem.PlayAnimMontageByTag(GenericCharacter, AnimGameplayTag, InPlayRate) end

---覆盖指定Tag的动画资源
---生效范围：客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param Data FGenericCharacterAnimOverrideData @覆写数据
---@param BlendTime number @混合时间
function UGCGenericCharacterSystem.AddOverrideAnimAsset(GenericCharacter, Data, BlendTime) end

---移除覆盖指定Tag的动画资源
---生效范围：客户端
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param Data FGenericCharacterAnimOverrideData @覆写数据
---@param BlendTime number @混合时间
function UGCGenericCharacterSystem.RemoveOverrideAnimAsset(GenericCharacter, Data, BlendTime) end

---是否启用LogicPart
---生效范围：服务器
---@param GenericCharacter AUGCGenericCharacter @怪物
---@param InLogicPartTag FGameplayTag @LogicPart Tag
---@return boolean @是否启用
function UGCGenericCharacterSystem.IsEnableLogicPart(GenericCharacter, InLogicPartTag) end

---在目标位置刷一个怪
---生效范围：服务器
---@param WorldContextObject UObject @世界上下文对象
---@param GenericCharacterClass UClass @怪物的类
---@param Location FVector @刷怪的位置
---@param Rotation FRotator @刷出怪物的朝向
---@return AActor @刷出的怪物
function UGCGenericCharacterSystem.SpawnGenericCharacter(WorldContextObject, GenericCharacterClass, Location, Rotation) end

---在目标位置根据怪物组表中的ID刷一个怪
---生效范围：服务器
---@param WorldContextObject UObject @世界上下文对象
---@param GroupID number @怪物组表中的ID
---@param Location FVector @刷怪的位置
---@param Rotation FRotator @刷出怪物的朝向
---@return AActor @刷出的怪物
function UGCGenericCharacterSystem.SpawnGenericCharacterByGroup(WorldContextObject, GroupID, Location, Rotation) end

---在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪
---生效范围：服务器
---@param WorldContextObject UObject @世界上下文对象
---@param GenericCharacterClass UClass @怪物的类
---@param Location FVector @刷怪范围的中心位置
---@param Rotation FRotator @刷出怪物的朝向
---@param Range number @刷怪圆形范围的半径
---@param HeightRange number @怪物刷出位置与中心位置的最大高度差
---@param Count number @刷出怪物的数量
---@return table @刷出怪物的列表
function UGCGenericCharacterSystem.RangeSpawnGenericCharacters(WorldContextObject, GenericCharacterClass, Location, Rotation, Range, HeightRange, Count) end

---在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪，怪物类型由怪物组表ID指定
---生效范围：服务器
---@param WorldContextObject UObject @世界上下文对象
---@param GroupID number @怪物组表中的ID
---@param Location FVector @刷怪范围的中心位置
---@param Rotation FRotator @刷出怪物的朝向
---@param Range number @刷怪圆形范围的半径
---@param HeightRange number @怪物刷出位置与中心位置的最大高度差
---@param Count number @刷出怪物的数量
---@return table @刷出怪物的列表
function UGCGenericCharacterSystem.RangeSpawnGenericCharactersByGroup(WorldContextObject, GroupID, Location, Rotation, Range, HeightRange, Count) end

---在指定位置的圆形范围中每隔一定时间寻找合适的地面刷出一定数量的怪
---生效范围：服务器
---@param WorldContextObject UObject @世界上下文对象
---@param GenericCharacterClass UClass @怪物类
---@param Location FVector @刷怪范围的中心位置
---@param Rotation FRotator @刷出怪物的朝向
---@param Range number @刷怪圆形范围的半径
---@param HeightRange number @怪物刷出位置与中心位置的最大高度差
---@param MinSpawnCountPerLoop number @每次刷怪的最小数量
---@param MaxSpawnCountPerLoop number @每次刷怪的最大数量
---@param LoopTimes number @总的刷怪轮数
---@param IntervalMinTime number @刷怪轮次间的最小时间间隔
---@param IntervalMaxTime number @刷怪轮次间的最大时间间隔
---@param FirstDelayTime number @从接口调用到首次刷怪的延迟时间
---@param Callback function @回调函数
---@param CallbackSelf table @回调函数的调用主体，静态函数时留空
function UGCGenericCharacterSystem.RangeSpawnGenericCharactersOnTime(WorldContextObject, GenericCharacterClass, Location, Rotation, Range, HeightRange, MinSpawnCountPerLoop, MaxSpawnCountPerLoop, LoopTimes, IntervalMinTime, IntervalMaxTime, FirstDelayTime, Callback, CallbackSelf) end

---在指定位置的圆形范围中每个一定时间寻找合适的地面刷出一定数量的怪
---生效范围：服务器
---@param WorldContextObject UObject @世界上下文对象
---@param GroupID number @怪物组表中的ID
---@param Location FVector @刷怪范围的中心位置
---@param Rotation FRotator @刷出怪物的朝向
---@param Range number @刷怪圆形范围的半径
---@param HeightRange number @怪物刷出位置与中心位置的最大高度差
---@param MinSpawnCountPerLoop number @每次刷怪的最小数量
---@param MaxSpawnCountPerLoop number @每次刷怪的最大数量
---@param LoopTimes number @总的刷怪轮数
---@param IntervalMinTime number @刷怪轮次间的最小时间间隔
---@param IntervalMaxTime number @刷怪轮次间的最大时间间隔
---@param FirstDelayTime number @从接口调用到首次刷怪的延迟时间
---@param Callback function @回调函数
---@param CallbackSelf table @回调函数的调用主体，静态函数时留空
function UGCGenericCharacterSystem.RangeSpawnGenericCharactersByGroupOnTime(WorldContextObject, GroupID, Location, Rotation, Range, HeightRange, MinSpawnCountPerLoop, MaxSpawnCountPerLoop, LoopTimes, IntervalMinTime, IntervalMaxTime, FirstDelayTime, Callback, CallbackSelf) end

---获取角色骨骼里所有的PartTypeSocket
---生效范围：服务器&客户端
---@param Character ACharacter @角色
---@return UPartTypeSocket[] @PartTypeSocket列表
function UGCGenericCharacterSystem.GetPartTypeSockets(Character) end

---获取Actor的BlackboardComponent
---生效范围：服务器
---@param Actor AActor @Actor
---@return UBlackboardComponent @BlackboardComponent
function UGCGenericCharacterSystem.GetBlackboard(Actor) end