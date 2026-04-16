---@meta

---@class FCustomMovementCDConfig
---@field ID ECustomMovmentModeCD
---@field CDTime number
---@field bSyncToClient boolean
FCustomMovementCDConfig = {}


---@class FCanEnterMovementDelegate : ULuaSingleDelegate
FCanEnterMovementDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, Param: FCustomMovementRequestParam) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCanEnterMovementDelegate:Bind(Callback, Obj) end

---执行委托
---@param CharacterOwner ACharacter
---@param Param FCustomMovementRequestParam
function FCanEnterMovementDelegate:Execute(CharacterOwner, Param) end


---@class FCustomMovementVelocityDelegate : ULuaSingleDelegate
FCustomMovementVelocityDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, MovementInstance: UCustomMovementBase, MoveTime: number, DeltaTime: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomMovementVelocityDelegate:Bind(Callback, Obj) end

---执行委托
---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
function FCustomMovementVelocityDelegate:Execute(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end


---@class FCustomMovementZVelocityDelegate : ULuaSingleDelegate
FCustomMovementZVelocityDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, MovementInstance: UCustomMovementBase, MoveTime: number, DeltaTime: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomMovementZVelocityDelegate:Bind(Callback, Obj) end

---执行委托
---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param MoveTime number
---@param DeltaTime number
function FCustomMovementZVelocityDelegate:Execute(CharacterOwner, MovementInstance, MoveTime, DeltaTime) end


---@class FCustomMovementZVelocityModifyDelegate : ULuaSingleDelegate
FCustomMovementZVelocityModifyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, MovementInstance: UCustomMovementBase, InZ: number, MoveTime: number, DeltaTime: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomMovementZVelocityModifyDelegate:Bind(Callback, Obj) end

---执行委托
---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param InZ number
---@param MoveTime number
---@param DeltaTime number
function FCustomMovementZVelocityModifyDelegate:Execute(CharacterOwner, MovementInstance, InZ, MoveTime, DeltaTime) end


---@class FCustomMovementMovedDelegate : ULuaMulticastDelegate
FCustomMovementMovedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, MovementInstance: UCustomMovementBase, OldLocation: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomMovementMovedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param OldLocation FVector
function FCustomMovementMovedDelegate:Broadcast(CharacterOwner, MovementInstance, OldLocation) end


---@class FEnterMovementDelegate : ULuaMulticastDelegate
FEnterMovementDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, MovementInstance: UCustomMovementBase, NewMovementMode: EMovementMode, NewCustomMode: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnterMovementDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param NewMovementMode EMovementMode
---@param NewCustomMode number
function FEnterMovementDelegate:Broadcast(CharacterOwner, MovementInstance, NewMovementMode, NewCustomMode) end


---@class FExitMovementDelegate : ULuaMulticastDelegate
FExitMovementDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, MovementInstance: UCustomMovementBase, NewMovementMode: EMovementMode, NewCustomMode: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FExitMovementDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CharacterOwner ACharacter
---@param MovementInstance UCustomMovementBase
---@param NewMovementMode EMovementMode
---@param NewCustomMode number
function FExitMovementDelegate:Broadcast(CharacterOwner, MovementInstance, NewMovementMode, NewCustomMode) end


---@class FCustomMovementImpactDelegate : ULuaMulticastDelegate
FCustomMovementImpactDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CharacterOwner: ACharacter, OtherCharacter: ACharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomMovementImpactDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CharacterOwner ACharacter
---@param OtherCharacter ACharacter
function FCustomMovementImpactDelegate:Broadcast(CharacterOwner, OtherCharacter) end


---@class UCustomMovementBase: UObject
---@field bDefaultInit boolean
---@field bTickable boolean
---@field bIsMovingOnGround boolean
---@field bIgnoreWalkSpeedCurve boolean
---@field CDReplicateFrequency number
---@field bCanExceedMaxSpeed boolean
---@field MaxSpeed number
---@field MaxSpeedScale number
---@field bRecalcRealVelocity boolean
---@field bCanExceedCurrentVelocityOnRecalcVelocity boolean
---@field bCustomCalcVelocity boolean
---@field bCustomGetMaxAcceleration boolean
---@field MaxAcceleration number
---@field BrakingDecelerationOverride number
---@field ForcePositionClearAccTime number
---@field bCanTrustClientMovementMode boolean
---@field bCanBeInterruptByMovemode boolean
---@field SetMoveModeRole ENetRole
---@field AllowMovemodeNotMatchTime number
---@field KeepCurrentMoveTime number
---@field ExitCurrentMoveTime number
---@field bShouldSkipReplicateMovement boolean
---@field bForceSimulatePredict boolean
---@field bForceSkipSimulatePredict boolean
---@field bShouldLand boolean
---@field bShouldTakeFallingDamage boolean
---@field bCanCombineMove boolean
---@field bCanDelaySendMove boolean
---@field bCombineNotRevertMove boolean
---@field bEnableDSFastMove boolean
---@field bMoveIgnorePawn boolean
---@field bEnablePawnImpact boolean
---@field bCanBeImpactByOther boolean
---@field ImpactForceZAngle number
---@field ImpactForce number
---@field bEnableAnticheatOverride boolean
---@field bEnableAntiCheat boolean
---@field AllowablePositionError number
---@field CheckPassWallShapeShrinkScale number
---@field bPassWallAdjustmentAfterMovement boolean
---@field bServerPriorityControl boolean
---@field bCustomServerCheckClientError boolean
---@field bEnableSecondCollision boolean
---@field SecondCollisionComponentClass UPrimitiveComponent
---@field SecondCollisionOffset FVector
---@field CDCfgs ULuaArrayHelper<FCustomMovementCDConfig>
---@field MainCDID ECustomMovmentModeCD
---@field SkillID number
---@field CustomMovementMode ECustomMovmentMode
---@field CanEnterMovementDelegate FCanEnterMovementDelegate
---@field GetEnterVelocityDelegate FCustomMovementVelocityDelegate
---@field GetCustomVelocityXYDelegate FCustomMovementVelocityDelegate
---@field GetCustomVelocityZDelegate FCustomMovementZVelocityDelegate
---@field GetCustomVelocityZModifyDelegate FCustomMovementZVelocityModifyDelegate
---@field OnMovedDelegate FCustomMovementMovedDelegate
---@field OnEnterMovementDelegate FEnterMovementDelegate
---@field OnExitMovementDelegate FExitMovementDelegate
---@field OnImpactDelegate FCustomMovementImpactDelegate
---@field bNotifyMoveBlockBy boolean
---@field bClearBaseOnEnter boolean
---@field MoveTime number
---@field StartMovementRequestParam FCustomMovementRequestParam
local UCustomMovementBase = {}

---@param CDID ECustomMovmentModeCD
---@param Scale number
---@return boolean
function UCustomMovementBase:GetCDScale_BP(CDID, Scale) end

---@param ID ECustomMovmentModeCD
---@return number
function UCustomMovementBase:GetCDRemainingTime(ID) end

---@param ID ECustomMovmentModeCD
---@param Time number
function UCustomMovementBase:SetCDRemainingTime(ID, Time) end

---@param ID ECustomMovmentModeCD
---@return number
function UCustomMovementBase:GetCDTime(ID) end

---@param ID ECustomMovmentModeCD
---@return number
function UCustomMovementBase:GetCDPercent(ID) end

---@param ID ECustomMovmentModeCD
function UCustomMovementBase:ResetCDTime(ID) end

function UCustomMovementBase:DoRepMovementData() end

function UCustomMovementBase:DoRepSimulatorMovementData() end

function UCustomMovementBase:OnRep_CustomMovementRepData() end

function UCustomMovementBase:OnRep_CustomMovementSimulateRepData() end

---@return boolean
function UCustomMovementBase:IsMovingOnGround() end

---@return boolean
function UCustomMovementBase:IgnoreWalkSpeedCurve() end

---@return boolean
function UCustomMovementBase:CanTrustClientMovementMode() end

---@return boolean
function UCustomMovementBase:CanExceedMaxSpeed() end

---@return boolean
function UCustomMovementBase:CustomCalcVelocity() end

---@return boolean
function UCustomMovementBase:CustomGetMaxAcceleration() end

---@return boolean
function UCustomMovementBase:ShouldSkipReplicateMovement() end

---@return boolean
function UCustomMovementBase:ShouldForceSimulatePredict() end

---@param NewSkillID number
function UCustomMovementBase:SetSkillID(NewSkillID) end

---@return boolean
function UCustomMovementBase:ShouldLand() end

---@param ScaleValue number
function UCustomMovementBase:SetMaxSpeedScale(ScaleValue) end

---@return number
function UCustomMovementBase:GetGravity() end

---@param ClientMode EMovementMode
---@param ClientCustomMode number
---@param CompressedMoveFlags number
---@return boolean
function UCustomMovementBase:CanBeInterruptByMovemode(ClientMode, ClientCustomMode, CompressedMoveFlags) end

---@param Height number
---@param Hit FHitResult
---@return boolean
function UCustomMovementBase:K2_FindFloor(Height, Hit) end

---@param OutHit FHitResult
---@param Start FVector
---@param End FVector
---@param bDontIgnoreTag boolean
---@return boolean
function UCustomMovementBase:LineTrace(OutHit, Start, End, bDontIgnoreTag) end

---@param PrevMovementMode EMovementMode
---@param PrevCustomMode number
function UCustomMovementBase:OnEnter_BP(PrevMovementMode, PrevCustomMode) end

---@param NewMovementMode EMovementMode
---@param NewCustomMode number
function UCustomMovementBase:OnExit_BP(NewMovementMode, NewCustomMode) end

---@param bBind boolean
---@param InObject UObject
---@param InFunctionName string
function UCustomMovementBase:BindGetCustomVelocityXYDelegate(bBind, InObject, InFunctionName) end

---@return boolean
function UCustomMovementBase:IsGetCustomVelocityXYDelegateBind() end

---@param bBind boolean
---@param InObject UObject
---@param InFunctionName string
function UCustomMovementBase:BindGetCustomVelocityZDelegate(bBind, InObject, InFunctionName) end

---@return boolean
function UCustomMovementBase:IsGetCustomVelocityZDelegateBind() end
