---@meta

---@class FLobbyPetAnimInfo
---@field AnimAsset UAnimationAsset
---@field Probability number
FLobbyPetAnimInfo = {}


---@class FLobbyPetAnimInfoArray
---@field PetAnimInfoList ULuaArrayHelper<FLobbyPetAnimInfo>
FLobbyPetAnimInfoArray = {}


---@class UBackpackLobbyPetHandle: UBackpackLobbyItemHandle
---@field LobbyNPCAnimMap ULuaMapHelper<ELobbyNPCAnimType, UAnimationAsset>
---@field LobbyNPCRandomAnimMap ULuaMapHelper<ELobbyNPCAnimType, FLobbyPetAnimInfoArray>
---@field AircraftPetAbilityID number
local UBackpackLobbyPetHandle = {}
