---@meta

---选点类技能 Picker，选择多个位置
---@class UPESkillTransformPicker_MultRing: UPESkillTransformPickerBase
---@field StartTransform FPESkillTransformOffset
---@field MinDistance number
---@field MaxDistance number
---@field CountMin number
---@field CountMax number
---@field CollisionActorFilter FProjectileFilterContainer
---@field bShowRing boolean
---@field CircleRadius number
---@field IgnoreOverlap boolean
---@field bCanReach boolean
---@field UpRange number
---@field MaxSlopeAngle number
---@field bSnapToNavMesh boolean
---@field SnapToNavMeshRadius number
---@field RandomTimes number
---@field ColorMin FLinearColor
---@field ColorMax FLinearColor
---@field BlockingChannels ULuaArrayHelper<ECollisionChannel>
---@field CircleActorClass FSoftClassPath
---@field TransparentMaterialPath FSoftObjectPath
---@field MeshActors ULuaArrayHelper<AStaticMeshActor>
---@field CircleActors ULuaArrayHelper<AEmitter>
local UPESkillTransformPicker_MultRing = {}

---@param InProgress number
function UPESkillTransformPicker_MultRing:SetProgress(InProgress) end
