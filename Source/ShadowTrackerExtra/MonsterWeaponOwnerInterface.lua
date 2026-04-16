---@meta

---@class IMonsterWeaponOwnerInterface
IMonsterWeaponOwnerInterface = {}

---获取角色当前姿势
---@return EMonsterWeaponPose
function IMonsterWeaponOwnerInterface:GetPawnPose() end

---设置角色姿势
---@param NewPose EMonsterWeaponPose
function IMonsterWeaponOwnerInterface:SetPawnPose(NewPose) end

---获取角色当前探头姿势
---@return EMonsterPeekPose
function IMonsterWeaponOwnerInterface:GetPawnPeekPose() end

---设置角色探头姿势
---@param NewPeekPose EMonsterPeekPose
function IMonsterWeaponOwnerInterface:SetPawnPeekPose(NewPeekPose) end
