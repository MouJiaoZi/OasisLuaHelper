---@meta

---@class FCommonEmoteRepData
---@field EmoteID number
---@field StartTime number
FCommonEmoteRepData = {}


---@class FCurrentPlayEmoteState
---@field EmoteID number
---@field StartTime number
---@field IsLocal boolean
---@field CurrentLoadedEmoteBlendTime number
---@field bIsLoopAnimation boolean
FCurrentPlayEmoteState = {}


---@class FCommonEmoteSequenceInfo
---@field EmoteIDs ULuaArrayHelper<number>
---@field Loop boolean
---@field CurrentIndex number
FCommonEmoteSequenceInfo = {}


---@class UCommonEmoteComponent: UActorComponent
---@field EmoteBPIDToAnimHandleMap ULuaMapHelper<number, UBackpackEmoteHandle>
---@field EmoteSlot string
---@field bCheckEmoteHandle number
---@field EmotePlayRate number
---@field EmoteRepData FCommonEmoteRepData
---@field CurrentEmoteState FCurrentPlayEmoteState
---@field CurrentEmoteSeq FCommonEmoteSequenceInfo
---@field ServerEmoteTimer FTimerHandle
local UCommonEmoteComponent = {}

---@param EmoteID number
---@param ReqMulti boolean
function UCommonEmoteComponent:ClientPlayEmote(EmoteID, ReqMulti) end

---@param EmoteID number
function UCommonEmoteComponent:PlayEmoteImpl(EmoteID) end

---@param EmoteID number
function UCommonEmoteComponent:ServerPlayEmote(EmoteID) end

---@param EmoteIDs ULuaArrayHelper<number>
---@param Loop boolean
function UCommonEmoteComponent:ServerPlayEmoteSequence(EmoteIDs, Loop) end

function UCommonEmoteComponent:StartPlayEmoteSequence() end

---@return boolean
function UCommonEmoteComponent:PlayNextEmote() end

---@param EmoteID number
---@param CurrentEmoteAnim UAnimationAsset
function UCommonEmoteComponent:OnServerAsyncLoadEmoteAnim(EmoteID, CurrentEmoteAnim) end

function UCommonEmoteComponent:OnRep_EmoteRepData() end

function UCommonEmoteComponent:StopPlayEmote() end

function UCommonEmoteComponent:ServerStopPlayEmote() end

function UCommonEmoteComponent:InterruptEmoteOnServer() end

function UCommonEmoteComponent:InterruptEmoteOnClient() end

function UCommonEmoteComponent:ServerOnEmoteFinished() end

---@param CurrentEmoteAnim UAnimationAsset
function UCommonEmoteComponent:OnAsyncLoadEmoteAnim(CurrentEmoteAnim) end
