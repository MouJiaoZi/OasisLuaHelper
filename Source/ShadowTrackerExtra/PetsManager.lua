---@meta

---@class FPlayerPetConfigInfo
---@field PetID number
---@field PetName string
---@field PetClassPath string
FPlayerPetConfigInfo = {}


---@class APetsManager: AInfo
---@field PetClass APet
---@field SpawnOffsetFromOwner FVector
---@field MutexVariableNames ULuaArrayHelper<string>
---@field MutexPawnStates ULuaArrayHelper<EPawnState>
---@field LinetraceStartOffset FVector
---@field LinetraceEndOffset FVector
---@field InvalidAreaTags ULuaArrayHelper<string>
---@field PetLevelLimit number
---@field PetLimitState EGameModeActorState
---@field PetInfoMap ULuaMapHelper<number, FPlayerPetConfigInfo>
---@field Pets ULuaMapHelper<APlayerController, APet>
---@field ObservedMutexVariables ULuaArrayHelper<UBoolProperty>
local APetsManager = {}

---@param Char AActor
---@return boolean
function APetsManager:ShouldPetCallOut(Char) end

---@param NewPlayer APlayerController
function APetsManager:OnPlayerLogin(NewPlayer) end

---@param NewPlayer APlayerController
function APetsManager:OnPlayerExit(NewPlayer) end
