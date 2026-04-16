---@meta

---@class FAnimalDeliverAreaLimit
---@field TopLeft FVector
---@field BottomRight FVector
FAnimalDeliverAreaLimit = {}


---@class FAnimalDeliverRatingConfig
---@field RightRatingSection number
---@field DeliverGroupNumPerWave number
---@field DeliverBeginTime number
---@field DeliveryWaveInterval number
---@field DeliverEndTime number
---@field FullFeedLimit number
---@field DeliverFreqInterval number
---@field DeliverNumEachFreq number
---@field DeliverCountByPlayerNum ULuaMapHelper<number, number>
FAnimalDeliverRatingConfig = {}


---@class UAnimalTeleportComponent: UActorComponent
---@field ChickDeliverConfig ULuaArrayHelper<FAnimalDeliverRatingConfig>
---@field DeerDeliverConfig ULuaArrayHelper<FAnimalDeliverRatingConfig>
---@field GoblinDeliverConfig ULuaArrayHelper<FAnimalDeliverRatingConfig>
---@field IceDeliverConfig ULuaArrayHelper<FAnimalDeliverRatingConfig>
---@field DeliveryAreaLimit ULuaArrayHelper<FAnimalDeliverAreaLimit>
---@field AIActingComp UAIActingComponent
---@field AIGroupMgrComp UAIGroupManagerComponent
---@field DeliveredGoblinPlayers ULuaSetHelper<ASTExtraPlayerCharacter>
---@field DeliveredIcePlayers ULuaSetHelper<ASTExtraPlayerCharacter>
---@field DeleverCountPerWave ULuaMapHelper<EAnimalType, number>
local UAnimalTeleportComponent = {}
