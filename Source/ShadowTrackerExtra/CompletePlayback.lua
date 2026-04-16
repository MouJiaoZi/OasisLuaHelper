---@meta

---@class FNotifyKillInfoDelegate : ULuaSingleDelegate
FNotifyKillInfoDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyKillInfoDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
function FNotifyKillInfoDelegate:Execute(Param1, Param2) end


---@class FNotifyHitDownEventDelegate : ULuaSingleDelegate
FNotifyHitDownEventDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyHitDownEventDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 string
function FNotifyHitDownEventDelegate:Execute(Param1, Param2) end


---@class FNotifyFireEventDelegate : ULuaSingleDelegate
FNotifyFireEventDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyFireEventDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyFireEventDelegate:Execute() end


---@class FNotifyAimingBlockedEnemyDelegate : ULuaSingleDelegate
FNotifyAimingBlockedEnemyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean, Param2: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyAimingBlockedEnemyDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
---@param Param2 string
function FNotifyAimingBlockedEnemyDelegate:Execute(Param1, Param2) end


---@class FNotifyFastforwardFinishedDelegate : ULuaSingleDelegate
FNotifyFastforwardFinishedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyFastforwardFinishedDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyFastforwardFinishedDelegate:Execute() end


---@class FNotifyBeginValidProcessingDelegate : ULuaSingleDelegate
FNotifyBeginValidProcessingDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyBeginValidProcessingDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyBeginValidProcessingDelegate:Execute() end


---@class FNotifyPlaybackEndedDelegate : ULuaSingleDelegate
FNotifyPlaybackEndedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyPlaybackEndedDelegate:Bind(Callback, Obj) end

---执行委托
function FNotifyPlaybackEndedDelegate:Execute() end


---@class FNotifyTraceVisiblePlayerDelegate : ULuaSingleDelegate
FNotifyTraceVisiblePlayerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: ULuaArrayHelper<char>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNotifyTraceVisiblePlayerDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 ULuaArrayHelper<char>
function FNotifyTraceVisiblePlayerDelegate:Execute(Param1) end


---@class FOnRecordPlayerSetCompleted : ULuaSingleDelegate
FOnRecordPlayerSetCompleted = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRecordPlayerSetCompleted:Bind(Callback, Obj) end

---执行委托
function FOnRecordPlayerSetCompleted:Execute() end


---@class FOnPlayerWeaponRecordChangedDelegate : ULuaMulticastDelegate
FOnPlayerWeaponRecordChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FWeaponRecord) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerWeaponRecordChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FWeaponRecord
function FOnPlayerWeaponRecordChangedDelegate:Broadcast(Param1) end


---@class FOnRecordPlayerSetNewTargetUID : ULuaMulticastDelegate
FOnRecordPlayerSetNewTargetUID = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string, Param2: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRecordPlayerSetNewTargetUID:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
---@param Param2 string
function FOnRecordPlayerSetNewTargetUID:Broadcast(Param1, Param2) end


---@class FOnExternalCustomEvent : ULuaMulticastDelegate
FOnExternalCustomEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnExternalCustomEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
function FOnExternalCustomEvent:Broadcast(Param1) end


---@class UPlaybackPendingNetGame: UPendingNetGame
local UPlaybackPendingNetGame = {}


---@class UCompletePlayback: UFilebasedPlayback
---@field UIClass UUserWidget
---@field isUsingMapPlayerItem boolean
---@field ExcludedGameModes ULuaArrayHelper<string>
---@field bUseNewDuplicateComponent boolean
---@field bFastForwardSkipRepNotifies boolean
---@field SpawnReplicatedActorMaxFrameDelay number
---@field SpawnReplicatedActorThreshold number
---@field bEnableUIDisplaySystem boolean
---@field ChacterHaloMap ULuaMapHelper<ASTExtraPlayerCharacter, UStaticMeshComponent>
---@field ChacterArrowMap ULuaMapHelper<ASTExtraPlayerCharacter, UStaticMeshComponent>
---@field HaloMaterials ULuaMapHelper<ERelationshipWithTarget, UMaterialInstance>
---@field ArrowEffectMaterials ULuaMapHelper<ERelationshipWithTarget, UMaterialInstance>
---@field isForceUIMsg boolean
---@field TeammateKeyArray ULuaArrayHelper<number>
local UCompletePlayback = {}

---@param DemoName string
---@return boolean
function UCompletePlayback:PlayLiveDemoWithGameId(DemoName) end

---@param SubModeID string
---@param DelayFrame number
---@return boolean
function UCompletePlayback:PreloadReplayMap(SubModeID, DelayFrame) end

---@param MapID string
---@param DemoName string
---@param DelayFrame number
---@return boolean
function UCompletePlayback:PlayReplayWithPreloadedMap(MapID, DemoName, DelayFrame) end

---@param Weapon ASTExtraWeapon
function UCompletePlayback:NotifyCharacterShoot(Weapon) end

---@param Weapon ASTExtraWeapon
function UCompletePlayback:OnCharacterShot(Weapon) end

---@param bForce boolean
function UCompletePlayback:ConsiderSaveCheckpoint(bForce) end

---@param EmoteID number
---@param Reason EEmoteEndReason
function UCompletePlayback:OnEmotePlayFinished(EmoteID, Reason) end

---@param Character ASTExtraPlayerCharacter
---@return ERelationshipWithTarget
function UCompletePlayback:GetCharacterType(Character) end

---@param InPlayerController APlayerController
function UCompletePlayback:OnPlayerPostLogin(InPlayerController) end

function UCompletePlayback:OnUIReady() end
