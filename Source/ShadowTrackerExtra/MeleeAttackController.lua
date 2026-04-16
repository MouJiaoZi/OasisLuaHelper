---@meta

---@class FOnMeleeAttackAbsorbChange : ULuaMulticastDelegate
FOnMeleeAttackAbsorbChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bStart: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMeleeAttackAbsorbChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bStart boolean
function FOnMeleeAttackAbsorbChange:Broadcast(bStart) end


---@class UMeleeAttackController: UObject
---@field AbsorbStopEventStr string
---@field ScratchCreatorHandlerClass UScratchCreatorHandler
---@field ScorerMaxCompareCount number
---@field bEditAbsorbCommonData_Mode boolean
---@field AbsorbCommonDataMap ULuaMapHelper<number, FMeleeAbsorbCommonData>
---@field AbsorbCommonDataMap_Mode ULuaMapHelper<number, FMeleeAbsorbCommonData>
---@field bPreCheckLastAbsorbTarget boolean
---@field CheckLastAbsorbTargetValidTime number
---@field AbsorbMaxTimeoutOffset number
---@field FocusCapsulePercentOptions ULuaArrayHelper<number>
---@field CurComboAbsorbedTimeBias number
---@field bClearAbsorbLaunchVelocityZ boolean
---@field bEnableStopIncorrectCheckInClient boolean
---@field MinValidLaunchVelocitySquared number
---@field IncorrectLaunchDirThreshold number
---@field StopIncorrectDirFrameCnt number
---@field StopIncorrectBlockFrameCnt number
---@field StopIncorrectVelocityFrameCnt number
---@field MinMoveBlockStopDistSquared number
---@field CanBreakComboMontageStates ULuaArrayHelper<EPawnState>
---@field BreakComboMontageIntervalA number
---@field BreakComboMontageIntervalS number
---@field DashTraceObjChannels ULuaArrayHelper<ECollisionChannel>
---@field DashTraceChannel ECollisionChannel
---@field OnAbsorbChangeDelegate FOnMeleeAttackAbsorbChange
---@field CurAbsorbCommonData FMeleeAbsorbCommonData
---@field LastLaunchedDistance number
---@field AbsorbTotalDistance number
---@field AbsorbTotalTime number
---@field AbsorbTotalAngle number
---@field bAbsorbLaunchFinished boolean
---@field bAbsorbRotateFinished boolean
---@field IgnoreAbsorbAngle number
---@field bForbidMovement boolean
---@field AbsorbTargetActor AActor
---@field ForbidAbsorbAdjacentActorKeys ULuaArrayHelper<string>
---@field ServerSkillKeyOpData FMeleeAttackKeyOpData
---@field CurComboExtractSimpleData FMeleeAttackExtractData
---@field CurClientComboData FMeleeAttackClientComboData
---@field bEnableHitStop boolean
---@field HitStopTime number
---@field HitStopPlayRate number
---@field HitStopTargetValidClass ULuaArrayHelper<AActor>
---@field CachedPlayRate number
---@field HitStopRecoverTimer FTimerHandle
---@field bEnableCameraShake boolean
---@field CameraShakeTargetValidClass ULuaArrayHelper<AActor>
---@field CameraShakeTemplate UCameraShake
---@field CameraShakeScale number
---@field ForceFixHitActorLocToBoundsOirginClass ULuaArrayHelper<AActor>
local UMeleeAttackController = {}

---@return boolean
function UMeleeAttackController:IsCurComboMontageJumpTime() end

---@return boolean
function UMeleeAttackController:HasOldComboMontageData() end

---@param bPressed boolean
function UMeleeAttackController:OnSwitchSkillKeyState(bPressed) end

---@return boolean
function UMeleeAttackController:IsSkillKeyPressed() end

---@return boolean
function UMeleeAttackController:IsCurComboAbsorbed() end

---@return boolean
function UMeleeAttackController:IsCurComboDistAbsorbed() end

---@return boolean
function UMeleeAttackController:IsCurComboRotAbsorbed() end

---@param bByEnterMove boolean
function UMeleeAttackController:TryStopComboMontage(bByEnterMove) end

---@return boolean
function UMeleeAttackController:ClientIsCurComboAlreadyHitTarget() end

---@return boolean
function UMeleeAttackController:IsCurAbsorbStarted() end

---@param RetData FMeleeAttackAbsorbRepData
---@return boolean
function UMeleeAttackController:QueryCurAbsorbTargetData(RetData) end

---@param AbsorbDataID number
---@param MinVerticalSpeed number
---@param bOutHasFindTarget boolean
---@return boolean
function UMeleeAttackController:StartAbsorbByAdjacentActor(AbsorbDataID, MinVerticalSpeed, bOutHasFindTarget) end

---@param bForbid boolean
---@param ForbidKey string
---@param bForceClearAllKeys boolean
function UMeleeAttackController:SetForbidAbsorbAdjacentActor(bForbid, ForbidKey, bForceClearAllKeys) end

---@param TargetLocation FVector
---@param AbsorbDataID number
---@return boolean
function UMeleeAttackController:StartAbsorbByLoc(TargetLocation, AbsorbDataID) end

---@param StopReason EMeleeAttackAbsorbStopReason
function UMeleeAttackController:StopAbsorbServer(StopReason) end

---@return boolean
function UMeleeAttackController:ShouldLockControllerTouch() end

---@param StartLoc FVector
---@param DashDir FVector
---@param bShouldStopAtEdge boolean
---@param OutLoc FVector
---@param TotalDistance number
---@param TraceUpper number
---@param TraceDown number
---@param IterCount number
---@return boolean
function UMeleeAttackController:QueryValidDashLocation(StartLoc, DashDir, bShouldStopAtEdge, OutLoc, TotalDistance, TraceUpper, TraceDown, IterCount) end

---@param OriginPercent number
---@return number
function UMeleeAttackController:GetChargeFinishPercent(OriginPercent) end

---@return boolean
function UMeleeAttackController:CanUseCustomMoveAbsorb() end

function UMeleeAttackController:OnStartCustomMoveAbsorbBP() end

function UMeleeAttackController:OnStopCustomMoveAbsorbBP() end

---@param BlockedCharacter ASTExtraCharacter
---@param HitResult FHitResult
function UMeleeAttackController:OnCharacterMoveBlock(BlockedCharacter, HitResult) end

---@param HitResult FHitResult
---@return boolean
function UMeleeAttackController:CanMoveBlockStopAbsorbBP(HitResult) end

function UMeleeAttackController:OnInitBP() end

function UMeleeAttackController:OnUnInitBP() end

---@param bStart boolean
function UMeleeAttackController:OnAbsorbDataChangeBP(bStart) end

---@return boolean
function UMeleeAttackController:CanStartAbsorbAdjacentActorBP() end

function UMeleeAttackController:OnBreakComboMontageCheck() end

---@param SkillHitInfo FUTSkillHitInfo
function UMeleeAttackController:AutonomousHandleSkillHit(SkillHitInfo) end

function UMeleeAttackController:ClientCancelBreakComboMontageEvent() end

function UMeleeAttackController:OnClientListenBreakComboMontageEventBP() end

function UMeleeAttackController:OnClientCancelBreakComboMontageEventBP() end

---@param Montage UAnimMontage
---@param InHitStopPlayRate number
---@param InHitStopTime number
function UMeleeAttackController:RegisterHitStopAnimNotify(Montage, InHitStopPlayRate, InHitStopTime) end

---@param Montage UAnimMontage
function UMeleeAttackController:UnRegisterHitStopAnimNotify(Montage) end

---@param Montage UAnimMontage
---@param InCameraShakeTemplate UCameraShake
---@param InShakeScale number
function UMeleeAttackController:RegisterCameraShakeAnimNotify(Montage, InCameraShakeTemplate, InShakeScale) end

---@param Montage UAnimMontage
---@param bStopImmediately boolean
function UMeleeAttackController:UnRegisterCameraShakeAnimNotify(Montage, bStopImmediately) end
