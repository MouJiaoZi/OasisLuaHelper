---@meta

---@class FBulletImpactAutoTestData
FBulletImpactAutoTestData = {}


---武器自动化测试相关
---@class UShootWeaponAutoTestHandle: UObject
local UShootWeaponAutoTestHandle = {}

---@return string
function UShootWeaponAutoTestHandle:GenerateBulletsImpactJsonStringAndClearData() end

---@param Param1 number
---@param Param2 number
function UShootWeaponAutoTestHandle:TryFlushData(Param1, Param2) end

function UShootWeaponAutoTestHandle:DelayFlushFinished() end
