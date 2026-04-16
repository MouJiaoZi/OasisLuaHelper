---@meta

---@class UFixWeaponManagerComponent: UActorComponent
---@field WeaponID FItemDefineID
---@field ResetControlRotationSpeed number
---@field ResetControlRotationOffset FRotator
---@field UpdateBulletMsg string
---@field SavedBulletNumInClip number
---@field bWeaponLoadFinished boolean
---@field OnWeaponLoadFinishedDelegate FOnWeaponLoadFinishedDelegate
---@field OnPlayerGetWeaponDelegate FOnPlayerGetWeaponDelegate
---@field OnPlayerDisuseDelegate FOnPlayerDisuseDelegate
---@field OnPlayerStartUseDelegate FOnPlayerStartUseDelegate
---@field OnWeaponStartReloadDelegate FOnWeaponStartReloadDelegate
---@field OnWeaponReloadEndDelegate FOnWeaponReloadEndDelegate
---@field bPlayerIsOriginFpp boolean
---@field bIsLepingControlRotation boolean
local UFixWeaponManagerComponent = {}

---@param Player ASTExtraBaseCharacter
---@param FixWeaponActor AActor
function UFixWeaponManagerComponent:HandlePlayerStartUseFixWeapon(Player, FixWeaponActor) end

---@param Player ASTExtraBaseCharacter
---@param FixWeaponActor AActor
---@return boolean
function UFixWeaponManagerComponent:BPHandlePlayerStartUseFixWeapon(Player, FixWeaponActor) end

---@param Player ASTExtraBaseCharacter
---@param FixWeaponActor AActor
function UFixWeaponManagerComponent:HandlePlayerStopUseFixWeapon(Player, FixWeaponActor) end

---@param Player ASTExtraBaseCharacter
---@param FixWeaponActor AActor
---@return boolean
function UFixWeaponManagerComponent:BPHandlePlayerStopUseFixWeapon(Player, FixWeaponActor) end

---@param inCurUseFixWeapon ASTExtraShootWeapon
function UFixWeaponManagerComponent:HandleWeaponLoadFinished(inCurUseFixWeapon) end

---@param inCurUseFixWeapon ASTExtraShootWeapon
function UFixWeaponManagerComponent:HandlePlayerGetWeapon(inCurUseFixWeapon) end

function UFixWeaponManagerComponent:HandlePlayerStartUse() end

function UFixWeaponManagerComponent:HandlePlayerDisuse() end

function UFixWeaponManagerComponent:CheckModifyTickState() end

function UFixWeaponManagerComponent:HandleWeaponStartReload() end

function UFixWeaponManagerComponent:HandleWeaponEndReload() end

function UFixWeaponManagerComponent:StartResetPlayerControlRotation() end

function UFixWeaponManagerComponent:ResetPlayerControlRotationEnd() end

function UFixWeaponManagerComponent:HandleWeaponBulletChange() end

function UFixWeaponManagerComponent:OnRep_SyncFixWeapon() end
