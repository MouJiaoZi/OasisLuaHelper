---@meta

---@class ANewWorldRegionChecker: AUAERegionActor
---@field Index number
---@field PickIDList ULuaMapHelper<number, number>
---@field DropIDList ULuaArrayHelper<number>
---@field OverlapComponentClass UPrimitiveComponent
---@field UniqueID string
---@field EnterTlogID number
---@field LeaveTlogID number
---@field OwnerSubWorldID string
---@field CommonDropTipsID number
local ANewWorldRegionChecker = {}

---@param BackpackComp UBackpackComponent
---@param Interface INewWorldRegionHandleInterface
---@return boolean
function ANewWorldRegionChecker:CheckPlayerInRegion(BackpackComp, Interface) end

---@param CheckActorArray FOverlapCheckActorArray
function ANewWorldRegionChecker:TrigOverlap(CheckActorArray) end

---@param Character ASTExtraPlayerCharacter
function ANewWorldRegionChecker:CustomBeginOverlapFunc(Character) end

---@param Character ASTExtraPlayerCharacter
function ANewWorldRegionChecker:CustomEndOverlapFunc(Character) end

---@param Backpack ICommonBackpackInterface
---@param Character ASTExtraPlayerCharacter
function ANewWorldRegionChecker:DisuseRegionalItem(Backpack, Character) end

---@param InPlayer AUAEPlayerController
function ANewWorldRegionChecker:OnPlayerSwitchedIn(InPlayer) end
