---@meta

---@class ENetRelevantType
---@field ENetRelevantType_All number
---@field ENetRelevantType_Teammates number
---@field ENetRelevantType_OwnerOnly number
---@field ENetRelevantType_None number
---@field ENetRelevantType_Max number
ENetRelevantType = {}


---@class FStateMutual
---@field state1 number
---@field state2 number
FStateMutual = {}


---@class FOnSimpleStateChange : ULuaMulticastDelegate
FOnSimpleStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, state: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param state number
function FOnSimpleStateChange:Broadcast(state) end


---@class FOnSimpleStateInterrupt : ULuaMulticastDelegate
FOnSimpleStateInterrupt = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleStateInterrupt:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 number
function FOnSimpleStateInterrupt:Broadcast(Param1, Param2) end


---@class FOnSimpleDeathDelegate : ULuaMulticastDelegate
FOnSimpleDeathDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeadCharacter: ASTExtraSimpleCharacterBase, Killer: AController, DamageCauser: AActor, KillingHitInfo: FHitResult, KillingHitImpulseDir: FVector, KillingHitDamageType: number, IsHeadShotDamage: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleDeathDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeadCharacter ASTExtraSimpleCharacterBase
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType number
---@param IsHeadShotDamage boolean
function FOnSimpleDeathDelegate:Broadcast(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType, IsHeadShotDamage) end


---@class FSimpleCharacterBaseOnTakeDamageModify : ULuaSingleDelegate
FSimpleCharacterBaseOnTakeDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, FinalDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor, ExFinalDamage: number, IsHeadShot: boolean, DamageHitPosition: number, Params: FTakeDamageParams) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSimpleCharacterBaseOnTakeDamageModify:Bind(Callback, Obj) end

---执行委托
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@param IsHeadShot boolean
---@param DamageHitPosition number
---@param Params FTakeDamageParams
function FSimpleCharacterBaseOnTakeDamageModify:Execute(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage, IsHeadShot, DamageHitPosition, Params) end


---@class ASTExtraSimpleCharacterBase: ASTExtraCharacter, ICommonEmoteInterface
---@field MaxRememberEnemyTimeInSeconds number
---@field MinTimeLockTarget number
---@field MinTimeWhenCannotSeeTarget number
---@field SensedRadius number
---@field MinTimeLockHeardEnemy number
---@field HeardRadius number
---@field DelayHideDuration number
---@field IsHurting boolean
---@field IsTurning boolean
---@field HurtDir FVector
---@field HurtDistance number
---@field HurtResetDefaultTime number
---@field StateMutuals ULuaArrayHelper<FStateMutual>
---@field StateEnterEvent FOnSimpleStateChange
---@field StateLeaveEvent FOnSimpleStateChange
---@field SimpleDamageRepData FSimpleDamageRepData
---@field randomIndexes ULuaArrayHelper<number>
---@field NetRelevantType ENetRelevantType
---@field DisappearOnDeathLifeSpan number
---@field OnTakeDamageModify_Override FSimpleCharacterBaseOnTakeDamageModify
---@field OutlineDistance number
local ASTExtraSimpleCharacterBase = {}

---@param KillingDamage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
function ASTExtraSimpleCharacterBase:BPDie(KillingDamage, EventInstigator, DamageCauser, DamageEvent) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function ASTExtraSimpleCharacterBase:BPNotifyStartDying(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function ASTExtraSimpleCharacterBase:BPNotifyDeathEnd(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param EventInstigater AController
---@param DamageType number
function ASTExtraSimpleCharacterBase:ClearOnDeath(EventInstigater, DamageType) end

function ASTExtraSimpleCharacterBase:DisappearOnDeath() end

---@param state number
function ASTExtraSimpleCharacterBase:CurrentStatesRemove(state) end

---@param state number
function ASTExtraSimpleCharacterBase:CurrentStatesAdd(state) end

function ASTExtraSimpleCharacterBase:OnRep_SimpleDamageData() end
