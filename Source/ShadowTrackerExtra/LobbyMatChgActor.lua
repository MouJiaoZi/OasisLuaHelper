---@meta

---@class ELobbyBgMatType
---@field ELBS number @LBS
---@field EMarketAppearance number @MarketAppearance
---@field EMarketParachute number @MarketParachute
---@field EMarketWeapon number @MarketWeapon
---@field ESeasonPass number @SeasonPass
---@field ELobbyBgMat_Max number
ELobbyBgMatType = {}


---@class FLobbyBgDataArray
---@field SlotName string
---@field matSoftPtr UMaterialInstance
FLobbyBgDataArray = {}


---@class FLobbyBgMatData
---@field matUsage string
---@field matSoftPtr UMaterialInstance
---@field BgMeshName string
---@field slotToMaterial ULuaArrayHelper<FLobbyBgDataArray>
FLobbyBgMatData = {}


---@class ALobbyMatChgActor: AActor
---@field BgMeshNameV1 string
---@field BgMeshNameV2 string
---@field BgMeshNameV3 string
---@field BgMeshNameV4 string
---@field matWaitToChangeList ULuaArrayHelper<FLobbyBgMatData>
local ALobbyMatChgActor = {}

---@param idx number
function ALobbyMatChgActor:ChangeMaterialToIdx(idx) end

---@param idx number
function ALobbyMatChgActor:SyncChangeMaterialToIdx(idx) end

---@return FVector
function ALobbyMatChgActor:GetBgMeshLocation() end

---@param InLocation FVector
function ALobbyMatChgActor:SetBgMeshLocation(InLocation) end

---@param mat UMaterialInstance
---@param index number
---@param MatIndex number
---@param slotToMaterial ULuaArrayHelper<FLobbyBgDataArray>
function ALobbyMatChgActor:OnAsyncLoadBgMat(mat, index, MatIndex, slotToMaterial) end
