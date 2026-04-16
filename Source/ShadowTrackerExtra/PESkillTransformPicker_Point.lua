---@meta

---选点类技能 Picker，选择一个位置
---@class UPESkillTransformPicker_Point: UPESkillTransformPickerBase
---@field MaxDistance FFloatGetter
---@field IgnoreOverlap boolean
---@field TargetAreaType EPESkillPointPickerType
---@field OverlapActorTypes FGameplayTagContainer
---@field CollisionActorFilter FProjectileFilterContainer
---@field CircleRadius FFloatGetter
---@field MeshScale FVector
---@field MaxSlopeAngle number
---@field BlockingChannels ULuaArrayHelper<ECollisionChannel>
---@field CircleActorClass FSoftClassPath
---@field TransparentMaterialPath FSoftObjectPath
local UPESkillTransformPicker_Point = {}
