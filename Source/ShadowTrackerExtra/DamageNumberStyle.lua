---@meta

---@class EDamageNumberStartPosition
---@field CharacterPosition number @角色位置
---@field DamagePosition number @伤害位置
---@field DamageBodyPart number @伤害部位
EDamageNumberStartPosition = {}


---@class UDamageNumberStyle: UObject
---@field Victim AActor
---@field Causer AActor
---@field DamageTypeTags ULuaArrayHelper<FGameplayTag>
---@field bCentreX boolean
---@field bCentreY boolean
---@field TextYOffset number
---@field SpriteText USpriteText
---@field bDamageAccumulated boolean
---@field DamageAccumulatedThreshold number
---@field MaxDamageHistoryCount number
---@field DamageHistoryLifeTime number
---@field EnhanceScale number
---@field MaxNumberInstCount number
---@field bRemoveWhenTargetActorDestroy boolean
---@field StyleConfig FDamageNumberConfig
---@field BlendMode EBlendMode
---@field StartPosition EDamageNumberStartPosition
---@field OriginPositionRangeX FVector2D
---@field OriginPositionRangeY FVector2D
---@field MoveDirection FVector2D
---@field DesignedResolution number
---@field Position FVector2D
---@field Size FVector2D
---@field Origin FVector2D
---@field ScreenPosition FVector2D
---@field bScaleByDesignedResolution number
---@field bMaintainAspectRatio number
---@field Opacity number
---@field bIgnoreHUDBaseColor number
local UDamageNumberStyle = {}
