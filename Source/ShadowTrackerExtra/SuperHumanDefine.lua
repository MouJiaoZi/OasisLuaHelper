---@meta

---@class FSuperHumanOptionalData
---@field Items ULuaArrayHelper<number>
---@field Index number
FSuperHumanOptionalData = {}


---@class FSuperHumanStoreProduceCofig
---@field ItemsProduce number
---@field Weight number
FSuperHumanStoreProduceCofig = {}


---@class FSuperHumanStoreProduceArrayCofig
---@field StartSecond number
---@field EndSecond number
---@field config ULuaArrayHelper<FSuperHumanStoreProduceCofig>
FSuperHumanStoreProduceArrayCofig = {}


---@class FSuperStoreItem
---@field ItemID number
---@field Count number
FSuperStoreItem = {}


---@class FSuperStoreLevel
---@field GunItems ULuaArrayHelper<FSuperStoreItem>
---@field NotGunItems ULuaArrayHelper<FSuperStoreItem>
FSuperStoreLevel = {}


---@class FSuperHumanStoreProduce
---@field OwnerName string
---@field HighValue FSuperStoreLevel
---@field LowValue FSuperStoreLevel
FSuperHumanStoreProduce = {}


---@class FSuperHumanReinforceParam
---@field ID number
---@field Param1 number
---@field Param2 number
---@field Param3 number
FSuperHumanReinforceParam = {}


---@class USuperHumanDefineHelper: UObject
local USuperHumanDefineHelper = {}

---@param ID number
---@param Param1 number
---@param Param2 number
---@param Param3 number
function USuperHumanDefineHelper:AddReinforcementParam(ID, Param1, Param2, Param3) end

---@param ID number
function USuperHumanDefineHelper:RemoveReinforcementParam(ID) end
