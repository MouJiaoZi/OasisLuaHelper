---@meta

---@class EDrawDebugItemType
---@field DirectionalArrow number
---@field Sphere number
---@field Line number
---@field OnScreenMessage number
---@field CoordinateSystem number
EDrawDebugItemType = {}


---@class FSubAnimInfo
---@field SubAnimInstanceOriginClass UAnimInstance
---@field SubInstanceSlotName string
---@field SubInstanceSlotBlendTime number
---@field bNeedCacheSubAnimInstances boolean
---@field MaxCacheSubInstanceCount number
---@field CachedSubAnimInstances ULuaMapHelper<UAnimInstance, UAnimInstance>
FSubAnimInfo = {}


---@class FStateMachineInfo
FStateMachineInfo = {}


---@class FSlotNodeInfo
FSlotNodeInfo = {}


---@class FPendingReplacedSubAnimInfo
---@field SubAnimInfo FSubAnimInfo
---@field ReplacedSubInstanceClass UAnimInstance
---@field ReplacedBlendTime number
---@field bIsFromCacheSubAnimInstance boolean
FPendingReplacedSubAnimInfo = {}


---@class FQueuedDrawDebugItem
---@field ItemType EDrawDebugItemType
---@field StartLoc FVector
---@field EndLoc FVector
---@field Center FVector
---@field Rotation FRotator
---@field Radius number
---@field Size number
---@field Segments number
---@field Color FColor
---@field bPersistentLines boolean
---@field LifeTime number
---@field Thickness number
---@field Message string
---@field TextScale FVector2D
FQueuedDrawDebugItem = {}


---@class FQueuedAutoTestDrawDebugItem
---@field ptr number
---@field Message string
FQueuedAutoTestDrawDebugItem = {}


---Proxy object passed around during animation tree update in lieu of a UAnimInstance
---@class FAnimInstanceProxy
---@field PendingRemoveRefSubAnimInstances ULuaArrayHelper<UAnimInstance>
---@field SubAnimInstanceNodeCacheList ULuaArrayHelper<FSubAnimInfo>
FAnimInstanceProxy = {}
