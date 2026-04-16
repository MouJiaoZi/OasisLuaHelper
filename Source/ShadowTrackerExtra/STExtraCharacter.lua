---@meta

---@class ERandomLocType
---@field None number
---@field RelativeLoc number
---@field AbsoluteLoc number
ERandomLocType = {}


---@class FActivitySyncData
---@field bIsDuringActivity boolean
---@field bIsAttachedToActor boolean
---@field bIsMovementDisabled boolean
---@field AttachedOffsetLocation FVector
---@field AttachedOffsetRotation FRotator
---@field bUseSkinWeightProfile boolean
FActivitySyncData = {}


---@class FUnmannedVehicleSyncData
---@field eUAVUseType EUAVUseType
FUnmannedVehicleSyncData = {}


---@class FClientTeamerMaxKillerRecord
---@field PlayerName string
---@field bIsKiller boolean
FClientTeamerMaxKillerRecord = {}


---@class FExtractDamageParam
---@field KillTipsData FExtractDamageParamKillTipsData
---@field DamageTypeClass UDamageType
---@field HitBoneName string
FExtractDamageParam = {}


---@class FPawnStateChangeCDItem
---@field ToState EPawnState
---@field CD number
FPawnStateChangeCDItem = {}


---@class FPawnStateChangeCDItemArray
---@field Items ULuaArrayHelper<FPawnStateChangeCDItem>
FPawnStateChangeCDItemArray = {}


---@class FRepMovementWithCriticalFrame
---@field RepMovementData any
---@field ClientCriticalFrame number
FRepMovementWithCriticalFrame = {}


---@class FShootWeaponBulletHitData
---@field ShootWeaponWeakPtr ASTExtraShootWeapon
---@field BulletHitDataRepArray ULuaArrayHelper<FBulletHitInfoRepData>
---@field WeaponIndex number
FShootWeaponBulletHitData = {}


---@class FOnHandleHitByBullet : ULuaMulticastDelegate
FOnHandleHitByBullet = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Causer: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHandleHitByBullet:Add(Callback, Obj) end

---触发 Lua 广播
---@param Causer AActor
function FOnHandleHitByBullet:Broadcast(Causer) end


---@class FCharacterAnimEvent : ULuaMulticastDelegate
FCharacterAnimEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventMsg: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterAnimEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventMsg string
function FCharacterAnimEvent:Broadcast(EventMsg) end


---@class FOnCharacterStateInterrupt : ULuaMulticastDelegate
FOnCharacterStateInterrupt = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateInterrupt:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 number
function FOnCharacterStateInterrupt:Broadcast(Param1, Param2) end


---@class FOnCharacterStateInterruptWithRef : ULuaMulticastDelegate
FOnCharacterStateInterruptWithRef = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, state: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateInterruptWithRef:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param state number
function FOnCharacterStateInterruptWithRef:Broadcast(SelfRef, state) end


---@class FOnSetDisabledStateWithRef : ULuaMulticastDelegate
FOnSetDisabledStateWithRef = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, state: EPawnState, bNewDisabled: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSetDisabledStateWithRef:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param state EPawnState
---@param bNewDisabled boolean
function FOnSetDisabledStateWithRef:Broadcast(SelfRef, state, bNewDisabled) end


---@class FOnCharacterDynamicStateEnter : ULuaMulticastDelegate
FOnCharacterDynamicStateEnter = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, state: FGameplayTag) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterDynamicStateEnter:Add(Callback, Obj) end

---触发 Lua 广播
---@param state FGameplayTag
function FOnCharacterDynamicStateEnter:Broadcast(state) end


---@class FOnCharacterDynamicStateEnterWithRef : ULuaMulticastDelegate
FOnCharacterDynamicStateEnterWithRef = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, state: FGameplayTag) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterDynamicStateEnterWithRef:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param state FGameplayTag
function FOnCharacterDynamicStateEnterWithRef:Broadcast(SelfRef, state) end


---@class FOnCharacterStateEnter : ULuaMulticastDelegate
FOnCharacterStateEnter = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, state: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateEnter:Add(Callback, Obj) end

---触发 Lua 广播
---@param state EPawnState
function FOnCharacterStateEnter:Broadcast(state) end


---@class FOnCharacterStateEnterWithRefAndPK : ULuaMulticastDelegate
FOnCharacterStateEnterWithRefAndPK = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, SelfPlayerKey: number, state: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateEnterWithRefAndPK:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param SelfPlayerKey number
---@param state EPawnState
function FOnCharacterStateEnterWithRefAndPK:Broadcast(SelfRef, SelfPlayerKey, state) end


---@class FOnTargetCharacterStateEnter : ULuaMulticastDelegate
FOnTargetCharacterStateEnter = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, state: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTargetCharacterStateEnter:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param state EPawnState
function FOnTargetCharacterStateEnter:Broadcast(SelfRef, state) end


---@class FOnCharacterStateEnterWithRef : ULuaMulticastDelegate
FOnCharacterStateEnterWithRef = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, state: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateEnterWithRef:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param state EPawnState
function FOnCharacterStateEnterWithRef:Broadcast(SelfRef, state) end


---@class FOnCharacterStateInterruptBluePrint : ULuaMulticastDelegate
FOnCharacterStateInterruptBluePrint = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, State: EPawnState, InterruptedBy: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStateInterruptBluePrint:Add(Callback, Obj) end

---触发 Lua 广播
---@param State EPawnState
---@param InterruptedBy EPawnState
function FOnCharacterStateInterruptBluePrint:Broadcast(State, InterruptedBy) end


---@class FOnCharacterStatesChangeDelegate : ULuaSingleDelegate
FOnCharacterStatesChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStatesChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnCharacterStatesChangeDelegate:Execute() end


---@class FOnSimulateCharacterStateChangeDelegate : ULuaMulticastDelegate
FOnSimulateCharacterStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InCurStates: number, InPreStates: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimulateCharacterStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InCurStates number
---@param InPreStates number
function FOnSimulateCharacterStateChangeDelegate:Broadcast(InCurStates, InPreStates) end


---@class FOnAsyncLoadAnimMap : ULuaSingleDelegate
FOnAsyncLoadAnimMap = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: USubAnimInstanceMap) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAsyncLoadAnimMap:Bind(Callback, Obj) end

---执行委托
---@param Param1 USubAnimInstanceMap
function FOnAsyncLoadAnimMap:Execute(Param1) end


---@class FOnMoveBlockDelegate : ULuaMulticastDelegate
FOnMoveBlockDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, HitResult: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMoveBlockDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param HitResult FHitResult
function FOnMoveBlockDelegate:Broadcast(SelfRef, HitResult) end


---@class FOnOneShootDelegate : ULuaMulticastDelegate
FOnOneShootDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOneShootDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraWeapon
function FOnOneShootDelegate:Broadcast(Weapon) end


---@class FOnShootTargetActorChangedDelegate : ULuaMulticastDelegate
FOnShootTargetActorChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter, NewHitResult: FHitResult, OldHitResult: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnShootTargetActorChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
---@param NewHitResult FHitResult
---@param OldHitResult FHitResult
function FOnShootTargetActorChangedDelegate:Broadcast(SelfRef, NewHitResult, OldHitResult) end


---@class FUGC_OnHPChangedDelegate : ULuaMulticastDelegate
FUGC_OnHPChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HP: number, HPChanged: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGC_OnHPChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HP number
---@param HPChanged number
function FUGC_OnHPChangedDelegate:Broadcast(HP, HPChanged) end


---@class FUGC_OnTakeDamageDelegate : ULuaMulticastDelegate
FUGC_OnTakeDamageDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Damage: number, EventInstigator: AController, DamageEvent: FDamageEvent, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGC_OnTakeDamageDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Damage number
---@param EventInstigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function FUGC_OnTakeDamageDelegate:Broadcast(Damage, EventInstigator, DamageEvent, DamageCauser) end


---@class FOnBulletHitDamageModify : ULuaSingleDelegate
FOnBulletHitDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, Damage: number, DamageCauser: AActor, BulletHitInfo: FBulletHitInfoUploadData) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletHitDamageModify:Bind(Callback, Obj) end

---执行委托
---@param Damage number
---@param DamageCauser AActor
---@param BulletHitInfo FBulletHitInfoUploadData
function FOnBulletHitDamageModify:Execute(Damage, DamageCauser, BulletHitInfo) end


---@class FOnBulletHitInfoModify : ULuaSingleDelegate
FOnBulletHitInfoModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, DamageCauser: AActor, InBulletHitInfo: FBulletHitInfoUploadData, OutBulletHitInfo: FBulletHitInfoUploadData) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletHitInfoModify:Bind(Callback, Obj) end

---执行委托
---@param DamageCauser AActor
---@param InBulletHitInfo FBulletHitInfoUploadData
---@param OutBulletHitInfo FBulletHitInfoUploadData
function FOnBulletHitInfoModify:Execute(DamageCauser, InBulletHitInfo, OutBulletHitInfo) end


---@class FOnBulletHitActor : ULuaMulticastDelegate
FOnBulletHitActor = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageVictim: AActor, BulletHitInfo: FBulletHitInfoUploadData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletHitActor:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageVictim AActor
---@param BulletHitInfo FBulletHitInfoUploadData
function FOnBulletHitActor:Broadcast(DamageVictim, BulletHitInfo) end


---@class FOnRepRCRChange : ULuaMulticastDelegate
FOnRepRCRChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepRCRChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraCharacter
function FOnRepRCRChange:Broadcast(SelfRef) end


---@class FFinalDamageModify : ULuaSingleDelegate
FFinalDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, Victim: AActor, Damage: number, DamageType: UDamageType, InstigatedBy: AController, DamageCauser: AActor, DamageTypeID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFinalDamageModify:Bind(Callback, Obj) end

---执行委托
---@param Victim AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
---@param DamageTypeID number
function FFinalDamageModify:Execute(Victim, Damage, DamageType, InstigatedBy, DamageCauser, DamageTypeID) end


---@class FSubAnimInstanceMapChange : ULuaSingleDelegate
FSubAnimInstanceMapChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSubAnimInstanceMapChange:Bind(Callback, Obj) end

---执行委托
function FSubAnimInstanceMapChange:Execute() end


---@class FOnDoSomethingDelaySomeFramesDelegate : ULuaSingleDelegate
FOnDoSomethingDelaySomeFramesDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDoSomethingDelaySomeFramesDelegate:Bind(Callback, Obj) end

---执行委托
function FOnDoSomethingDelaySomeFramesDelegate:Execute() end


---@class FOnCharacterPostNetInitDelegate : ULuaSingleDelegate
FOnCharacterPostNetInitDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterPostNetInitDelegate:Bind(Callback, Obj) end

---执行委托
function FOnCharacterPostNetInitDelegate:Execute() end


---@class FOnCharacterChangePoseDelegate : ULuaMulticastDelegate
FOnCharacterChangePoseDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewPose: LastPose) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterChangePoseDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewPose LastPose
function FOnCharacterChangePoseDelegate:Broadcast(NewPose) end


---@class FOnCharacterDeathDelegate : ULuaMulticastDelegate
FOnCharacterDeathDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeadCharacter: ASTExtraCharacter, Killer: AController, DamageCauser: AActor, KillingHitInfo: FHitResult, KillingHitImpulseDir: FVector, KillingHitDamageTypeID: number, DamageTypeClass: USTExtraDamageType, IsHeadShotDamage: boolean, Context: FGameMagnitudeContext) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterDeathDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageTypeID number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function FOnCharacterDeathDelegate:Broadcast(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageTypeID, DamageTypeClass, IsHeadShotDamage, Context) end


---@class FOnCharacterKillDelegate : ULuaMulticastDelegate
FOnCharacterKillDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeadCharacter: ASTExtraCharacter, Killer: AController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterKillDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
function FOnCharacterKillDelegate:Broadcast(DeadCharacter, Killer) end


---@class FPlayerDyncmicCondition : ULuaSingleDelegate
FPlayerDyncmicCondition = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string, Param3: string, Param4: string, RelativeObject: UObject) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerDyncmicCondition:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
---@param Param3 string
---@param Param4 string
---@param RelativeObject UObject
function FPlayerDyncmicCondition:Execute(Param1, Param2, Param3, Param4, RelativeObject) end


---@class FOnCharacterRecycledEvent : ULuaMulticastDelegate
FOnCharacterRecycledEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, RecycledCharacter: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterRecycledEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param RecycledCharacter ASTExtraCharacter
function FOnCharacterRecycledEvent:Broadcast(RecycledCharacter) end


---@class UPawnStateSwitchCDCfg: UObject
---@field PawnStateCDMap ULuaMapHelper<number, number>
---@field ConfigStates ULuaSetHelper<EPawnState>
local UPawnStateSwitchCDCfg = {}


---角色类
---@class ASTExtraCharacter: AUAECharacter, IUAESkillInterface, ISTBaseBuffCarrierInterface, IDamageableInterface, IWeaponOwnerInterface, IWeaponOwnerProxyFactory, IAttrModifyInterface, IItemGenerateInterface, IObjectPoolInterface, IActorHiddenInterface, ILaserSeekAndLockOwnerInterface, IBulletHitInterface, IGameAttributeCarrierInterface, IPickerEffectInterface, ICustomMovementInterface, IGenericCharacterInterface, ITargetFilterInfoProviderInterface, IStateAbilityInterface, IOwnershipChainInterface, IFieldApplyInterface, ICharacterTypeInterface
---@field DefaultObjectPoolSize number
---@field OnRecycledEvent FOnCharacterRecycledEvent
---@field AdditiveVelocity FVector @在速度场中移动时模拟端需要叠加的速度
---@field ReplicatedMovementCriticalFrame any @Used for replication of our RootComponent's position and velocity
---@field OnHandleHitByBullet FOnHandleHitByBullet
---@field OnDeath FOnCharacterDeathDelegate
---@field OnExtraCharacterKill FOnCharacterKillDelegate
---@field OnCharacterStatesChange FOnCharacterStatesChangeDelegate
---@field OnSimulateCharacterStatesChange FOnSimulateCharacterStateChangeDelegate
---@field OnCharacterPostNetInit FOnCharacterPostNetInitDelegate
---@field MonsterID number
---@field CharacterAnimEventDelegate FCharacterAnimEvent
---@field CanMoveNavLinkTypeList ULuaArrayHelper<ENavLinkType>
---@field CanMoveNavLinkExtendedFlagList ULuaSetHelper<ENavLinkExtendedFlag>
---@field CanNotMoveNavLinkDirectionList ULuaArrayHelper<ENavLinkMoveDirection>
---@field bInvincible boolean
---@field DamageableGameObjectTypeList ULuaArrayHelper<EDamageableGameObjectType>
---@field Health number
---@field HealthAddScale number
---@field HealthMax number
---@field SkillCDRecoverRate FGameAttributeProperty
---@field BreathRecoverHealthRate number
---@field SignalHP number
---@field LastRepSignalHP number
---@field PreSignalHP number
---@field PreviousSignalHP number
---@field SignalHPRatio number
---@field SignalHPMax number
---@field SignalHPRecoverCDMax number
---@field SignalHPRecoverSpeed number
---@field CurSignalHPRecoverCD number
---@field bCurSignalHPIsFullOrRecovering boolean
---@field EnergyBuffListName string
---@field ResetSignalHP_FatalDamage number
---@field ResetSignalHP_Rescued number
---@field CheckCirclePainDeltaTimeMax number
---@field DefaultSpeedValue number
---@field SpeedValue number
---@field SpeedScale number
---@field DynamicWeaponSpeedScaleAdditiveModifyOp EAttrOperator
---@field DynamicWeaponSpeedScaleAdditiveModifyValue number
---@field SpeedWeaponModuleModifier number
---@field SwimSpeedDynamicScale number
---@field BulletBlockComponentTag string
---@field bDead number
---@field bHideAllPrimitiveOnDead number
---@field PawnStateRelatedBuffMap ULuaMapHelper<string, EPawnState>
---@field TeamNum ETeamNumber
---@field OnDoSomethingDelaySomeFrames FOnDoSomethingDelaySomeFramesDelegate
---@field bUseModifiedTargetLocIfNeeded boolean @Picker相关
---@field bCanBePickByPicker boolean
---@field VehicleVelocitySafety FVector
---@field VelocitySafety FVector
---@field JoystickInputStateSafety FVector
---@field threatenValue number
---@field Temperature number
---@field TemperatureMax number
---@field TemperatureMin number
---@field bResetVisibilityByDelayHidden boolean
---@field ComponentsVisibilityInfo ULuaMapHelper<USceneComponent, boolean>
---@field PawnStateCDCfgClsPtr UPawnStateSwitchCDCfg
---@field PawnStateCDCfgCls UPawnStateSwitchCDCfg
---@field FinalDamageModify FFinalDamageModify
---@field DamageNotifyDelegate FDamageNotifyDelegate
---@field FallDownNotifyDelegate FDamageNotifyDelegate
---@field DeadNotifyDelegate FDamageNotifyDelegate
---@field ModifyDamageDelegate FModifyDamageDelegate
---@field TakeDamageLogicInClientDelegate FTakeDamageLogicInClient
---@field CurrentUnmannedVehicleSyncData FUnmannedVehicleSyncData
---@field LastUnmannedVehicleSyncData FUnmannedVehicleSyncData
---@field Redundant_BuffSyncList ULuaArrayHelper<FUTBuffSyncData>
---@field Redundant_ServerBuffString string
---@field EnableStatesInterruptRPC boolean
---@field DynamicStateEnterHandle FOnCharacterDynamicStateEnter
---@field DynamicStateEnterHandleWithRef FOnCharacterDynamicStateEnterWithRef
---@field DynamicStateLeaveHandle FOnCharacterDynamicStateEnter
---@field DynamicStateInterruptedHandle FOnCharacterDynamicStateEnter
---@field StateInterruptedHandlerBP FOnCharacterStateInterruptBluePrint
---@field StateEnterHandler FOnCharacterStateEnter
---@field TargetStateEnterHandler FOnTargetCharacterStateEnter
---@field StateLeaveHandler FOnCharacterStateEnter
---@field TargetStateLeaveHandler FOnTargetCharacterStateEnter
---@field OnPawnStateEnterHandler FOnCharacterStateEnter
---@field OnPawnStateLeaveHandler FOnCharacterStateEnter
---@field OnPawnStateEnterWithRefHandler FOnCharacterStateEnterWithRefAndPK
---@field OnPawnStateLeaveWithRefHandler FOnCharacterStateEnterWithRefAndPK
---@field PawnStateRepSyncData FReplicatedPawnStates
---@field LastRepPawnStateRepSyncData FReplicatedPawnStates
---@field SimplePawnStateRepData FSimplePawnStateRepData
---@field OnPawnStateDisabled FOnCharacterStateEnter
---@field OnPawnStateEnabled FOnCharacterStateEnter
---@field OnPawnStateDisabledChange FOnSetDisabledStateWithRef
---@field OnPawnStateDisabledReset FOnTargetCharacterStateEnter
---@field OnPlayerPoseChange FOnCharacterChangePoseDelegate
---@field OnPlayerPoseChange_Animation FOnCharacterChangePoseDelegate
---@field bIsGunADS boolean
---@field Indoor boolean
---@field CharacterInDoorStateChanged FCharacterInDoorStateChanged
---@field ShootTargetHitResult FHitResult
---@field FirstShootWeaponBulletHitData FShootWeaponBulletHitData
---@field SecondShootWeaponBulletHitData FShootWeaponBulletHitData
---@field ThirdShootWeaponBulletHitData FShootWeaponBulletHitData
---@field OnShootTargetActorChangedDelegate FOnShootTargetActorChangedDelegate
---@field OnOneShootDelegate FOnOneShootDelegate
---@field bAIConsumeGrenadeItem boolean
---@field CompVisionOpDis number
---@field CompVisionOpDelay number
---@field CheckVisionOpMeshMissInterval number
---@field bHasAppliedVisionCompOp boolean
---@field CurCheckVisionOpMeshMissTime number
---@field bHasReportRevertVisionOpMeshError boolean
---@field bHasReportCheckVisionOpMeshMiss boolean
---@field CurPlayerWeaponAbsoluteCheckInterval number
---@field CurPlayerWeaponAbsoluteCheckCnt number
---@field bPlayerWeaponAbsoluteCheckReportFinished boolean
---@field CharacterCompOutOfVisionOptimizationDataMap ULuaMapHelper<USceneComponent, FCharacterCompOutOfVisionOptimizationItem>
---@field DamageTypeSet ULuaSetHelper<EDamageType>
---@field bShowTeammateVoice boolean
---@field PawnStatesExtend string
---@field bIsLocalAutonomousControlled boolean
---@field bIsInitialLocalAutonomous boolean
---@field bEnableWrappedLightBeam boolean
---@field GravityScaleAuthorized number
---@field bShouldCheckAttachedParentIsNull boolean
---@field ActicitySyncData FActivitySyncData
---@field bDisableFaceRotation boolean
---@field TurnAroundViewFocusData FFocusTargetItem
---@field bShouldDisableGunValidation boolean
---@field SubAnimInstanceMap USubAnimInstanceMap
---@field SubAnimInstanceMapChange FSubAnimInstanceMapChange
---@field UsedVaultCompIndex number
---@field LastCheckCanVaultTime number
---@field bLastCheckCanVaultResult boolean
---@field VaultRepData FVaultRepData
---@field LastVaultRepData FVaultRepData
---@field PlayerInitTimestamp number
---@field IsRCRRelevantForConnection boolean
---@field RCRDSNotifyLoction FVector
---@field OnRepRCRRelevantChangeEvent FOnRepRCRChange
---@field RCRCheckMinViewCos number
---@field RCRViewCosDelayTimeMin number
---@field RCRViewCosDelayTimeMax number
---@field RCROutViewCheckTime number
---@field RCRCheckMinDistanceSquared number
---@field RCRCheckMaxDistanceSquared number
---@field RCRClientRandomXYMin number
---@field RCRClientRandomXYMax number
---@field RCRDSCheckProneSprintCD number
---@field RCRDSCheckProneWalkCD number
---@field RCRDSCheckSprintCD number
---@field RCRDSCheckWalkCD number
---@field RCRDSCheckDyingWalkCD number
---@field RCRNotReleventCheckTime number
---@field RCRModifyLargeBuildingBoxDisSquared number
---@field RCRModifyMediumBuildingBoxDisSquared number
---@field RCRLargeBuildingBoxMultiple number
---@field RCRMediumBuildingBoxMultiple number
---@field RCRModifyLargeLandBoxDisSquared number
---@field RCRModifyMediumLandBoxDisSquared number
---@field RCRLargeLandBoxMultiple number
---@field RCRMediumLandBoxMultiple number
---@field RCRDSContinuousLineTraceFrequency number
---@field IsTrueSightRelevantForConnection boolean
---@field OnMoveBlockDelegate FOnMoveBlockDelegate
---@field InheritFeatureComs ULuaArrayHelper<UFeatureCustomModule>
---@field featureComs ULuaArrayHelper<UFeatureCustomModule>
---@field RunTimeFeatureComsDirty boolean
---@field RunTimeFeatureComs ULuaArrayHelper<UFeatureCustomModule>
---@field TickedRunTimeFeatureComsDirty boolean
---@field TickedRunTimeFeatureComs ULuaArrayHelper<UFeatureCustomModule>
---@field UGC_OnHPChangedDelegate FUGC_OnHPChangedDelegate @Delegate 生效范围SC 怪物血量变化 @param HP 当前血量 @param HPChanged 血量变化值
---@field UGC_OnTakeDamageDelegate FUGC_OnTakeDamageDelegate @Delegate 生效范围S 受到伤害后 @param Damage 当前伤害值， @param Instigator 造成伤害的玩家 @param DamageEvent 伤害类型 @param DamageCauser 把该角色淘汰的玩家
---@field OnBulletHitDataModifyEvent FOnBulletHitInfoModify
---@field OnBulletHitActor FOnBulletHitActor
---@field OnBulletHitDamageModifyEvent FOnBulletHitDamageModify
---@field OnBulletHitBreakthroughModifyEvent FOnBulletHitDamageModify
---@field bEnableDebugServiceInfo boolean
---@field BehaviorServiceDebugInfo string
---@field CurveRootMotionRepData FCurveRootMotionRepData
---@field CustomMovementOwnerRepDataNew FCustomMovementOwnerRepDataNew
---@field CustomMovementSimulatorRepDataNew FCustomMovementSimulatorRepDataNew
---@field CustomMovementRepData FCustomMovementRepData
---@field CustomMovementSimulateRepData FCustomSimulateMovementRepData
---@field GamePlayTagCustomMovementModePairs FGamePlayTagCustomMovementModePairs
---@field PawnStateRelationOverriderList ULuaArrayHelper<UPawnStateRelationOverrider>
---@field CachePlayerDetailInfo string
local ASTExtraCharacter = {}

---@return string
function ASTExtraCharacter:GetToString() end

---@param Subtitle string
---@return string
function ASTExtraCharacter:ToStringHasLocation(Subtitle) end

---@param Subtitle string
---@return string
function ASTExtraCharacter:ToStringHasExtendInfo(Subtitle) end

---@param Subtitle string
---@param MiddleSimplyStr string
---@return string
function ASTExtraCharacter:ToStringHasExtendInfoHasMiddleSimply(Subtitle, MiddleSimplyStr) end

---@param NewController AController
function ASTExtraCharacter:PossessedBy(NewController) end

---@return string
function ASTExtraCharacter:GetDebugDrawString() end

function ASTExtraCharacter:LuaOnRecycled() end

function ASTExtraCharacter:BPOnRespawned() end

function ASTExtraCharacter:BPOnRecycled() end

function ASTExtraCharacter:OnRep_ReplicatedMovement() end

function ASTExtraCharacter:OnRep_ReplicatedBasedMovement() end

---@param ModifyID string
---@param ModifyEnable boolean
---@param AttrName string
---@param ModifierOp EAttrOperator
---@param ModifierValue number
---@param IsBool boolean
---@param IsClientSimulate boolean
function ASTExtraCharacter:SetAttrValueByAttrModify(ModifyID, ModifyEnable, AttrName, ModifierOp, ModifierValue, IsBool, IsClientSimulate) end

---@return number
function ASTExtraCharacter:GetScaledSpeed() end

---@return string
function ASTExtraCharacter:GetPlayerNameSafety() end

---@return string
function ASTExtraCharacter:GetRemarkNameSafety() end

---@return string
function ASTExtraCharacter:GetPlayerIdentifierString() end

---@return boolean
function ASTExtraCharacter:IsAlive() end

---@return boolean
function ASTExtraCharacter:IsHealthyAlive() end

function ASTExtraCharacter:GetDamageableGameObjectType() end

---@return EObserverType
function ASTExtraCharacter:GetObserverType() end

---@return string
function ASTExtraCharacter:GetPlayerDetailInfo() end

---@param Start FVector
---@param End FVector
---@param Color FColor
---@param LifeTime number
function ASTExtraCharacter:RPC_DrawDebug_Line(Start, End, Color, LifeTime) end

---@param Center FVector
---@param Radius number
---@param Color FColor
---@param LifeTime number
function ASTExtraCharacter:RPC_DrawDebug_Sphere(Center, Radius, Color, LifeTime) end

---@param Center FVector
---@param HalfHeight number
---@param Radius number
---@param Rotation FQuat
---@param Color FColor
---@param LifeTime number
function ASTExtraCharacter:RPC_DrawDebug_Capsule(Center, HalfHeight, Radius, Rotation, Color, LifeTime) end

---@param Invincible boolean
function ASTExtraCharacter:SetInvincible(Invincible) end

function ASTExtraCharacter:OnRep_IsInvincible() end

function ASTExtraCharacter:OnBPIsInvincibleChange() end

---@param NewHealthMax number
---@param bAllowHealthShrink boolean
---@param bSyncSetHealth boolean
---@param Reason ERecoveryReasonType
function ASTExtraCharacter:SetHealthMax(NewHealthMax, bAllowHealthShrink, bSyncSetHealth, Reason) end

---@return number
function ASTExtraCharacter:GetSpeedScaleSafety() end

---@return number
function ASTExtraCharacter:GetSpeedScaleWithoutWeapon() end

function ASTExtraCharacter:CheckSignalHP() end

function ASTExtraCharacter:PostModifyHealthMaxOnServer() end

function ASTExtraCharacter:PostModifyHealthOnServer() end

---@param RecoverValue number
---@param RecoveryInstigator AController
---@param RecoveryCauser AActor
---@param RecoverTags ULuaArrayHelper<FGameplayTag>
---@return number
function ASTExtraCharacter:RecoverCharacterHealth(RecoverValue, RecoveryInstigator, RecoveryCauser, RecoverTags) end

---@param Vehicle ASTExtraVehicleBase
---@return boolean
function ASTExtraCharacter:CanEnterVehicle(Vehicle) end

function ASTExtraCharacter:RegistTickThreadSafeData() end

function ASTExtraCharacter:UnRegistTickThreadSafeData() end

function ASTExtraCharacter:DelayHidden() end

function ASTExtraCharacter:ResetVisibility() end

function ASTExtraCharacter:ResetVisibilityByDelayHidden() end

function ASTExtraCharacter:ReceiveChangeImpactEffectVolume() end

---@param ItemID number
---@param Times number
function ASTExtraCharacter:ReceiveStatisticsReloadTime(ItemID, Times) end

---@param PrevHealth number
function ASTExtraCharacter:OnRep_Health(PrevHealth) end

---@param PrevHealthAddScale number
function ASTExtraCharacter:OnRep_HealthAddScale(PrevHealthAddScale) end

---@param PrevHealthMax number
function ASTExtraCharacter:OnRep_HealthMax(PrevHealthMax) end

---@param PrevSkillCDRecoverRate FGameAttributeProperty
function ASTExtraCharacter:OnRep_SkillCDRecoverRate(PrevSkillCDRecoverRate) end

---@param PrevVal number
function ASTExtraCharacter:OnRep_SignalHP(PrevVal) end

---@param LastValue number
function ASTExtraCharacter:OnRep_Temperature(LastValue) end

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
---@param DamageEventFlags EDamageEventFlags
function ASTExtraCharacter:BPReceiveDamage(Damage, DamageType, InstigatedBy, DamageCauser, DamageEventFlags) end

function ASTExtraCharacter:OnRep_IsPossessed() end

---@param PrevHealth number
function ASTExtraCharacter:OnAttr_Health(PrevHealth) end

function ASTExtraCharacter:OnAttr_HealthMax() end

---Event
---获取伤害数字配置索引
---生效范围C
---@param Damage number @伤害数值
---@param bHeadShot boolean @是否爆头
---@param EventInstigator AController @伤害来源Controller
---@param DamageCauser AActor @伤害来源物体
---@param DamageTypeID number @伤害类型
---@return number
function ASTExtraCharacter:UGC_GetDamageNumberConfigIndex(Damage, bHeadShot, EventInstigator, DamageCauser, DamageTypeID) end

function ASTExtraCharacter:OnRep_Redundant_BuffSyncList() end

function ASTExtraCharacter:OnRep_Redundant_BuffServerString() end

---@param DynamicState FGameplayTag
---@return boolean
function ASTExtraCharacter:EnterDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@param bLeaveAll boolean
---@return boolean
function ASTExtraCharacter:LeaveDynamicState(DynamicState, bLeaveAll) end

---@param DynamicState FGameplayTag
---@return boolean
function ASTExtraCharacter:InterruptDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@return boolean
function ASTExtraCharacter:AllowDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@return boolean
function ASTExtraCharacter:HasDynamicState(DynamicState) end

---@param DynamicState FGameplayTag
---@return boolean
function ASTExtraCharacter:HasDynamicStateExact(DynamicState) end

---@param DynamicState FGameplayTag
---@param bNewDisabled boolean
---@param bInterrupt boolean
function ASTExtraCharacter:SetDynamicPawnStateDisabled(DynamicState, bNewDisabled, bInterrupt) end

---@param DynamicState FGameplayTag
---@return boolean
function ASTExtraCharacter:IsDynamicPawnStateDisabled(DynamicState) end

---@param DynamicState FGameplayTag
function ASTExtraCharacter:ResetDynamicPawnStateDisabled(DynamicState) end

---@param DynamicState FGameplayTag
---@return number
function ASTExtraCharacter:GetDynamicStateCount(DynamicState) end

---@param state EPawnState
---@param withLog boolean
---@return boolean
function ASTExtraCharacter:AllowState(state, withLog) end

---@param state EPawnState
---@return boolean
function ASTExtraCharacter:EnterState(state) end

---@param state EPawnState
---@return boolean
function ASTExtraCharacter:HasState(state) end

---@param state EPawnState
---@return boolean
function ASTExtraCharacter:LeaveState(state) end

---@param States ULuaArrayHelper<EPawnState>
---@return boolean
function ASTExtraCharacter:HasAnyOtherStates(States) end

---@param stateID number
---@param interruptedBy number
function ASTExtraCharacter:OnStateInterrupted(stateID, interruptedBy) end

---@param EnteredState EPawnState
function ASTExtraCharacter:OnStateEnter(EnteredState) end

---@param LeavedState EPawnState
function ASTExtraCharacter:OnStateLeave(LeavedState) end

---@param EnteredState EPawnState
function ASTExtraCharacter:CheckWeaponStateOnPlayerEnterNewState(EnteredState) end

---@return string
function ASTExtraCharacter:GetCurStateToString() end

---@param stateID number
---@param interruptedBy number
function ASTExtraCharacter:S2C_InterruptState(stateID, interruptedBy) end

---@return number
function ASTExtraCharacter:BP_GetCurrentStates() end

---@param PrevData FReplicatedPawnStates
function ASTExtraCharacter:OnRep_PawnStateRepSyncData(PrevData) end

---@param PawnState EPawnState
---@param bNewDisabled boolean
---@param bInterrupt boolean
function ASTExtraCharacter:SetPawnStateDisabled(PawnState, bNewDisabled, bInterrupt) end

---@param State EPawnState
---@return boolean
function ASTExtraCharacter:IsPawnStateDisabled(State) end

---@param State EPawnState
function ASTExtraCharacter:ResetPawnStateDisabled(State) end

---@param Weapon ASTExtraWeapon
---@param State EPawnState
---@return boolean
function ASTExtraCharacter:IsPawnStateDisabledByWeapon(Weapon, State) end

---@param Weapon ASTExtraWeapon
---@param State EPawnState
---@return boolean
function ASTExtraCharacter:CheckBackpackWeaponByStateOnServer(Weapon, State) end

---@param EventType EUAESkillEvent
function ASTExtraCharacter:TriggerCustomEvent_Implementation(EventType) end

---@param EntryEvent EUTSkillEntry
---@return boolean
function ASTExtraCharacter:TriggerEntryEvent_Implementation(EntryEvent) end

---@param SkillClass AUTSkill
---@param SkillEventType UTSkillEventType
---@return boolean
function ASTExtraCharacter:TriggerSkillEvent(SkillClass, SkillEventType) end

---@param SkillIndex number
---@param EventType EUAESkillEvent
---@return boolean
function ASTExtraCharacter:TriggerSkillCustomEvent(SkillIndex, EventType) end

---@param SkillID number
---@param EventTypeStr string
---@return boolean
function ASTExtraCharacter:TriggerStringEvent(SkillID, EventTypeStr) end

---@param itemHandle UItemHandleBase
function ASTExtraCharacter:PickupNewItem(itemHandle) end

---@param itemHandle UItemHandleBase
function ASTExtraCharacter:ClearOneItem(itemHandle) end

---@param Other APawn
---@return boolean
function ASTExtraCharacter:IsSameTeam(Other) end

---@param BuffName string
---@param BuffCauser AController
---@param LayerCount number
---@param BuffApplierActor AActor
---@param CauserActor AActor
---@return number
function ASTExtraCharacter:AddBuff(BuffName, BuffCauser, LayerCount, BuffApplierActor, CauserActor) end

---@param ShootWeapon ASTExtraShootWeapon
---@param Data FBulletHitInfoUploadData
---@return boolean
function ASTExtraCharacter:CanAddBuffOnBulletHit(ShootWeapon, Data) end

---@param BuffName string
---@param RemoveLayerOnly boolean
---@param BuffApplierActor AActor
---@return boolean
function ASTExtraCharacter:RemoveBuff(BuffName, RemoveLayerOnly, BuffApplierActor) end

---@param BuffName string
---@return boolean
function ASTExtraCharacter:HasBuff(BuffName) end

---@param BuffName string
---@param ExpirySecondsFromNow number
---@return boolean
function ASTExtraCharacter:SetBuffExpiry(BuffName, ExpirySecondsFromNow) end

---@param BuffName string
---@return number
function ASTExtraCharacter:GetBuffExpiry(BuffName) end

---@return string
function ASTExtraCharacter:GetBuffListString() end

---@param BuffName string
function ASTExtraCharacter:OnAddBuffServer(BuffName) end

---@param BuffName string
function ASTExtraCharacter:OnRemoveBuffServer(BuffName) end

---@param Tag FGameplayTag
function ASTExtraCharacter:OnBuffDynamicStateInterruptedServer(Tag) end

---@param BuffName string
---@param EmoteID number
function ASTExtraCharacter:Server_AddEmoteBuff(BuffName, EmoteID) end

---@param BuffName string
function ASTExtraCharacter:Server_RemoveEmoteBuff(BuffName) end

function ASTExtraCharacter:Server_RemoveAllEmoteBuff() end

---@return ENetRole
function ASTExtraCharacter:GetRoleSafety() end

function ASTExtraCharacter:OnRep_FirstShootWeaponBulletHitData() end

function ASTExtraCharacter:OnRep_SecondShootWeaponBulletHitData() end

function ASTExtraCharacter:OnRep_ThirdShootWeaponBulletHitData() end

---@param ShootWeapon ASTExtraShootWeapon
function ASTExtraCharacter:InitShootWeaponBulletHitData(ShootWeapon) end

---@param ShootWeapon ASTExtraShootWeapon
---@param BulletHitInfo ULuaArrayHelper<FBulletHitInfoRepData>
function ASTExtraCharacter:UpdateShootWeaponBulletHitData(ShootWeapon, BulletHitInfo) end

---@param ShootWeapon ASTExtraShootWeapon
function ASTExtraCharacter:ClearShootWeaponBulletHitData(ShootWeapon) end

---@param WeaponIndex number
function ASTExtraCharacter:DoRepShootWeaponBulletHitData(WeaponIndex) end

---@return boolean
function ASTExtraCharacter:GetIsAI() end

---@return boolean
function ASTExtraCharacter:StartFireCheck() end

---@return boolean
function ASTExtraCharacter:LocalStartFireCheck() end

---@param ShootWeapon ASTExtraShootWeapon
function ASTExtraCharacter:OnUnEquipCurrentWeapon(ShootWeapon) end

---@param ShootWeapon ASTExtraShootWeapon
---@param Reason EBattleItemDropReason
function ASTExtraCharacter:OnUnEquipWeaponWithParams(ShootWeapon, Reason) end

function ASTExtraCharacter:HidePlayerMagOnGunReload() end

---@return boolean
function ASTExtraCharacter:ReloadWeaponFilter() end

---@return boolean
function ASTExtraCharacter:GetClientHasFinishedReloadWeapon() end

---@return boolean
function ASTExtraCharacter:CheckDisableShootTarget() end

---@param actor AActor
---@return boolean
function ASTExtraCharacter:DisableImpactActor(actor) end

---@return boolean
function ASTExtraCharacter:IsLocalViewed() end

function ASTExtraCharacter:RevertAllCompOptimizationByVision() end

---@param bReport boolean
function ASTExtraCharacter:HandleBPPlayerWeaponAbsoluteCheckFailed(bReport) end

---@param bApply boolean
function ASTExtraCharacter:ApplyAllCompOptimizationByVision(bApply) end

---@param bApply boolean
function ASTExtraCharacter:PostApplyAllCompOptimizationByVision(bApply) end

---@param OwnerName string
---@param Comp USceneComponent
---@param bApply boolean
function ASTExtraCharacter:ApplyCompOptimizationByVision(OwnerName, Comp, bApply) end

---@param Damage number
---@param LatestHP number
---@param DamageEventPack FDamageEventPack
---@param DamageInstigatorPawn APawn
---@param EventInstigator AController
---@param EventFlags number
function ASTExtraCharacter:BroadcastSimulateTakeDamage(Damage, LatestHP, DamageEventPack, DamageInstigatorPawn, EventInstigator, EventFlags) end

---@param Damage number
---@param LatestHP number
---@param DamageEventPack FDamageEventPack
---@param DamageInstigatorPawn APawn
---@param EventInstigator AController
---@param EventFlags number
function ASTExtraCharacter:BroadcastSimulateTakeDamageReliable(Damage, LatestHP, DamageEventPack, DamageInstigatorPawn, EventInstigator, EventFlags) end

---@param BaseDamage number
---@param DamageInstigatorPawn APawn
function ASTExtraCharacter:BroadcastClientsSimulateDamage_BP(BaseDamage, DamageInstigatorPawn) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraCharacter:BP_CharacterModifyDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

---@param Comp USceneComponent
function ASTExtraCharacter:BPUpdateCompTransform(Comp) end

function ASTExtraCharacter:ExtendPawnStates() end

---@return boolean
function ASTExtraCharacter:IsLocalAutonomousControlled() end

---@return boolean
function ASTExtraCharacter:IsLocalAutonomousControlledOrOB() end

---@return boolean
function ASTExtraCharacter:IsLocalAutonomousControlledOrViewTarget() end

function ASTExtraCharacter:UpdateIsLocalAutonomousControlled() end

function ASTExtraCharacter:OnRep_Role() end

---@param OldMesh USkeletalMeshComponent
---@param NewMesh USkeletalMeshComponent
function ASTExtraCharacter:PostChangeShootHitMesh(OldMesh, NewMesh) end

---@return boolean
function ASTExtraCharacter:IsLocalAutonomousControlledInner() end

---@param InPoseState ESTEPoseState
---@return ECharacterPoseType
function ASTExtraCharacter:ConvertCharacterPoseStateToPoseType(InPoseState) end

---@param InParam FCacheCriticalVerifyMoveParam
---@param OutParam FCacheCriticalVerifyMoveParam
function ASTExtraCharacter:PreCacheCriticalVerifyMoveParam(InParam, OutParam) end

---@param countTime number
function ASTExtraCharacter:OpenBoxHitCollison(countTime) end

---@param countTime number
function ASTExtraCharacter:OpenSelfBoxHitCollison(countTime) end

---@param countTime number
function ASTExtraCharacter:OpenPawnHitBodyCollison(countTime) end

---@return boolean
function ASTExtraCharacter:HasFieldLogicLinearVelocityNode() end

---@return FVector
function ASTExtraCharacter:GetFieldLogicLinearVelocity() end

---是否正在模拟中(实际生效)
---@return boolean
function ASTExtraCharacter:IsVelocitySimulated() end

---获取叠加速度
---@return FVector
function ASTExtraCharacter:GetAdditiveVelocity() end

---获取模拟速度(原有速度+叠加速度)
---@return FVector
function ASTExtraCharacter:GetSimulatedVelocity() end

---@param InStart FVector
---@param InEnd FVector
---@param InColor FColor
---@param InTime number
function ASTExtraCharacter:Client_ShowDebugLine(InStart, InEnd, InColor, InTime) end

---@param InStart FVector
---@param InEnd FVector
---@param InColor FColor
---@param InTime number
function ASTExtraCharacter:OwningClient_ShowDebugLine(InStart, InEnd, InColor, InTime) end

---@param InLocation FVector
---@param InRadius number
---@param InColor FColor
---@param InTime number
function ASTExtraCharacter:Client_ShowDebugSphere(InLocation, InRadius, InColor, InTime) end

function ASTExtraCharacter:Client_ShowDebugClearAll() end

---@param Center FVector
---@param InColor FColor
---@param InTime number
---@param Extent FVector
---@param Rot FQuat
function ASTExtraCharacter:Client_ShowDebugBox(Center, InColor, InTime, Extent, Rot) end

---@param InLocation FVector
---@param InRadius number
---@param InColor FColor
---@param InTime number
---@param forwardDir FVector
---@param ang number
function ASTExtraCharacter:Client_ShowDebugCone(InLocation, InRadius, InColor, InTime, forwardDir, ang) end

---@param InLocation FVector
---@param InText string
---@param InActor AActor
---@param InColor FColor
---@param InTime number
function ASTExtraCharacter:Client_ShowDebugString(InLocation, InText, InActor, InColor, InTime) end

---@param InLocation FVector
---@param InRadius number
---@param Length number
---@param InColor FColor
---@param InTime number
---@param rot FRotator
---@param ang number
function ASTExtraCharacter:Client_ShowDebugCapsule(InLocation, InRadius, Length, InColor, InTime, rot, ang) end

---@param Center FVector
---@param Radius number
---@param Segments number
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime number
---@param DepthPriority number
---@param Thickness number
---@param YAxis FVector
---@param ZAxis FVector
---@param bDrawAxis boolean
function ASTExtraCharacter:Client_ShowDebugCircle(Center, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness, YAxis, ZAxis, bDrawAxis) end

---@param bLogInfo boolean
function ASTExtraCharacter:Client_ShowLogDebugInfo(bLogInfo) end

---@param bShow boolean
function ASTExtraCharacter:DebugShowAITargetEnemy(bShow) end

---@param InScale number
function ASTExtraCharacter:SetGravityScaleAuthorized(InScale) end

function ASTExtraCharacter:OnRep_GravityScaleAuthorized() end

function ASTExtraCharacter:OnRep_ActivitySyncData() end

function ASTExtraCharacter:OnRep_TurnAroundViewFocusData() end

---@param ConfigIndex number
---@param bLeft boolean
function ASTExtraCharacter:RPC_Multicast_MoveTurnInPlace(ConfigIndex, bLeft) end

---@param SubInstanceSlotName string
---@param SubInstanceClass UAnimInstance
---@param Types number
function ASTExtraCharacter:ReplaceSubAnimNodeAnimClass(SubInstanceSlotName, SubInstanceClass, Types) end

---@param SubInstanceSlotName string
---@param SubInstanceClass UAnimInstance
function ASTExtraCharacter:ReplaceAllSubAnimNodeAnimClass_EmptyClassDefaut(SubInstanceSlotName, SubInstanceClass) end

---@param SubInstanceSlotName string
function ASTExtraCharacter:ResetAllSubAnimNodeAnimClass_EmptyClassDefaut(SubInstanceSlotName) end

---@param SubInstanceSlotName string
---@param Types number
function ASTExtraCharacter:ResetSubAnimNodeAnimClass(SubInstanceSlotName, Types) end

function ASTExtraCharacter:Onrep_UsedVaultCompIndex() end

---@param bNeedCheck boolean
---@param bOtherCheckResult boolean
---@return boolean
function ASTExtraCharacter:Vault(bNeedCheck, bOtherCheckResult) end

---@param AllowedLatency number
---@return boolean
function ASTExtraCharacter:CheckCanVault(AllowedLatency) end

---@param ForwardBlockDist number
---@param BlockHeight number
---@param VaultDist number
---@param VaultKey string
---@param RelativePlayerStartLoc FVector_NetQuantize10
---@param CheckActor AActor
---@param CheckActorName string
---@param JumpLandingHeight number
---@param JumpLandingDist number
---@param RelativeForwardHitPoint FVector_NetQuantize10
---@param RelativeForwardBlockDir FVector_NetQuantize100
function ASTExtraCharacter:VaultOnServer(ForwardBlockDist, BlockHeight, VaultDist, VaultKey, RelativePlayerStartLoc, CheckActor, CheckActorName, JumpLandingHeight, JumpLandingDist, RelativeForwardHitPoint, RelativeForwardBlockDir) end

---@param Content string
function ASTExtraCharacter:VaultFailedOnClient(Content) end

---@param ForwardBlockDist number
---@param BlockHeight number
---@param VaultDist number
---@param VaultKey string
---@param PlayerStartLoc FVector_NetQuantize10
---@param CheckActor AActor
---@param CheckActorName string
---@param JumpLandingHeight number
---@param JumpLandingDist number
---@param ForwardHitPoint FVector_NetQuantize10
---@param RelativeForwardBlockDir FVector_NetQuantize100
function ASTExtraCharacter:VaultNetMulticast(ForwardBlockDist, BlockHeight, VaultDist, VaultKey, PlayerStartLoc, CheckActor, CheckActorName, JumpLandingHeight, JumpLandingDist, ForwardHitPoint, RelativeForwardBlockDir) end

function ASTExtraCharacter:CancelVaultOnServer() end

function ASTExtraCharacter:ForceCancelVaultOnServer() end

function ASTExtraCharacter:CancelVaultNetMulticast() end

---@param NewLoc FVector
---@param NewRot FRotator
function ASTExtraCharacter:LeaveStuckStateOnClient(NewLoc, NewRot) end

---@param bForceNetUpdate boolean
function ASTExtraCharacter:DoRepVaultRepDataOnce(bForceNetUpdate) end

function ASTExtraCharacter:Onrep_VaultRepData() end

function ASTExtraCharacter:OnRep_IsRCRRelevantForConnection() end

function ASTExtraCharacter:OnRep_IsTrueSightRelevantForConnection() end

---@param bCheckState boolean
---@return boolean
function ASTExtraCharacter:CheckCanLeanOutOnVehicle(bCheckState) end

---@return number
function ASTExtraCharacter:GetElapseTimeSinceInit() end

---@param bHide boolean
---@param HiddenMask EActorHiddenMask
function ASTExtraCharacter:HideTheCharacter(bHide, HiddenMask) end

---@param bHide boolean
---@param HiddenMask EActorHiddenMask
function ASTExtraCharacter:HideCharacterWeapon(bHide, HiddenMask) end

---Event
---受到伤害前，返回值可以修改伤害值
---生效范围S
---@param Damage number @当前伤害值，
---@param EventInstigator AController
---@param DamageEvent FDamageEvent @伤害类型
---@param DamageCauser AActor @把该角色淘汰的玩家
---@return number @修改后伤害值
function ASTExtraCharacter:UGC_PreTakeDamageEvent(Damage, EventInstigator, DamageEvent, DamageCauser) end

---@param info string
function ASTExtraCharacter:RPC_Client_SetServiceDebugInfo(info) end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function ASTExtraCharacter:OnPersistCompDynamicStateEnter(PersistComp, State) end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function ASTExtraCharacter:OnPersistCompDynamicStateLeave(PersistComp, State) end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function ASTExtraCharacter:OnPersistCompDynamicStateInterrupted(PersistComp, State) end

function ASTExtraCharacter:OnRep_CurveRootMotionRepData() end

function ASTExtraCharacter:OnRep_CustomMovementOwnerRepDataNew() end

function ASTExtraCharacter:OnRep_CustomMovementSimulatorRepDataNew() end

function ASTExtraCharacter:OnRep_CustomMovementRepData() end

function ASTExtraCharacter:OnRep_CustomMovementSimulateRepData() end

function ASTExtraCharacter:OnRep_GamePlayTagCustomMovementModePair() end

function ASTExtraCharacter:OnRep_PawnStateRelationOverriderList() end

---@param PawnStateRelationOverrider UPawnStateRelationOverrider
---@param OverriderApplier AActor
function ASTExtraCharacter:ServerAddPawnStateRelationOverrider(PawnStateRelationOverrider, OverriderApplier) end

---@param PawnStateRelationOverrider UPawnStateRelationOverrider
---@param OverriderApplier AActor
function ASTExtraCharacter:ServerAddUniquePawnStateRelationOverrider(PawnStateRelationOverrider, OverriderApplier) end

---@param Applier AActor
---@param PawnStateRelationOverrider UPawnStateRelationOverrider
function ASTExtraCharacter:ServerRemovePawnStateRelationOverrider(Applier, PawnStateRelationOverrider) end

---@param InAnimNotifyEvent FAnimNotifyEvent
---@return boolean
function ASTExtraCharacter:CustomTriggerAnimNotifyEventFunc(InAnimNotifyEvent) end

---@return boolean
function ASTExtraCharacter:IsEnableFakeDie() end

---@param ConditionName string
---@param Key string
---@param Condtion FPlayerDyncmicCondition
---@param IsOr boolean
function ASTExtraCharacter:AddDynamicCondition(ConditionName, Key, Condtion, IsOr) end

---@param ConditionName string
---@param Key string
function ASTExtraCharacter:RemoveDynamicCondition(ConditionName, Key) end

---@param ConditionName string
---@param DefaultValue boolean
---@param Param1 string
---@param Param2 string
---@param Param3 string
---@param Param4 string
---@param RelativeObject UObject
---@return boolean
function ASTExtraCharacter:IsOk_DynamicCondition(ConditionName, DefaultValue, Param1, Param2, Param3, Param4, RelativeObject) end

---@param bEnter boolean
function ASTExtraCharacter:EnterCreatingWeaponState(bEnter) end
