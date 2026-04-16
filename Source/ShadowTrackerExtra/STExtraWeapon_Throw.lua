---@meta

---@class ASTExtraWeapon_Throw: ASTExtraWeapon
---@field IconImagePathOverride string
---@field IconPressedImagePathOverride string
---@field bAutoSwitchSameSlotWeapon boolean
---@field bSwitchBackToLastSlotWeaponWhenInLeftPanel boolean
local ASTExtraWeapon_Throw = {}

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function ASTExtraWeapon_Throw:OnPostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function ASTExtraWeapon_Throw:OnPostLocalEquipWeaponBP(IsEquip, SelfRef, Weapon) end

---@param TargetLoc FVector
---@param Pawn ASTExtraCharacter
---@param ItemID number
---@param PawnRotation FRotator
---@param bTracePath boolean
---@param TestResult number
---@return boolean
function ASTExtraWeapon_Throw:CanThrowAtLocation(TargetLoc, Pawn, ItemID, PawnRotation, bTracePath, TestResult) end

---@param Loc FVector
---@return boolean
function ASTExtraWeapon_Throw:ThrowAtLocation(Loc) end

---@param NewEvent EWeaponTriggerEvent
---@param EventData string
function ASTExtraWeapon_Throw:HandleWeaponEvent(NewEvent, EventData) end

---@param NewState EThrowState
---@param PrevState EThrowState
function ASTExtraWeapon_Throw:HandleThrowStateChanged(NewState, PrevState) end

function ASTExtraWeapon_Throw:HandleReplaceSuitSkin() end
