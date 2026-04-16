---@meta

---@class FAduioEvents
---@field Events ULuaArrayHelper<UAkAudioEvent>
---@field ShowID1 number
---@field ShowID2 number
FAduioEvents = {}


---@class FGlobalEventInfo
---@field GlobalCD number
---@field PlayLastTime number
FGlobalEventInfo = {}


---@class FAudioEventInfo3D
---@field Pro2Events ULuaMapHelper<number, FAduioEvents>
---@field CD number
---@field bCanHearSelf boolean
---@field GlobalEventName string
---@field PlayLastTime number
FAudioEventInfo3D = {}


---@class FAudioEventInfo3DGlobal
---@field RandomBegin number
---@field RandomEnd number
FAudioEventInfo3DGlobal = {}


---@class FAudio3dQueueInfo
---@field _InWeakActor AActor
---@field PlayTime number
FAudio3dQueueInfo = {}


---@class FAudioConfigData
---@field AudioMap ULuaMapHelper<string, FAduioEvents>
FAudioConfigData = {}


---@class FCheckGlobalAudioEvents
---@field GlobalEvents ULuaArrayHelper<UGlobalAudioTickCheckFunc>
FCheckGlobalAudioEvents = {}


---@class UAudioCondition: UObject
local UAudioCondition = {}

---@return boolean
function UAudioCondition:IsOK() end


---@class UGlobalAudioCondition: UAudioCondition
---@field OwnerGameState AGameState
local UGlobalAudioCondition = {}


---@class UGlobalAudioTickCheckFunc: UObject
---@field EventName string
---@field ConditionClass UGlobalAudioCondition
---@field bEnable boolean
local UGlobalAudioTickCheckFunc = {}

function UGlobalAudioTickCheckFunc:BoradEventToCamp() end

---@param GS AGameState
function UGlobalAudioTickCheckFunc:InitCondition(GS) end

function UGlobalAudioTickCheckFunc:DestroyCondition() end


---@class UPlayAudioComponent: UActorComponent, ILuaInterface
---@field Audios3D ULuaMapHelper<string, FAudioEventInfo3D>
---@field GlobalAudios3D ULuaMapHelper<string, FAudioEventInfo3DGlobal>
---@field Global3DEventInfos ULuaMapHelper<string, FGlobalEventInfo>
---@field Audios2D ULuaMapHelper<string, FAduioEvents>
---@field Audios2D_Desert ULuaMapHelper<string, FAduioEvents>
---@field AudiosExtra ULuaArrayHelper<FAudioConfigData>
---@field AttackerLeaderName string
---@field DefenderLeaderName string
---@field WaitingEvent3DList ULuaArrayHelper<FAudio3dQueueInfo>
---@field WaitingEvent2DList ULuaArrayHelper<UAkAudioEvent>
---@field WaitingShowStringList ULuaArrayHelper<number>
---@field PlayAudio2DAtGameTime number
---@field Audio2DLength number
---@field MyPlayKey number
---@field IsAttacker boolean
local UPlayAudioComponent = {}

---@return string
function UPlayAudioComponent:GetLuaModule() end

---@param EventName string
---@param bIsAttacker boolean
---@param UseIndex number
function UPlayAudioComponent:ReceivePlayAudio2D(EventName, bIsAttacker, UseIndex) end

---@param EventName string
function UPlayAudioComponent:ReceivePlayAudio2DOnlyEvent(EventName) end

---@param EventName string
function UPlayAudioComponent:LuaReceivePlayAudio2DOnlyEvent(EventName) end

---@param EventName string
---@param bIsAttacker boolean
---@param UseIndex number
function UPlayAudioComponent:PlayAudio2D(EventName, bIsAttacker, UseIndex) end

---@param EventName string
---@param _pActor AActor
---@param bIsMale boolean
---@param UseIndex number
function UPlayAudioComponent:PlayAudio3D(EventName, _pActor, bIsMale, UseIndex) end

---@param ShowID number
function UPlayAudioComponent:ShowChatUI(ShowID) end

---@param EventName string
---@param UseIndex number
function UPlayAudioComponent:PlayAudio2DAsync(EventName, UseIndex) end
