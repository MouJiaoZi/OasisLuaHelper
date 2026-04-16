---@meta

---@class FGameModeAddtiveItem
---@field ItemID number
---@field Count number
FGameModeAddtiveItem = {}


---@class FPlayerID
---@field PlayerType string
---@field PlayerKey number
FPlayerID = {}


---@class FPlayerStateChangedParams
---@field PlayerID FPlayerID
---@field PlayerState string
---@field Reason string
FPlayerStateChangedParams = {}


---@class FCharacterStateChangedParams
---@field PlayerID FPlayerID
---@field CharacterState string
FCharacterStateChangedParams = {}


---@class FGameModeStateChangedParams
---@field GameModeState string
FGameModeStateChangedParams = {}


---@class FGameModeParams
---@field CurrentGameModeState string
FGameModeParams = {}


---@class FGameModeCollectedEventTeamParams
---@field TeamID number
---@field UIDs ULuaArrayHelper<number>
---@field bCollectedEventDataReportingEnabled boolean
---@field CollectedEventType number
FGameModeCollectedEventTeamParams = {}


---@class FCollectedEventDataInfo
---@field CollectingEventDataRequiredUId number
---@field CollectedEventType number
FCollectedEventDataInfo = {}


---家园-Start
---@class FGameModeHomeItemParams
---@field Type number
---@field ID number
---@field InstanceID number
---@field Count number
---@field AddTime number
---@field ExpireTime number
---@field IsNew boolean
FGameModeHomeItemParams = {}


---@class FGameModeHomeItemClientParam
---@field InstanceID number
---@field ID number
---@field Count number
---@field AddTime number
---@field ExpireTime number
---@field IsNew number
FGameModeHomeItemClientParam = {}


---@class FGameModeHomeConstructItemParam
---@field ID number
---@field Count number
---@field IsNew boolean
FGameModeHomeConstructItemParam = {}


---Common Backpack start
---@class FBackpackItemParams
---@field InstanceID number
---@field ItemID number
---@field Count number
---@field ValidHours number
---@field ExpireTime number
---@field IsNew number
FBackpackItemParams = {}


---@class FBackpackItemPakParams
---@field InstanceID number
---@field Count number
---@field BinData ULuaArrayHelper<number>
FBackpackItemPakParams = {}


---@class FBackpackItemAdditionPropertiesParams
---@field InstanceID number
---@field ItemID number
---@field Name string
---@field ValueType number
---@field FloatValue number
FBackpackItemAdditionPropertiesParams = {}


---Big world start
---@class FBigWorldCrossDSTaskParams
---@field TaskID number
---@field Progress number
---@field TargetProgress number
FBigWorldCrossDSTaskParams = {}


---@class FBigWorldTaskBaseParams
---@field TaskID number
---@field IsExpired boolean
---@field NeedReset boolean
---@field LobbyCompleted boolean
---@field Progress number
---@field Group number
---@field BinData ULuaArrayHelper<number>
---@field CrossDSInfo ULuaArrayHelper<FBigWorldCrossDSTaskParams>
FBigWorldTaskBaseParams = {}


---@class FDSBigWorldTaskBaseInfo
---@field TaskList ULuaArrayHelper<FBigWorldTaskBaseParams>
---@field bIsSwitchDS boolean
FDSBigWorldTaskBaseInfo = {}


---@class FBigWorldTitleInfo
---@field CurTitle number
FBigWorldTitleInfo = {}
