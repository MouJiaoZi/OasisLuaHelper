---@meta

---@class EGamePawnEvent
---@field None number
---@field Birth number
---@field ViewPlane number
---@field Plane number
---@field Jump number
---@field Parachute number
---@field Land number
---@field Die number
---@field ReBirth number
---@field HeightCheck_High number
---@field HeightCheck_Mid number
---@field HeightCheck_Low number
---@field Fighting number
---@field ShrinkCircle number
---@field ReceiveInvite number
---@field InBombingArea number
EGamePawnEvent = {}


---@class FGamePawnEventDelegate : ULuaMulticastDelegate
FGamePawnEventDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGamePawnEventDelegate:Add(Callback, Obj) end

---触发 Lua 广播
function FGamePawnEventDelegate:Broadcast() end


---@class FGamePawnEventSingleDelegate : ULuaSingleDelegate
FGamePawnEventSingleDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGamePawnEventSingleDelegate:Bind(Callback, Obj) end

---执行委托
function FGamePawnEventSingleDelegate:Execute() end


---@class UGameEventListener: UActorComponent
---@field OnGameEventListener FGamePawnEventDelegate
---@field HeightCheck_High number
---@field HeightCheck_Mid number
---@field HeightCheck_Low number
---@field FlyingScreenSizeCullingFactor number
---@field FlyingDistanceCullingFactor number
---@field HighMidFightingScreenSizeCullingFactor number
---@field HighMidFightingDistanceCullingFactor number
---@field LowFightingScreenSizeCullingFactor number
---@field LowFightingDistanceCullingFactor number
---@field DelaySecondsForEnterNgiht number
---@field DelaySecondsForExitNgiht number
---@field LODDistanceScaleAtNight ULuaArrayHelper<number>
---@field ViewDistanceScaleAtNight ULuaArrayHelper<number>
---@field FoliageViewDistanceScaleAtNight ULuaArrayHelper<number>
---@field ScreenSizeCullingFactorAtNight ULuaArrayHelper<number>
---@field bUsetoControlNearClip boolean
---@field bNearClipInPlane boolean
---@field NearClipLanded number
---@field NearClipFlying number
---@field NearClipFlyingVehicle number
---@field WinOBFreeView_ScreenSizeCullingFactor number
---@field WinOBFreeView_ViewDistanceScale number
---@field bAutoSetNearClipPlaneEnabled boolean
---@field bDebugNearClipAutoSet boolean
---@field AutoNearClipHeight number
---@field AutoNearClipPriority number
---@field MaxNearClipValue number
---@field DistToCamRatio number
local UGameEventListener = {}

---@return boolean
function UGameEventListener:IsPlayerLanded() end

---@return boolean
function UGameEventListener:IsPlayerFlying() end

---@return boolean
function UGameEventListener:IsPlayerLandFromTheAir() end

---@param InDelegate FGamePawnEventSingleDelegate
function UGameEventListener:RegisterGameEvent(InDelegate) end

---@param InDelegate FGamePawnEventSingleDelegate
function UGameEventListener:UnregisterGameEvent(InDelegate) end

---@param pawnevent EGamePawnEvent
function UGameEventListener:ScaleScreenSizeCulling(pawnevent) end

function UGameEventListener:GameEventBirth() end

function UGameEventListener:GameEventPlane() end

function UGameEventListener:GameEventPlane_KeepNearClipNotChanged() end

function UGameEventListener:ChangeViewtargetToPlane() end

function UGameEventListener:GameEventJump() end

function UGameEventListener:GameEventParachute() end

function UGameEventListener:GameEventLanded() end

---@param currentHP number
---@param ratioHP number
function UGameEventListener:GameEventDie(currentHP, ratioHP) end

function UGameEventListener:GameEventReBirth() end

function UGameEventListener:GameEventFighting() end

function UGameEventListener:GameEventEnterNight() end

function UGameEventListener:GameEventExitNight() end

---@param bIsInFortress boolean
function UGameEventListener:GameEventIsInFortressChanged(bIsInFortress) end

function UGameEventListener:StarCalcJump() end

function UGameEventListener:HeightCheck() end

function UGameEventListener:CheckEnableNearClipAutoSet() end

---@param PlayerCameraManager ASTPlayerCameraManager
---@param CameraLoc FVector
---@param CameraRot FRotator
function UGameEventListener:OnPlayerCameraUpdated(PlayerCameraManager, CameraLoc, CameraRot) end

---@param InMaxNearClipValue number
---@return number
function UGameEventListener:RemapMaxNearClipValue(InMaxNearClipValue) end

function UGameEventListener:OnChangeViewTarget() end

---@param isFreeView boolean
function UGameEventListener:OnFreeViewChanged(isFreeView) end

function UGameEventListener:GameEventStartShrinkCircle() end

function UGameEventListener:GameEventReceiveInviteNextBattle() end

function UGameEventListener:GameEventInBomingArea() end

---@param IsEnterOrLeave boolean
function UGameEventListener:GameEventEnterFlyVehicle(IsEnterOrLeave) end

---@param PossessActor AActor
function UGameEventListener:GameEventEnterPossess(PossessActor) end

---@param bEnable boolean
function UGameEventListener:SetNearClipLandedEnable(bEnable) end

---@param bEnable boolean
function UGameEventListener:SetNearClipFlyingEnable(bEnable) end
