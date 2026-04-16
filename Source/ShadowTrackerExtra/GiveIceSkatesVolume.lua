---@meta

---@class AGiveIceSkatesVolume: AActor
---@field TemporaryIceSkatesItemID number
---@field NormalIceSkatesItemID number
---@field GiveIceSkatesTipID number
---@field DeleteIceSkatesTipID number
---@field CheckInterval number
---@field GiveItemCD number
---@field TraceDepth number
---@field IceStatesItemExpireTime number
---@field IceSurfaceMeshes ULuaArrayHelper<UStaticMesh>
---@field IceSurfaceComponentTag string
---@field IsTemporaryIceSkatesDataName string
---@field PlayerLastDeleteTimeMap ULuaMapHelper<number, number>
---@field PlayerCheckTimerMap ULuaMapHelper<ASTExtraPlayerController, number>
local AGiveIceSkatesVolume = {}

---@param STPC ASTExtraPlayerController
function AGiveIceSkatesVolume:CheckGiveIceSkatesForOnePlayer(STPC) end

---@param PlayerController ASTExtraPlayerController
function AGiveIceSkatesVolume:OnPlayerControllerBeginPlay(PlayerController) end

---@param STPC ASTExtraPlayerController
---@return boolean
function AGiveIceSkatesVolume:ShouldGiveIceSkates(STPC) end

---@param STPC ASTExtraPlayerController
---@return boolean
function AGiveIceSkatesVolume:CanGiveIceSkates(STPC) end
