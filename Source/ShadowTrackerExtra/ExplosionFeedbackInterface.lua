---@meta

---@class IExplosionFeedbackInterface
IExplosionFeedbackInterface = {}


---@class IEMPFeedbackInterface: IExplosionFeedbackInterface
IEMPFeedbackInterface = {}

---@param EMPActor AActor
---@param Origin FVector
---@param InstigatedByController AController
function IEMPFeedbackInterface:TriggerExplodedEffectFeedback(EMPActor, Origin, InstigatedByController) end
