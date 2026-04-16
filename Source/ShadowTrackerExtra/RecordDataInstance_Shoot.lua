---@meta

---@class FRecordData_ShootFrame
---@field CurrentFrameIndex number
---@field ShootStartPos FVector
---@field ShootRotation FRotator
FRecordData_ShootFrame = {}


---@class URecordData_Shoot: URecordData
---@field KeyFrame ULuaArrayHelper<FRecordData_ShootFrame>
local URecordData_Shoot = {}


---@class URecordDataInstance_Shoot: URecordDataInstance
---@field ShootPostionAbs number
---@field ShootRotationAbs number
---@field CacheData ULuaArrayHelper<FRecordData_ShootFrame>
---@field RegistedShootWeaponComps ULuaArrayHelper<USTExtraShootWeaponComponent>
---@field UseActorSpaceLocation boolean
local URecordDataInstance_Shoot = {}

---@param ShootStartPos FVector
---@param ShootRotation FRotator
function URecordDataInstance_Shoot:HandleEventShoot(ShootStartPos, ShootRotation) end
