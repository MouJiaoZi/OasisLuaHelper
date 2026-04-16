---@meta

---@class EPerspectiveTypes
---@field None number
---@field ShootDamage number
---@field SkillDetectGun number
---@field ReconDrone number
---@field SkillLifeDetector number
EPerspectiveTypes = {}


---@class FPerspectivePermanentStruct
---@field PermanentType EPerspectiveTypes
---@field InstigatorPlayerKeyList ULuaArrayHelper<number>
FPerspectivePermanentStruct = {}


---@class FPerspectiveStoreDataStruct
---@field bPermanent boolean
---@field ExpireTime number
---@field PermanentReasonList ULuaArrayHelper<FPerspectivePermanentStruct>
FPerspectiveStoreDataStruct = {}


---@class UPerspectiveComponent: UActorComponent
---@field bPerspective boolean
---@field PerspectiveData FPerspectiveStoreDataStruct
local UPerspectiveComponent = {}

function UPerspectiveComponent:FreshPerspectiveEffect() end

---@param bShow boolean
function UPerspectiveComponent:MakePerspectiveEffect(bShow) end
