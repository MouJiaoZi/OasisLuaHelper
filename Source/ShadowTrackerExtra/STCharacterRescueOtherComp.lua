---@meta

---@class FanPickerData
---@field Radius number @Radius *
---@field Angle number @Angle : (0 - 180) *
---@field Offset number
---@field IsShowDebugFan boolean
---@field bEnableTrace boolean
---@field LowerTraceRatio number
FanPickerData = {}


---@class FOnRescueCharacterSuccess : ULuaSingleDelegate
FOnRescueCharacterSuccess = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRescueCharacterSuccess:Bind(Callback, Obj) end

---执行委托
function FOnRescueCharacterSuccess:Execute() end


---@class FOnRescueCharacterInterrupted : ULuaMulticastDelegate
FOnRescueCharacterInterrupted = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Rescuer: ASTExtraBaseCharacter, TheRescued: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRescueCharacterInterrupted:Add(Callback, Obj) end

---触发 Lua 广播
---@param Rescuer ASTExtraBaseCharacter
---@param TheRescued ASTExtraBaseCharacter
function FOnRescueCharacterInterrupted:Broadcast(Rescuer, TheRescued) end


---@class FOnRescueStart : ULuaMulticastDelegate
FOnRescueStart = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bRescueOther: boolean, Me: ASTExtraBaseCharacter, Other: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRescueStart:Add(Callback, Obj) end

---触发 Lua 广播
---@param bRescueOther boolean
---@param Me ASTExtraBaseCharacter
---@param Other ASTExtraBaseCharacter
function FOnRescueStart:Broadcast(bRescueOther, Me, Other) end


---@class FOnRescueEnd : ULuaMulticastDelegate
FOnRescueEnd = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bRescueOther: boolean, Me: ASTExtraBaseCharacter, Other: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRescueEnd:Add(Callback, Obj) end

---触发 Lua 广播
---@param bRescueOther boolean
---@param Me ASTExtraBaseCharacter
---@param Other ASTExtraBaseCharacter
function FOnRescueEnd:Broadcast(bRescueOther, Me, Other) end


---@class FOnEnterLastBreathParticleAdd : ULuaSingleDelegate
FOnEnterLastBreathParticleAdd = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnterLastBreathParticleAdd:Bind(Callback, Obj) end

---执行委托
function FOnEnterLastBreathParticleAdd:Execute() end


---@class USTCharacterRescueOtherComp: UActorComponent, IObjectPoolInterface, IInteractorInterface
---@field bCanRescueSelfAlways boolean
---@field RescueCannotBeInterrupt boolean
---@field WanderingRadius number
---@field FanData FanPickerData
---@field RescueOtherDuration number
---@field RescueReduceTime number
---@field ToTargetHealthAddtive number
---@field bNeedCrouchWhenRescuing boolean
---@field RescuingSelfCDTimeSetting number
---@field PromptIDInRescuingSelfCD number
---@field RescuingSelfCircleIndexLimited number
---@field PromptIDInBlueCircleRadius number
---@field RescuingRefuseTipsCD number
---@field LogPeroidCount number
---@field bAutoRescueSelf boolean
---@field BuffWhenEnterLastBreath UPersistEffectBase
---@field bSpeedUpRescueSelfWhenTeammateNear boolean
---@field SpeedUpTeammateRescueDynamicState FGameplayTag
---@field TipsIDWhenSpeedUpOther number
---@field TipsCDWhenSpeedUpOther number
---@field SpeedUpRescueSelfRatio number
---@field SpeedUpRescueSelfDistance number
---@field bAddBuffWhenRescueSuccess boolean
---@field SwitchToLastWeaponAfterRescueFinish boolean
---@field RescueSuccessBuffName string
---@field ShouldAddParticleWhenEnterLastBreath boolean
---@field ParticleToAddOffset FTransform
---@field ParticleTemplateAttachSocket string
---@field bNeedSwitchPoseAfterRescueFinish boolean
---@field RescueFinishPoseState ESTEPoseState
---@field RescueSkillTemplateClass AUTSkill
---@field bForceRescueSelf boolean
---@field OverrideRescueSelfText string
---@field OnRescueSucceed FOnRescueCharacterSuccess
---@field OnRescueInterrupted FOnRescueCharacterInterrupted
---@field OnRescueStart FOnRescueStart
---@field OnRescueEnd FOnRescueEnd
---@field OnEnterLastBreathParticleAdd FOnEnterLastBreathParticleAdd
---@field PawnOwner_Private ASTExtraBaseCharacter
---@field CanBeSpeedUpRescueState boolean
---@field IsBeingSpeedUpRescueSpeed boolean
---@field bDisabledSwitchWeapon boolean
---@field CurrentSpeedUpRatio number
---@field SpeedUpRescuePlayerStateSet ULuaSetHelper<ASTExtraPlayerState>
local USTCharacterRescueOtherComp = {}

function USTCharacterRescueOtherComp:CancelRescueingState() end

---@param InAttrName string
---@param CurValue number
function USTCharacterRescueOtherComp:OnRescueOtherDurationRateChanged(InAttrName, CurValue) end

---@return number
function USTCharacterRescueOtherComp:GetRescueOtherDuration() end

---@return boolean
function USTCharacterRescueOtherComp:BeCanRescuingSelf() end

---@param _bDisableRescue boolean
function USTCharacterRescueOtherComp:SetIsDisableRescue(_bDisableRescue) end

---@param Target ASTExtraBaseCharacter
---@param HealthAddtive number
---@return boolean
function USTCharacterRescueOtherComp:RescueSucImmediately(Target, HealthAddtive) end

---@return boolean
function USTCharacterRescueOtherComp:PlayerConfirmToRescueClientSide() end

---@param _RescueWho ASTExtraBaseCharacter
function USTCharacterRescueOtherComp:PlayerConfirmToRescueServerSide(_RescueWho) end

---@param _RescueWho ASTExtraBaseCharacter
function USTCharacterRescueOtherComp:ServerPlayerConfirm(_RescueWho) end

---@param _RescueWho ASTExtraBaseCharacter
function USTCharacterRescueOtherComp:ClientPlayerConfirm(_RescueWho) end

---@param bResetRescue boolean
---@param bResetCarry boolean
function USTCharacterRescueOtherComp:ClientPlayerRefuse(bResetRescue, bResetCarry) end

---@param SpeedRatio number
function USTCharacterRescueOtherComp:UpdateRescueSpeed(SpeedRatio) end

---@param AddVar number
function USTCharacterRescueOtherComp:AddRescueTimeWhenRescuing(AddVar) end

function USTCharacterRescueOtherComp:ManuallyNotifyHUD() end

---@param forceRescueSelf boolean
function USTCharacterRescueOtherComp:RescueFinishImmediately(forceRescueSelf) end

---@param OwnerPawn ASTExtraBaseCharacter
---@param RescuedPawn ASTExtraBaseCharacter
function USTCharacterRescueOtherComp:ReportRescueData(OwnerPawn, RescuedPawn) end

---@param IsBeingSpeedUpRescueState boolean
function USTCharacterRescueOtherComp:OnIsBeingSpeedUpRescueSpeedChanged(IsBeingSpeedUpRescueState) end

---@param RescuedPawn ASTExtraBaseCharacter
---@return boolean
function USTCharacterRescueOtherComp:IsCanRescue(RescuedPawn) end

---@param OtherCharacter ASTExtraBaseCharacter
---@return boolean
function USTCharacterRescueOtherComp:IsOtherCharacterCanSpeedUpRescue(OtherCharacter) end

---@return boolean
function USTCharacterRescueOtherComp:IsSelfRescueReady() end

---@param bRescueSelf boolean
---@return number
function USTCharacterRescueOtherComp:GetRescueReduceTime(bRescueSelf) end

---@param HitResult FHitResult
---@return boolean
function USTCharacterRescueOtherComp:BlockCheckingPostFilterFunc(HitResult) end

---@param ItemHandleBase UItemHandleBase
function USTCharacterRescueOtherComp:OnMyItemUpdate(ItemHandleBase) end

---@param Out FItemDefineID
---@return boolean
function USTCharacterRescueOtherComp:FindRescuingSelfItem(Out) end

---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function USTCharacterRescueOtherComp:OnPawnHealthStatusChanged(PrevStatus, NewStatus) end

function USTCharacterRescueOtherComp:OnRep_CanBeSpeedUpRescueSpeed() end

function USTCharacterRescueOtherComp:OnRep_IsBeingSpeedUpRescueSpeed() end
