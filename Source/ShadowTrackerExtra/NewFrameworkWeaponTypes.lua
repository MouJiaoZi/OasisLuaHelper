---@meta

---@class EWeaponGameplayStateStage
---@field EWeaponGameplayStateStage_None number
---@field EWeaponGameplayStateStage_Begin number
---@field EWeaponGameplayStateStage_Tick number
---@field EWeaponGameplayStateStage_Interrupt number
---@field EWeaponGameplayStateStage_End number
---@field EWeaponGameplayStateStage_Finish number
---@field EWeaponGameplayStateStage_PreBegin number
---@field EWeaponGameplayStateStage_PostBegin number
---@field EWeaponGameplayStateStage_PreTick number
---@field EWeaponGameplayStateStage_PostTick number
---@field EWeaponGameplayStateStage_PreEnd number
---@field EWeaponGameplayStateStage_PostEnd number
EWeaponGameplayStateStage = {}


---@class FWeaponGameplayStateConfig
---@field StateDuration number
---@field Attr_StateDuration FGameAttributeContainer
---@field StateCD number
---@field PreStateConditionList ULuaArrayHelper<FConditionEffecttWrapper>
---@field StateConditionList ULuaArrayHelper<FConditionEffecttWrapper>
---@field LeaveStateConditionList ULuaArrayHelper<FConditionEffecttWrapper>
---@field DisabledStateWrapper FGameplayTagWrapper
---@field StageConfigMap ULuaMapHelper<EWeaponGameplayStateStage, FLogicEffectSequenceWrapper>
---@field EnterLeaveWrapperPairConfig FLogicEffectSequenceWrapper
---@field OldWeaponStatePreEnterConfig FLogicEffectSequenceWrapper
---@field StateStartTime number
---@field StateEndTime number
FWeaponGameplayStateConfig = {}
