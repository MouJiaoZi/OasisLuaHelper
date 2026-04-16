---@meta

---@class FDoubleGunSwapData
---@field CurBulletNumInOtherHandClip number
---@field bHasSwappedGun number
FDoubleGunSwapData = {}


---@class UDoubleGunComp: UWeaponLogicBaseComponent
---@field CurBulletNumInOtherHandClip number
---@field SyncCurBulletNumInOtherHandClip number
---@field bCacheLastShootUsingOtherHandClip boolean
---@field bHasSwappedGun boolean
---@field SyncSwapData FDoubleGunSwapData
---@field bNeedPlaySwapAnim boolean
---@field CachedLocalFireTypeStatus ULuaArrayHelper<boolean>
local UDoubleGunComp = {}

---@return boolean
function UDoubleGunComp:GetNextShootUsingOtherHandClip() end

---@param bApplySwap boolean
function UDoubleGunComp:SwapGunOnServer(bApplySwap) end

---@return number
function UDoubleGunComp:GetCurClipNumInMainHand() end

---@param bPlay boolean
function UDoubleGunComp:ModifyNeedPlaySwapAnim(bPlay) end

function UDoubleGunComp:OnRep_SyncCurBulletNumInOtherHandClip() end

function UDoubleGunComp:OnRep_NeedPlaySwapAnim() end

---@param BulletNum number
function UDoubleGunComp:HandleFinishReloadOnServer(BulletNum) end

---@param BulletNum number
function UDoubleGunComp:HandleReloadRefreshBullet(BulletNum) end

function UDoubleGunComp:HandleResetInitBulletNum() end

---@param BulletNum number
---@param ClipID number
function UDoubleGunComp:HandleSyncOwnerClientsBulletsNum(BulletNum, ClipID) end

---@param ShootNum number
function UDoubleGunComp:HandleLocalPreShoot(ShootNum) end

---@param ShootNum number
function UDoubleGunComp:HandleLocalShoot(ShootNum) end

---@return number
function UDoubleGunComp:RetrieveStopFireExtraIntData() end

---@param Info FStopFireInfo
function UDoubleGunComp:HandleReceiveStopFireInfoOnServer(Info) end

function UDoubleGunComp:OnRep_SyncSwapData() end

function UDoubleGunComp:FillDoubleClipBullets() end

---@param SlotID number
---@param IsEquipped boolean
function UDoubleGunComp:HandleWeaponMeshLoadFinished(SlotID, IsEquipped) end

---@param bEquip boolean
function UDoubleGunComp:HandleWeaponEquipOrUnequip(bEquip) end

---@param bEquip boolean
function UDoubleGunComp:UpdateMeshAttach(bEquip) end

function UDoubleGunComp:UpdateAnimationData() end

---@param LastState EFreshWeaponStateType
---@param State EFreshWeaponStateType
function UDoubleGunComp:HandleCurEquipedShootWeaponChangeState(LastState, State) end

---@param SlotID number
---@param IsEquipped boolean
function UDoubleGunComp:HandleShadowWeaponMeshLoadFinished(SlotID, IsEquipped) end

---@param bEquip boolean
function UDoubleGunComp:UpdateShadowWeaponMeshAttach(bEquip) end
