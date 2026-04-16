---@meta

---@class UScreenAppearanceProvider_GrenadeFlash: UScreenAppearanceProvider_Plane
---@field ParameterName string
local UScreenAppearanceProvider_GrenadeFlash = {}


---@class UScreenAppearanceProvider_GrenadeSmoke: UScreenAppearanceProvider_Plane
---@field ParameterName string
---@field bDisplayOnFPP number
---@field bDisplayOnTPP number
local UScreenAppearanceProvider_GrenadeSmoke = {}


---@class UScreenAppearanceProvider_GrenadeFlashWithFlare: UScreenAppearanceProvider_Plane
---@field ParameterName_FlareLocationX string
---@field ParameterName_FlareLocationY string
---@field LocOffset FVector
---@field Limit FVector4
---@field FlareOffset FVector2D
---@field FlarePosition FVector2D
---@field FlareScale number
local UScreenAppearanceProvider_GrenadeFlashWithFlare = {}

---@param OwnerPawn AActor
---@param InCauser AActor
function UScreenAppearanceProvider_GrenadeFlashWithFlare:InitProvider_BP(OwnerPawn, InCauser) end

---@param InCauser AActor
function UScreenAppearanceProvider_GrenadeFlashWithFlare:CaculateFlarePosition(InCauser) end
