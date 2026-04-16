---@meta

---技能虚拟摇杆基类
---@class UPESkillVirtualJoystick: UVirtualJoystick
local UPESkillVirtualJoystick = {}

---@param OwnerSkill UPersistEffectSkill
function UPESkillVirtualJoystick:BindOwnerSkill(OwnerSkill) end

---@param JSInput FVector2D
---@param Size FVector2D
function UPESkillVirtualJoystick:ReceiveJoystickInput(JSInput, Size) end
