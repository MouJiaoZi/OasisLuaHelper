---@meta

---@class ELogicEffectOp
---@field ELogicEffectOp_None number
---@field ELogicEffectOp_Apply number
---@field ELogicEffectOp_UnApply number
---@field ELogicEffectOp_Custom number
ELogicEffectOp = {}


---@class EGameplayStateOp
---@field EGameplayStateOp_None number
---@field EGameplayStateOp_Enter number
---@field EGameplayStateOp_Leave number
---@field EGameplayStateOp_Interrupt number
EGameplayStateOp = {}


---@class FGameplayTagWrapper
---@field TagList ULuaArrayHelper<FGameplayTag>
FGameplayTagWrapper = {}


---@class FConditionEffecttWrapper
FConditionEffecttWrapper = {}


---@class FConditionEffecttWrapper_BlockCheck
FConditionEffecttWrapper_BlockCheck = {}


---@class FLogicEffectWrapper
---@field EffectOp ELogicEffectOp
FLogicEffectWrapper = {}


---@class FLogicEffectSequenceWrapper
---@field EffectWrapperList ULuaArrayHelper<FLogicEffectWrapper>
FLogicEffectSequenceWrapper = {}


---@class FBulletHitEffectWrapper
FBulletHitEffectWrapper = {}


---@class FTargetPickerEffectResultItem
---@field WorldPickPosition FVector
---@field ScreenPosition FVector2D
---@field DistanceSquared number
---@field ItemIndex number
FTargetPickerEffectResultItem = {}
