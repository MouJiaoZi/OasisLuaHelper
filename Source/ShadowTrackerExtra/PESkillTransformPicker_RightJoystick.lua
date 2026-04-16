---@meta

---选点类技能 Picker，选择一个位置
---@class UPESkillTransformPicker_RightJoystick: UPESkillTransformPickerBase
---@field JoyStickRangeRadius FFloatGetter
---@field RotateToJoystick boolean
---@field IgnoreOverlap boolean
---@field TargetAreaType EPESkillPointPickerType
---@field OverlapActorTypes FGameplayTagContainer
---@field CollisionActorFilter FProjectileFilterContainer
---@field CircleRadius FFloatGetter
---@field MeshScale FVector
---@field MaxSlopeAngle number
---@field BlockingChannels ULuaArrayHelper<ECollisionChannel>
---@field JoyStickRangeActorClass FSoftClassPath
---@field JoyStickPosActorClass FSoftClassPath
---@field TransparentMaterialPath FSoftObjectPath
local UPESkillTransformPicker_RightJoystick = {}

---@param EventType EPersistEffectClientEvent
---@param TimeStamp number
function UPESkillTransformPicker_RightJoystick:OnClientInputEventTriggered(EventType, TimeStamp) end
