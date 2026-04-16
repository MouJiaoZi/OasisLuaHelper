---@meta

---@class ULobbyMultiEmoteUtils: UBlueprintFunctionLibrary
local ULobbyMultiEmoteUtils = {}

---@param InLeaderUID string
---@param InWorld UWorld
---@return boolean
function ULobbyMultiEmoteUtils:SpawnLobbyMultiEmoteDirector(InLeaderUID, InWorld) end

---@param InLeaderUID string
---@return boolean
function ULobbyMultiEmoteUtils:RemoveLobbyMultiEmoteDirector(InLeaderUID) end

---@param InLeaderUID string
---@param InEmoteID number
---@param InEmoteHandle UBackpackEmoteHandle
---@return boolean
function ULobbyMultiEmoteUtils:SetEmoteHandle(InLeaderUID, InEmoteID, InEmoteHandle) end

---@param InLeaderUID string
---@param LocationKey EDuoActionPerformanceLocation
---@param InCharacter AActor
---@param InEmoteHandle UBackpackEmoteHandle
function ULobbyMultiEmoteUtils:AddCharacterAndEmoteHandle(InLeaderUID, LocationKey, InCharacter, InEmoteHandle) end

---@param InLeaderUID string
function ULobbyMultiEmoteUtils:ResetData(InLeaderUID) end

---@param InLeaderUID string
---@return boolean
function ULobbyMultiEmoteUtils:ExecuteMultiEmoteAction(InLeaderUID) end

---@param InLeaderUID string
---@return boolean
function ULobbyMultiEmoteUtils:StopMultiEmoteAction(InLeaderUID) end

---设置播放结束时的回调参数
---@param InLeaderUID string
---@param InDstTag string
---@param InInviterUid string
---@param InInviteeUid ULuaArrayHelper<string>
---@param InEmoteHandleID number
---@param InPlayIgnoreAnimation boolean
function ULobbyMultiEmoteUtils:SetFinishCallbackArgs(InLeaderUID, InDstTag, InInviterUid, InInviteeUid, InEmoteHandleID, InPlayIgnoreAnimation) end


---大厅的双人表情管理器
---@class ULobbyMultiEmoteManager: UObject
---@field MultiEmoteDirectorMap ULuaMapHelper<string, ALobbyMultiEmoteDirector>
local ULobbyMultiEmoteManager = {}

---@param InLeaderUID string
---@param InWorld UWorld
---@return boolean
function ULobbyMultiEmoteManager:SpawnLobbyMultiEmoteDirector(InLeaderUID, InWorld) end

---@param InLeaderUID string
---@return boolean
function ULobbyMultiEmoteManager:RemoveLobbyMultiEmoteDirector(InLeaderUID) end

---@param InLeaderUID string
---@param InEmoteID number
---@param InEmoteHandle UBackpackEmoteHandle
---@return boolean
function ULobbyMultiEmoteManager:SetEmoteHandle(InLeaderUID, InEmoteID, InEmoteHandle) end

---@param InLeaderUID string
---@param LocationKey EDuoActionPerformanceLocation
---@param InCharacter AActor
---@param InEmoteHandle UBackpackEmoteHandle
function ULobbyMultiEmoteManager:AddCharacterAndEmoteHandle(InLeaderUID, LocationKey, InCharacter, InEmoteHandle) end

---@param InLeaderUID string
function ULobbyMultiEmoteManager:ResetData(InLeaderUID) end

---@param InLeaderUID string
---@return boolean
function ULobbyMultiEmoteManager:ExecuteMultiEmoteAction(InLeaderUID) end

---@param InLeaderUID string
---@return boolean
function ULobbyMultiEmoteManager:StopMultiEmoteAction(InLeaderUID) end

---设置播放结束时的回调参数
---@param InLeaderUID string
---@param InDstTag string
---@param InInviterUid string
---@param InInviteeUid ULuaArrayHelper<string>
---@param InEmoteHandleID number
---@param InPlayIgnoreAnimation boolean
function ULobbyMultiEmoteManager:SetFinishCallbackArgs(InLeaderUID, InDstTag, InInviterUid, InInviteeUid, InEmoteHandleID, InPlayIgnoreAnimation) end
