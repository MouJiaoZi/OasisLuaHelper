---@meta

---@class FActivityScanTowerPlayerData
---@field Location FVector
---@field PlayerKey number
---@field TeamID number
FActivityScanTowerPlayerData = {}


---@class AActivityScanTowerActor: AActivityBaseActor
---@field CachePCList ULuaArrayHelper<ASTExtraPlayerController>
---@field PlayerMarkLifeTime number
---@field MinVector FVector
---@field MaxVector FVector
---@field MaxPlayerMarkNum number
local AActivityScanTowerActor = {}

---@param bNeedPlayerLocData boolean
function AActivityScanTowerActor:TickPlayersInSquareRegion(bNeedPlayerLocData) end

---@param OutPCList ULuaArrayHelper<ASTExtraPlayerController>
---@param CurrPCList ULuaArrayHelper<ASTExtraPlayerController>
---@param PlayerScanDataList ULuaArrayHelper<FActivityScanTowerPlayerData>
function AActivityScanTowerActor:OnPCListChange(OutPCList, CurrPCList, PlayerScanDataList) end

---@param Location FVector
---@return boolean
function AActivityScanTowerActor:InSquareRegion(Location) end
