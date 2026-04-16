---@meta

---【废弃】怪物系统接口库
---@deprecated @UGCMobPawnSystem is deprecated and could be removed later, please use UGCGenericCharacterSystem instead
---@class UGCMobPawnSystem
UGCMobPawnSystem = {}

---【废弃】在目标位置刷一个怪
---生效范围：服务器
---@deprecated @UGCMobPawnSystem is deprecated and could be removed later, please use UGCGenericCharacterSystem instead
---@param WorldContextObject UObject @世界上下文对象
---@param MobClass UClass @怪物的类
---@param Location FVector @刷怪的位置
---@param Rotation FRotator @刷出怪物的朝向
---@return AActor @刷出的怪物
function UGCMobPawnSystem.SpawnMob(WorldContextObject, MobClass, Location, Rotation) end

---【废弃】在目标位置根据怪物组表中的ID刷一个怪
---生效范围：服务器
---@deprecated @UGCMobPawnSystem is deprecated and could be removed later, please use UGCGenericCharacterSystem instead
---@param WorldContextObject UObject @世界上下文对象
---@param MobGroupID number @怪物组表中的ID
---@param Location FVector @刷怪的位置
---@param Rotation FRotator @刷出怪物的朝向
---@return AActor @刷出的怪物
function UGCMobPawnSystem.SpawnMobByMobGroup(WorldContextObject, MobGroupID, Location, Rotation) end

---【废弃】在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪
---生效范围：服务器
---@deprecated @UGCMobPawnSystem is deprecated and could be removed later, please use UGCGenericCharacterSystem instead
---@param WorldContextObject UObject @世界上下文对象
---@param MobClass UClass @怪物的类
---@param Location FVector @刷怪范围的中心位置
---@param Rotation FRotator @刷出怪物的朝向
---@param Range number @刷怪圆形范围的半径
---@param HeightRange number @怪物刷出位置与中心位置的最大高度差
---@param Count number @刷出怪物的数量
---@return table @刷出怪物的列表
function UGCMobPawnSystem.RangeSpawnMobs(WorldContextObject, MobClass, Location, Rotation, Range, HeightRange, Count) end

---【废弃】在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪，怪物类型由怪物组表ID指定
---生效范围：服务器
---@deprecated @UGCMobPawnSystem is deprecated and could be removed later, please use UGCGenericCharacterSystem instead
---@param WorldContextObject UObject @世界上下文对象
---@param MobGroupID number @怪物组表中的ID
---@param Location FVector @刷怪范围的中心位置
---@param Rotation FRotator @刷出怪物的朝向
---@param Range number @刷怪圆形范围的半径
---@param HeightRange number @怪物刷出位置与中心位置的最大高度差
---@param Count number @刷出怪物的数量
---@return table @刷出怪物的列表
function UGCMobPawnSystem.RangeSpawnMobsByMobGroup(WorldContextObject, MobGroupID, Location, Rotation, Range, HeightRange, Count) end

---【废弃】在指定位置的圆形范围中每隔一定时间寻找合适的地面刷出一定数量的怪
---生效范围：服务器
---@deprecated @UGCMobPawnSystem is deprecated and could be removed later, please use UGCGenericCharacterSystem instead
---@param WorldContextObject UObject @世界上下文对象
---@param MobClass UClass @怪物类
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
function UGCMobPawnSystem.RangeSpawnMobsOnTime(WorldContextObject, MobClass, Location, Rotation, Range, HeightRange, MinSpawnCountPerLoop, MaxSpawnCountPerLoop, LoopTimes, IntervalMinTime, IntervalMaxTime, FirstDelayTime, Callback, CallbackSelf) end

---【废弃】在指定位置的圆形范围中每个一定时间寻找合适的地面刷出一定数量的怪
---生效范围：服务器
---@deprecated @UGCMobPawnSystem is deprecated and could be removed later, please use UGCGenericCharacterSystem instead
---@param WorldContextObject UObject @世界上下文对象
---@param MobGroupID number @怪物组表中的ID
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
function UGCMobPawnSystem.RangeSpawnMobsByMobGroupOnTime(WorldContextObject, MobGroupID, Location, Rotation, Range, HeightRange, MinSpawnCountPerLoop, MaxSpawnCountPerLoop, LoopTimes, IntervalMinTime, IntervalMaxTime, FirstDelayTime, Callback, CallbackSelf) end