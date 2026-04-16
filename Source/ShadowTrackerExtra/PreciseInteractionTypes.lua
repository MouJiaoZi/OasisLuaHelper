---@meta

---@class EInteractionDataType
---@field TraceInteract number @Trace到的精准交互
---@field FuzzyPickup number @模糊搜索到的拾取物
---@field ExtraInteract number @手动添加的额外交互
---@field UnKnown number @未知类型
EInteractionDataType = {}


---@class EInteractionDataOrigin
---@field Precise number @手动添加的精准交互
---@field Scope number @手动添加的范围交互
---@field Extra number @手动添加的额外交互
EInteractionDataOrigin = {}


---@class EPCInteractionMode
---@field Original number @移动端交互模式
---@field ScopeInteract number @范围交互模式
---@field PreciseInteract number @精准交互模式
---@field Unknown number @未知类型
EPCInteractionMode = {}


---@class ECheckInteractPhase
---@field CollectBehavior number @收集交互行为阶段
---@field PreciseTrace number @精确选择阶段
ECheckInteractPhase = {}


---@class FInteractBehaviorUIInfo
---@field PromptText string
---@field IconPath string
---@field RenderOpacity number
FInteractBehaviorUIInfo = {}


---@class FInteractBehavior
---@field BehaviorKey string
---@field UIInfo FInteractBehaviorUIInfo
---@field bHiddenInScopeInteraction boolean
FInteractBehavior = {}


---@class FInteractBehaviorList
---@field bUseVisibilityDetection boolean
---@field UIWidget UUAEUserWidget
---@field Behaviors ULuaArrayHelper<FInteractBehavior>
---@field InteractionDataType EInteractionDataType
---@field UISlot number
---@field UniqueID number
FInteractBehaviorList = {}


---@class FInteractBehaviorWrapper
---@field BehaviorListPackage ULuaArrayHelper<FInteractBehaviorList>
FInteractBehaviorWrapper = {}


---@class FInteractBehaviorContext
---@field BehaviorName string
---@field InteractionDataType EInteractionDataType
---@field CheckPhase ECheckInteractPhase
FInteractBehaviorContext = {}


---@class FInteractionCollisionData
---@field CapsuleHalfHeight number @Half-height, from center of capsule to the end of top or bottom hemisphere. This cannot be less than CapsuleRadius.
---@field CapsuleRadius number @Radius of cap hemispheres and center cylinder. This cannot be more than CapsuleHalfHeight.
---@field CapsuleOffset FVector
FInteractionCollisionData = {}


---@class FInteractionOverlapResult
---@field Actor AActor @Actor that the check hit.
---@field Component UPrimitiveComponent @PrimitiveComponent that the check hit.
---@field bBlockingHit number @Indicates if this hit was requesting a block - if false, was requesting a touch instead
---@field InteractionDataType EInteractionDataType
FInteractionOverlapResult = {}


---@class FExtraInteractionManually
---@field Interactor UObject
---@field TargetObject UObject
---@field AreaIndicator UObject
---@field DataOrigin EInteractionDataOrigin
FExtraInteractionManually = {}


---@class FExtraInteractionList
---@field InteractionList ULuaArrayHelper<FExtraInteractionManually>
FExtraInteractionList = {}


---@class FInteractOverlapDebugInfo
FInteractOverlapDebugInfo = {}


---@class FInteractOverlapDebugInfoList
---@field bPrecsice boolean
---@field InteractOverlapDebugInfos ULuaArrayHelper<FInteractOverlapDebugInfo>
FInteractOverlapDebugInfoList = {}


---@class FScopeInteractionInfo
---@field TargetActor AActor
---@field BehaviorWrapper FInteractBehaviorWrapper
---@field Distance number
---@field bIsPrecise boolean
---@field bIsRelevantToPickUpList boolean
FScopeInteractionInfo = {}


---@class FStateUILinkageList
---@field LinkedUINames ULuaArrayHelper<string>
FStateUILinkageList = {}


---@class IPreciseInteractionInterface
IPreciseInteractionInterface = {}


---@class IInteractorInterface
IInteractorInterface = {}

---@param BehaviorContext FInteractBehaviorContext
---@return boolean
function IInteractorInterface:ExecuteInteractBehavior(BehaviorContext) end

---@param BehaviorContext FInteractBehaviorContext
---@return boolean
function IInteractorInterface:CheckBehaviorCanInteract(BehaviorContext) end

---@param Interactor UObject
---@return FInteractBehaviorWrapper
function IInteractorInterface:GetInteractBehavior(Interactor) end


---@class IScopeInteractionInterface
IScopeInteractionInterface = {}

---@return boolean
function IScopeInteractionInterface:IsRelevantToPickUpList() end
