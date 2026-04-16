---@meta

---@class ERightJoystickDirectionType
---@field ERightJoystickDirectionType_Arrow number @箭头方向
---@field ERightJoystickDirectionType_Fan number @扇形方向
ERightJoystickDirectionType = {}


---@class UPESkillDirectionPicker_RightJoystick: UPESkillDirectionPickerBase
---@field JoyStickRangeRadius FFloatGetter
---@field DirectionType ERightJoystickDirectionType
---@field Width FFloatGetter
---@field HalfAngle FFloatGetter
---@field RotateToJoystick boolean
---@field JoyStickRangeActorClass FSoftClassPath
---@field JoyStickArrowActorClass FSoftClassPath
---@field JoyStickFanActorClass FSoftClassPath
local UPESkillDirectionPicker_RightJoystick = {}

---@param EventType EPersistEffectClientEvent
---@param TimeStamp number
function UPESkillDirectionPicker_RightJoystick:OnClientInputEventTriggered(EventType, TimeStamp) end
