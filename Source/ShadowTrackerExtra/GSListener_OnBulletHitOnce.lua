---@meta

---@class UGSListener_OnBulletHitOnce: USTNewbieGuideSuccessListenerBase
---@field MultiBulletWeaponDelayDisableTime number
local UGSListener_OnBulletHitOnce = {}

---@param BulletHitInfo FBulletHitInfoUploadData
---@param Weapon ASTExtraShootWeapon
function UGSListener_OnBulletHitOnce:OnBulletHitOnce(BulletHitInfo, Weapon) end

function UGSListener_OnBulletHitOnce:TimerFunction() end
