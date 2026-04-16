---@meta

---@class FEmoteBaseSeqConfig
---@field LevelSeqToDeviceGrade ULuaMapHelper<ULevelSequence, number>
FEmoteBaseSeqConfig = {}


---@class UBackpackLobbyEmoteBaseHandle: UBattleItemHandleBase
---@field AnimAsset UAnimationAsset
---@field bLoopAnimation boolean
---@field bSyncLoad boolean
---@field bIsResetTransform boolean
---@field OriginTransform FTransform
---@field SequenceLoopCOunt number
---@field SeqConfig ULuaArrayHelper<FEmoteBaseSeqConfig>
---@field BindingActorName string
---@field BoundScale number
local UBackpackLobbyEmoteBaseHandle = {}

---@param sex number
---@param islongscreen number
---@param devicelevel number
function UBackpackLobbyEmoteBaseHandle:GetEmoteResource(sex, islongscreen, devicelevel) end

---@param devicelevel number
function UBackpackLobbyEmoteBaseHandle:GetSeqAsset(devicelevel) end
