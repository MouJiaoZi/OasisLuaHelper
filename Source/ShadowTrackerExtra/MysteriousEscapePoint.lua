---@meta

---@class EMysteriousEscapePointState
---@field Born number @初始
---@field Dormant number @休眠
---@field Active number @活动
---@field Finish number @结束
EMysteriousEscapePointState = {}


---@class FPayEscapeCashCamp
---@field CampID number
---@field PayCashTime number
FPayEscapeCashCamp = {}


---@class AMysteriousEscapePoint: AActor
---@field EscapePointID number
---@field EscapePointState EMysteriousEscapePointState
---@field PayCashCampList ULuaArrayHelper<FPayEscapeCashCamp>
---@field EvacuatePlayerList ULuaArrayHelper<number>
---@field EvacuateTimeLimit number
---@field EvacuatePlayerCountLimit number
---@field PayCashID number
---@field PayCashCount number
---@field bAllowRepeatPay boolean
---@field bLocalPlayerEvacuateActionTriggered boolean
---@field CheckPayCashCampListTimerHandle FTimerHandle
---@field CheckPayCashCampListInterval number
---@field ClientTriggerEscapePointController AActor
---@field PayCashMsgID number
---@field TeammatePayCashMsgID number
---@field EvacuateTimeRemindTime number
---@field EvacuateTimeRemindMsgID number
---@field OutofEvacuateTimeMsgID number
---@field TeammateEvacuateMsgID number
---@field NotEnoughCashMsgID number
local AMysteriousEscapePoint = {}

---@param InCampID number
---@return boolean
function AMysteriousEscapePoint:IsCampCanPay(InCampID) end

---@param InCampID number
---@return boolean
function AMysteriousEscapePoint:IsCampCanEvacuate(InCampID) end

---@param InTargetController ASTExtraPlayerController
function AMysteriousEscapePoint:NotifyNotEnoughCash(InTargetController) end

---@param InTargetController ASTExtraPlayerController
function AMysteriousEscapePoint:NotifyPayCashSuccess(InTargetController) end

---@param InTargetController ASTExtraPlayerController
function AMysteriousEscapePoint:NotifyEvacuateSuccess(InTargetController) end

---@param InTargetCamp number
function AMysteriousEscapePoint:NotifyEvacuateTime(InTargetCamp) end

---@param InTargetCamp number
function AMysteriousEscapePoint:NotifyOutofEvacuateTime(InTargetCamp) end

---@param InContextObj UObject
function AMysteriousEscapePoint:PayEscapeCash(InContextObj) end

---@param InContextObj UObject
function AMysteriousEscapePoint:EscapePlayer(InContextObj) end

function AMysteriousEscapePoint:CheckPayCashCampList() end

function AMysteriousEscapePoint:OnRep_EscapePointState() end

function AMysteriousEscapePoint:OnRep_EscapePointID() end

function AMysteriousEscapePoint:OnRep_PayCashCampList() end

function AMysteriousEscapePoint:OnRep_EvacuateList() end

function AMysteriousEscapePoint:OnRep_PayCashID() end

function AMysteriousEscapePoint:OnRep_PayCashCount() end

---@param InTriggerActor AActor
function AMysteriousEscapePoint:BP_OnEnterEscapeTrigger(InTriggerActor) end

---@param InTriggerActor AActor
function AMysteriousEscapePoint:BP_OnLeaveEscapeTrigger(InTriggerActor) end

function AMysteriousEscapePoint:BP_LocalControlPlayerEvacuateAction() end

function AMysteriousEscapePoint:BP_EscapePointStateChanged() end

function AMysteriousEscapePoint:BP_PayCashCampChanged() end

function AMysteriousEscapePoint:BP_EvacuateListChanged() end

---@param InEvacuateChar ASTExtraBaseCharacter
function AMysteriousEscapePoint:BP_EvacuateChar(InEvacuateChar) end
