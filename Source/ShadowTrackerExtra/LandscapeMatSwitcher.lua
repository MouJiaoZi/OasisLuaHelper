---@meta

---@class FHoleBoundsInfo
---@field HoleBoundsOrigin FVector
---@field HoleBoundsRadius number
---@field LandscapeComps ULuaArrayHelper<ULandscapeComponent>
FHoleBoundsInfo = {}


---@class ALandscapeMatSwitcher: AActor
---@field SwitchDistance number
---@field SwitchMatName string
---@field HoleBounds ULuaArrayHelper<FHoleBoundsInfo>
local ALandscapeMatSwitcher = {}
