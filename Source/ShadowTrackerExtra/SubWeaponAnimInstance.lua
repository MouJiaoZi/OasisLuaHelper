---@meta

---@class EAmmoDisplayType
---@field Normal number
---@field ShowAllFromBackpack number
---@field HideAllIfLack number
EAmmoDisplayType = {}


---@class UWeaponPhysicsEffectDataAsset: UDataAsset
---@field bEnablePhysicsEffect boolean
---@field bEnableRotateViewWave boolean
---@field bEnableCharMoveWave boolean
---@field MoveDampingRatio number
---@field StopDampingRatio number
---@field PhysicsSmoothTime number
---@field WaveMaxBoneIdx number
---@field WaveMinBoneIdx number
---@field PerBoneOffsetRight FVector
---@field PerBoneOffsetLeft FVector
---@field ZShakeVelocity number
---@field ChainPrefix string
local UWeaponPhysicsEffectDataAsset = {}


---@class USubWeaponAnimInstance: USTExtraWeaponAnimInstance
---@field CharWeaponEditList ULuaArrayHelper<FCharWeaponAnimData>
---@field CharWeaponEditListNewFPP ULuaArrayHelper<FCharWeaponAnimData>
---@field bEnableUpdateAmmos boolean
---@field AmmoPrefix string
---@field bEnableUpdateChain boolean
---@field BulletNumInBarrel number
---@field bResetClipWhenInitialize boolean
---@field AmmoHideAllThreshold number
---@field bNeedResetClip boolean
---@field bNeedHideAllIfLack boolean
---@field TotalChainOffset number
---@field ChainOffset FVector
---@field TargetOffset FVector
---@field CurrentOffset FVector
---@field CurrentVelocity FVector
---@field LastLocation FVector
---@field PhysicsOffsets ULuaArrayHelper<FVector>
---@field CachedAttachmentSlotID number
local USubWeaponAnimInstance = {}

function USubWeaponAnimInstance:HandleBulletNumChanged() end

function USubWeaponAnimInstance:HandleWeaponEndReload() end

---@param bReset boolean
function USubWeaponAnimInstance:SetNeedResetClip(bReset) end

---@param bHide boolean
function USubWeaponAnimInstance:SetNeedHideAllIfLack(bHide) end

---@param DisplayType EAmmoDisplayType
function USubWeaponAnimInstance:UpdateAmmoDisplay(DisplayType) end

function USubWeaponAnimInstance:UpdateOverrideBoneTransforms() end

---@param DeltaSeconds number
function USubWeaponAnimInstance:HandleChainPhysicsEffect(DeltaSeconds) end
