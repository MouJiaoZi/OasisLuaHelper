---@meta

---@class APrecomputedVisibilityOverrideVolume: AVolume
---@field OverrideVisibleActors ULuaArrayHelper<AActor> @Array of actors that will always be considered visible by Precomputed Visibility when viewed from inside this volume.
---@field OverrideInvisibleActors ULuaArrayHelper<AActor> @Array of actors that will always be considered invisible by Precomputed Visibility when viewed from inside this volume.
---@field OverrideInvisibleLevels ULuaArrayHelper<string> @Array of level names whose actors will always be considered invisible by Precomputed Visibility when viewed from inside this volume.
local APrecomputedVisibilityOverrideVolume = {}
