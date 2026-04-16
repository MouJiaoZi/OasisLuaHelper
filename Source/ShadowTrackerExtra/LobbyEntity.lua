---@meta

---@class FLobbyEntity
---@field RelatedAttrbute string
---@field RelatedComTag string
---@field Tag string
---@field LobbyAction ULobbyBaseAction
FLobbyEntity = {}


---@class FActionParam
---@field RelatedAttrbute string
---@field ParamType string
---@field ParamValue string
FActionParam = {}


---@class FActionReturnValue
---@field ReturnValues ULuaArrayHelper<string>
FActionReturnValue = {}


---@class FLobbyActionEntity
---@field entity FLobbyEntity
---@field param ULuaArrayHelper<FActionParam>
FLobbyActionEntity = {}
