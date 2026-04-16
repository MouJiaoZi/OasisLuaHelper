---@meta

---@class FIntroCameraParam
---@field Location FVector
---@field Rotation FRotator
---@field Fov number
---@field TransitionParams FViewTargetTransitionParams
FIntroCameraParam = {}


---@class FIntroAreaParam
---@field Location FVector
---@field Scale FVector
FIntroAreaParam = {}


---@class FCustomIntroAction
---@field IntroActionName string
---@field Actions ULuaArrayHelper<UIntroActionBase>
FCustomIntroAction = {}


---@class FOnActionFinishDelegate : ULuaSingleDelegate
FOnActionFinishDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActionFinishDelegate:Bind(Callback, Obj) end

---执行委托
function FOnActionFinishDelegate:Execute() end


---@class FPlayerEnterAreaDelegate : ULuaSingleDelegate
FPlayerEnterAreaDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, AreaActor: AIntroGuideAreaActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerEnterAreaDelegate:Bind(Callback, Obj) end

---执行委托
---@param AreaActor AIntroGuideAreaActor
function FPlayerEnterAreaDelegate:Execute(AreaActor) end


---@class FIntroLuaActionDelegate : ULuaSingleDelegate
FIntroLuaActionDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, StepID: number, LuaActionName: string, LuaActionParam: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FIntroLuaActionDelegate:Bind(Callback, Obj) end

---执行委托
---@param StepID number
---@param LuaActionName string
---@param LuaActionParam string
function FIntroLuaActionDelegate:Execute(StepID, LuaActionName, LuaActionParam) end


---@class AIntroGuideAreaActor: AActor
---@field GuideID number
---@field StepID number
---@field IsTriggerNewGuide boolean
---@field PlayerEnterAreaDelegate FPlayerEnterAreaDelegate
local AIntroGuideAreaActor = {}

function AIntroGuideAreaActor:TriggerGuide() end


---@class AIntroductionManagerActor: AActor
---@field OnActionFinishDelegate FOnActionFinishDelegate
---@field IntroLuaActionDelegate FIntroLuaActionDelegate
---@field CameraCutMap ULuaMapHelper<string, FIntroCameraParam>
---@field AreaActorMap ULuaMapHelper<string, FIntroAreaParam>
---@field GuideAreaClass AIntroGuideAreaActor
---@field LevelSeqList ULuaArrayHelper<ULevelSequence>
---@field PreLoadLevelSeqList ULuaArrayHelper<number>
---@field CameraAnimList ULuaArrayHelper<UCameraAnim>
---@field bOverrideInstanceData number
---@field CustomIntroActions ULuaArrayHelper<FCustomIntroAction>
---@field CameraAnimEndTimer FTimerHandle
---@field GuideAreaActors ULuaArrayHelper<AIntroGuideAreaActor>
---@field GuideAreaActorsPool ULuaArrayHelper<AIntroGuideAreaActor>
---@field LoadedUIStyleList ULuaArrayHelper<UUserWidgetStyle>
local AIntroductionManagerActor = {}

function AIntroductionManagerActor:SpawnCameraActor() end

---@return FTransform
function AIntroductionManagerActor:GetOriginTransform() end

---@param StepID number
---@param ActionName string
---@return boolean
function AIntroductionManagerActor:StartIntroduceAction(StepID, ActionName) end

---@param CameraKey string
function AIntroductionManagerActor:SwitchCamera(CameraKey) end

function AIntroductionManagerActor:SwitchCameraToPlayer() end

---@param SeqIndex number
function AIntroductionManagerActor:PlayLevelSequence(SeqIndex) end

function AIntroductionManagerActor:StopLevelSequence() end

---@param CameraKey string
---@param CameraAnimIndex number
function AIntroductionManagerActor:PlayCameraAnim(CameraKey, CameraAnimIndex) end

function AIntroductionManagerActor:StopCameraAnim() end

---@param AreaActor AIntroGuideAreaActor
function AIntroductionManagerActor:RemoveAreaActor(AreaActor) end

function AIntroductionManagerActor:ClearGuideArea() end

---@param UIStyle UUserWidgetStyle
---@param IsLoad boolean
function AIntroductionManagerActor:SetUIStyle(UIStyle, IsLoad) end

function AIntroductionManagerActor:ClearAllUIStyle() end

---@param IsClose boolean
function AIntroductionManagerActor:ClosePlayerInput(IsClose) end

---@param SeqIndex number
function AIntroductionManagerActor:OnLevelSequenceLoaded(SeqIndex) end

---@param LevelSeq ULevelSequence
function AIntroductionManagerActor:PlayLevelSequenceImpl(LevelSeq) end

---@return boolean
function AIntroductionManagerActor:CanPlayCameraAnim() end

function AIntroductionManagerActor:OnSequenceFinished() end

---@param CameraKey string
function AIntroductionManagerActor:OnCameraAnimLoaded(CameraKey) end

function AIntroductionManagerActor:OnCameraAnimFinished() end

function AIntroductionManagerActor:ReleaseLoadHandle() end


---@class UIntroActionBase: UObject
---@field ActionFinishDelegate FOnActionFinishDelegate
---@field StepID number
local UIntroActionBase = {}

---@param GuideStepID number
function UIntroActionBase:ExecuteAction(GuideStepID) end

function UIntroActionBase:OnActionFinished() end


---@class UIntroSwitchCameraAction: UIntroActionBase
---@field CameraKey string
---@field SwitchToPlayer boolean
local UIntroSwitchCameraAction = {}


---@class UIntroPlayLevelSequenceAction: UIntroActionBase
---@field LevelSeqIndex number
local UIntroPlayLevelSequenceAction = {}


---@class UIntroPlayCameraAnimAction: UIntroActionBase
---@field CameraKey string
---@field CameraKAnimIndex number
local UIntroPlayCameraAnimAction = {}


---@class UIntroPlaceGuideAreaAction: UIntroActionBase
---@field AreaKey string
---@field GuideID number
---@field IsTriggerNew boolean
---@field ClearPreArea boolean
local UIntroPlaceGuideAreaAction = {}


---@class UIntroLuaAction: UIntroActionBase
---@field LuaFunctionName string
---@field LuaParameter string
local UIntroLuaAction = {}


---@class UIntroLoadUIStyle: UIntroActionBase
---@field IsUnload boolean
local UIntroLoadUIStyle = {}


---@class UIntroRecoverState: UIntroActionBase
local UIntroRecoverState = {}


---@class UIntroClosePlayerInput: UIntroActionBase
---@field IsClose boolean
local UIntroClosePlayerInput = {}
