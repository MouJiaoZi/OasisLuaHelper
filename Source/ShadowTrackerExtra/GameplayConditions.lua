---@meta

---@class EGameplayCondition_OperatorType
---@field EGameplayCondition_Operator_Equal number @等于
---@field EGameplayCondition_Operator_Greater number @大于
---@field EGameplayCondition_Operator_Less number @小于
---@field EGameplayCondition_Operator_GreaterEqual number @大于等于
---@field EGameplayCondition_Operator_LessEqual number @小于等于
EGameplayCondition_OperatorType = {}


---@class EGameplayCondition_SpeedType
---@field EGameplayCondition_SpeedType_All number @三维速度
---@field EGameplayCondition_SpeedType_Horizontal number @水平速度
---@field EGameplayCondition_SpeedType_Vertical number @竖直速度
EGameplayCondition_SpeedType = {}


---@class FGameplayCondition_HandleItemLimit_Config
---@field OperatorType EGameplayCondition_OperatorType
---@field NeedItemNum number
---@field ItemID number
---@field Type number
---@field bCheckBothSide boolean
---@field ShowPrompt boolean
---@field PromptID number
FGameplayCondition_HandleItemLimit_Config = {}


---@class FGameplayCondition_PlayerState_Config
---@field ArrPlayerState ULuaArrayHelper<EPawnState>
---@field bOnlyHasCurrentStates boolean
---@field bMustHasAllStates boolean
---@field ArrFatalPlayerState ULuaArrayHelper<EPawnState>
FGameplayCondition_PlayerState_Config = {}


---@class FGameplayCondition_AllowPawnState_Config
---@field ArrAllowPawnState ULuaArrayHelper<EPawnState>
---@field bCheckBothSide boolean
---@field ShowPrompt boolean
---@field PromptID number
FGameplayCondition_AllowPawnState_Config = {}


---@class FGameplayCondition_MoveSpeed_Config
---@field OperatorType EGameplayCondition_OperatorType
---@field SpeedValue number
---@field SpeedType EGameplayCondition_SpeedType
FGameplayCondition_MoveSpeed_Config = {}


---@class UGameplayConditions: UBlueprintFunctionLibrary
local UGameplayConditions = {}

---从 UUAESkillCondition_HandleItemLimit 迁移
---@param Config FGameplayCondition_HandleItemLimit_Config
---@param Character ACharacter
---@return boolean
function UGameplayConditions:GameplayCondition_HandleItemLimit(Config, Character) end

---从 UUAESkillCondition_PlayerState 迁移
---@param Config FGameplayCondition_PlayerState_Config
---@param Character ACharacter
---@return boolean
function UGameplayConditions:GameplayCondition_PlayerState(Config, Character) end

---从 UUAESkillCondition_WeaponCreating 迁移
---@param Character ACharacter
---@return boolean
function UGameplayConditions:GameplayCondition_WeaponCreating(Character) end

---从 UUAESkillCondition_AllowPawnState 迁移
---@param Config FGameplayCondition_AllowPawnState_Config
---@param Character ACharacter
---@return boolean
function UGameplayConditions:GameplayCondition_AllowPawnState(Config, Character) end

---从 UUAESkillCondition_MovementMode 迁移
---@param MovementModeArray ULuaArrayHelper<EMovementMode>
---@param Character ACharacter
---@return boolean
function UGameplayConditions:GameplayCondition_MovementMode(MovementModeArray, Character) end

---从 UUAESkillCondition_MoveSpeed 迁移
---@param Config FGameplayCondition_MoveSpeed_Config
---@param Character ACharacter
---@return boolean
function UGameplayConditions:GameplayCondition_MoveSpeed(Config, Character) end
