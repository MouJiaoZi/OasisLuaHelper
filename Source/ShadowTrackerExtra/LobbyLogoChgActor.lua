---@meta

---@class FLobbyLogoData
---@field LogoName string
---@field StMeshSoftPtr UStaticMesh
---@field matSoftPtrList ULuaArrayHelper<UMaterialInstance>
FLobbyLogoData = {}


---@class ALobbyLogoChgActor: AActor
---@field LogoWaitToChangeList ULuaArrayHelper<FLobbyLogoData>
local ALobbyLogoChgActor = {}

---@param Name string
function ALobbyLogoChgActor:ChangeLogoToName(Name) end

---@return FVector
function ALobbyLogoChgActor:GetLogoMeshLocation() end

---@param InLocation FVector
function ALobbyLogoChgActor:SetLogoMeshLocation(InLocation) end
