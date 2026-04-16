---@meta

---@class FLobbyMoveObjInfo
---@field ClassOfMovingActor UObject
---@field ClassOfActor string
---@field MoveToTransform FTransform
FLobbyMoveObjInfo = {}


---@class FChangeSceneInfo
---@field SystemName string
---@field NewSceneID number
---@field NewLightID number
---@field MoveObjInfo ULuaArrayHelper<FLobbyMoveObjInfo>
FChangeSceneInfo = {}


---@class FLobbyInspectByWeaponData
---@field WeaponName string
---@field MoveSceneInfo ULuaMapHelper<string, FChangeSceneInfo>
FLobbyInspectByWeaponData = {}


---@class ULobbyInspectBgConfig: UObject
---@field MoveSceneInfoByScene ULuaMapHelper<number, FChangeSceneInfo>
---@field MoveSceneInfoByWeapon ULuaMapHelper<number, FLobbyInspectByWeaponData>
local ULobbyInspectBgConfig = {}

---@param SceneId number
---@return FChangeSceneInfo
function ULobbyInspectBgConfig:GetDataBySceneId(SceneId) end

---@param WeaponId number
---@param DstTag string
---@return FChangeSceneInfo
function ULobbyInspectBgConfig:GetDataByWeaponId(WeaponId, DstTag) end
