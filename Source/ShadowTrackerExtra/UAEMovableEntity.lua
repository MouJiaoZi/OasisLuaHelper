---@meta

---@class FMovableEntityBuff
---@field MaxTime number
---@field MaxDuration number
---@field Damage number
---@field Name string
---@field DamageTypeClass UDamageType
FMovableEntityBuff = {}


---@class FEntityTakeAnyDamageSignature : ULuaMulticastDelegate
FEntityTakeAnyDamageSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamagedActor: AActor, Damage: number, InstigatedBy: AController, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEntityTakeAnyDamageSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamagedActor AActor
---@param Damage number
---@param InstigatedBy AController
---@param DamageCauser AActor
function FEntityTakeAnyDamageSignature:Broadcast(DamagedActor, Damage, InstigatedBy, DamageCauser) end


---@class FEntityGotoDieSignature : ULuaMulticastDelegate
FEntityGotoDieSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamagedActor: AActor, Damage: number, InstigatedBy: AController, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEntityGotoDieSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamagedActor AActor
---@param Damage number
---@param InstigatedBy AController
---@param DamageCauser AActor
function FEntityGotoDieSignature:Broadcast(DamagedActor, Damage, InstigatedBy, DamageCauser) end


---@class AUAEMovableEntity: AMovableEntity, IAttrModifyInterface, IPickerEffectInterface, ISTBaseBuffCarrierInterface, IDamageNumberInterface, IDamageHitPartInterface, IDamageableInterface, IFieldApplyInterface, ICharacterTypeInterface, IStateAbilityInterface
---@field bActivateMovement boolean
---@field AdditiveVelocity FVector @在速度场中移动时模拟端需要叠加的速度
---@field EnterTagStateHandle FOnTagStateChangeDelegate
---@field ExitTagStateHandle FOnTagStateChangeDelegate
---@field InterruptTagStateHandle FOnTagStateChangeDelegate
---@field Health number
---@field MaxHealth number
---@field HeadZOffset number
---@field DeadAKEvent ULuaMapHelper<number, UAkAudioEvent>
---@field bDrawDamageNumber boolean
---@field bUseDamageNumberEX boolean
---@field HitBoxTagName string
---@field CheckCollisionCD number
---@field bUpdateAICell boolean
---@field RecordAttackPlayer boolean
---@field bShowOutline boolean
---@field bReplicateHP boolean
---@field ShowOutlineHPPercentage number
---@field MoveTag FGameplayTag
---@field IsOnlyDSRootCapsuleGenerateOverlapEvents number
---@field EntityTakeAnyDamageDelegate FEntityTakeAnyDamageSignature
---@field GotoDieDelegate FEntityGotoDieSignature
---@field bEnableCustomURO boolean
---@field CustomAnimUpdateRateParams ULuaArrayHelper<FAnimUpdateRateParameters>
---@field MaxEvalRateForInterpolationConfig number
local AUAEMovableEntity = {}

function AUAEMovableEntity:HideMiniMapMark() end

---@param NewLoc FVector
function AUAEMovableEntity:ForceSetLocation(NewLoc) end

function AUAEMovableEntity:ForceSwitchCPUAnimation() end

function AUAEMovableEntity:StopSelfAllAudio() end

---@param BuffName string
---@param SkillActor AController
---@param LayerCount number
---@param BuffApplierActor AActor
---@param CauserActor AActor
---@return number
function AUAEMovableEntity:AddBuff(BuffName, SkillActor, LayerCount, BuffApplierActor, CauserActor) end

---@param BuffName string
---@param RemoveLayerOnly boolean
---@param BuffApplierActor AActor
---@return boolean
function AUAEMovableEntity:RemoveBuff(BuffName, RemoveLayerOnly, BuffApplierActor) end

---@param BuffName string
---@return boolean
function AUAEMovableEntity:HasBuff(BuffName) end

---@param BuffName string
---@param ExpirySecondsFromNow number
---@return boolean
function AUAEMovableEntity:SetBuffExpiry(BuffName, ExpirySecondsFromNow) end

---@param Info string
---@param Param string
function AUAEMovableEntity:ReportCPUAnimDeviceInfo(Info, Param) end

---@param BuffName string
---@param SkillActor AController
---@param LayerCount number
---@param BuffApplierActor AActor
---@param CauserActor AActor
function AUAEMovableEntity:BP_AddBuff(BuffName, SkillActor, LayerCount, BuffApplierActor, CauserActor) end

---@param NewMoveType eCrowdMoveType
function AUAEMovableEntity:SwitchMoveType(NewMoveType) end

---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function AUAEMovableEntity:BP_MovementModeChange(PrevMovementMode, PreviousCustomMode) end

---@param HasPath boolean
---@param Start FVector
---@param End FVector
function AUAEMovableEntity:NotifyFindPathResult(HasPath, Start, End) end

function AUAEMovableEntity:OnRep_ActivateMovement() end

---@param PrevHealth number
function AUAEMovableEntity:OnRep_Health(PrevHealth) end

---移动模式发生变更
---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function AUAEMovableEntity:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---@return boolean
function AUAEMovableEntity:HasFieldLogicLinearVelocityNode() end

---@return FVector
function AUAEMovableEntity:GetFieldLogicLinearVelocity() end

---是否正在模拟中(实际生效)
---@return boolean
function AUAEMovableEntity:IsVelocitySimulated() end

---获取叠加速度
---@return FVector
function AUAEMovableEntity:GetAdditiveVelocity() end

---获取模拟速度(原有速度+叠加速度)
---@return FVector
function AUAEMovableEntity:GetSimulatedVelocity() end

---@param Show boolean
function AUAEMovableEntity:ShowOutline(Show) end

---@param PrevHealth number
---@param Health number
---@param MaxHealth number
function AUAEMovableEntity:BP_HealthChange(PrevHealth, Health, MaxHealth) end
