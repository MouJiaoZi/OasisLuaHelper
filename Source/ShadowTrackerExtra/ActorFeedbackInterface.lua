---@meta

---@class IActorFeedbackInterface: IInterface
IActorFeedbackInterface = {}

---Hit Feedback
---@param InHitActor AActor
---@return boolean
function IActorFeedbackInterface:IsNeedHitFeedback(InHitActor) end

---@param InHitActor AActor
function IActorFeedbackInterface:TriggerHitFeedback(InHitActor) end

---Be Hit Feedback
---@param InHitTriggerActor AActor
---@return boolean
function IActorFeedbackInterface:IsNeedBeHitFeedback(InHitTriggerActor) end

---@param InHitTriggerActor AActor
function IActorFeedbackInterface:TriggerBeHitFeedback(InHitTriggerActor) end
