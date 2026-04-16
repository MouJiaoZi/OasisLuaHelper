---@meta

---@class ERightJoystickInputState
---@field ERightJoystickInputState_Start number @开始
---@field ERightJoystickInputState_NoInput number @无输入
---@field ERightJoystickInputState_Input number @正常输入
ERightJoystickInputState = {}


---@class FRightJoystickTargetEffectPair
FRightJoystickTargetEffectPair = {}


---@class UPESkillTargetPicker_RightJoystick: UPESkillTargetPickerBase
---@field JoyStickRangeActorClass FSoftClassPath
---@field JoyStickPosActorClass FSoftClassPath
---@field TargetEffectActorClass FSoftClassPath
---@field TargetEffects ULuaArrayHelper<FRightJoystickTargetEffectPair>
---@field JoyStickRangeRadius FFloatGetter
---@field RangeRadius FFloatGetter
---@field RangeHeight FFloatGetter
---@field RotateToJoystick boolean
local UPESkillTargetPicker_RightJoystick = {}

---@param EventType EPersistEffectClientEvent
---@param TimeStamp number
function UPESkillTargetPicker_RightJoystick:OnClientInputEventTriggered(EventType, TimeStamp) end
