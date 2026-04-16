---@meta

---@class FSTQuadrupedCharacterSupplyItem
---@field UniqueID number
---@field TombBox APlayerTombBox
---@field PickupListWrapperActor APickUpListWrapperActor
---@field Type ESTQuadrupedCharacterPickableActorType
FSTQuadrupedCharacterSupplyItem = {}


---@class USTQuadrupedCharacterFetchSuppliesSkill: UPersistEffectWithState
---@field RegionSizeMap ULuaMapHelper<ERegionSizeIndex, number>
---@field CacheSupplyIDs ULuaSetHelper<number>
---@field bNeedUpdate boolean
---@field CacheSupplies ULuaArrayHelper<FSTQuadrupedCharacterSupplyItem>
---@field bFindMainSupplyActor boolean
---@field ExpectedRegions ULuaArrayHelper<ERegionSizeIndex>
---@field InteractRadius number
local USTQuadrupedCharacterFetchSuppliesSkill = {}

---@param bForce boolean
function USTQuadrupedCharacterFetchSuppliesSkill:RetrieveAroundPickableActors(bForce) end

---@param TombBox APlayerTombBox
---@return boolean
function USTQuadrupedCharacterFetchSuppliesSkill:CanTombBoxMeetRequirement(TombBox) end

---@param AirDropBox AAirDropBoxActor
---@return boolean
function USTQuadrupedCharacterFetchSuppliesSkill:CanAirDropBoxMeetRequirement(AirDropBox) end

---@param SpecialAirDropBox ATreasureBox
---@return boolean
function USTQuadrupedCharacterFetchSuppliesSkill:CanSpecialAirDropBoxMeetRequirement(SpecialAirDropBox) end

---@param EscapeSupplyBox AActivityBaseActor
---@return boolean
function USTQuadrupedCharacterFetchSuppliesSkill:CanEscapeSupplyBoxMeetRequirement(EscapeSupplyBox) end

---@param PickupWrapper APickUpWrapperActor
---@return boolean
function USTQuadrupedCharacterFetchSuppliesSkill:CanPickupWrapperMeetRequirement(PickupWrapper) end

---@param Center FVector
---@param Regions ULuaArrayHelper<ERegionSizeIndex>
---@param bGetStatic boolean
---@param Range number
---@param ExpectedClass UClass
---@param OutActors ULuaArrayHelper<AActor>
function USTQuadrupedCharacterFetchSuppliesSkill:GetNearByActors(Center, Regions, bGetStatic, Range, ExpectedClass, OutActors) end

function USTQuadrupedCharacterFetchSuppliesSkill:OnMainSupplyActorDestroyed() end

---@param Supplies ULuaArrayHelper<FSTQuadrupedCharacterSupplyItem>
function USTQuadrupedCharacterFetchSuppliesSkill:OnPickableActorsChange(Supplies) end

---@param InHandleComponent USTQuadrupedCharacterHandleComponent
---@param InMainSupplyActor AActor
function USTQuadrupedCharacterFetchSuppliesSkill:SetParam(InHandleComponent, InMainSupplyActor) end

---@param UniqueID number
---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param OutPickupListWrapperActor APickUpListWrapperActor
---@return boolean
function USTQuadrupedCharacterFetchSuppliesSkill:GetItem(UniqueID, TypeSpecificID, InstanceID, Count, OutPickupListWrapperActor) end
