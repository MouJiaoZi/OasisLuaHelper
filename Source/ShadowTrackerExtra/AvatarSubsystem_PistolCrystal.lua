---@meta

---@class UAvatarSubSystem_PistolCrystal: UAvatarSubSystem_PistolEffect
---@field PistolCrystalParamList ULuaArrayHelper<FPistolCrystalParamItem>
---@field MaterialSlotName string
---@field MaterialParamName string
---@field BloodDiamondData FItemSpecialData_BloodDiamondData
---@field RenderResList ULuaArrayHelper<FSoftObjectPath>
---@field DiamondMeshList ULuaArrayHelper<UStaticMeshComponent>
---@field DiamondParticleList ULuaArrayHelper<UParticleSystemComponent>
---@field DiamondStaticMeshList ULuaArrayHelper<UStaticMesh>
---@field DiamondParticleSystemList ULuaArrayHelper<UParticleSystem>
---@field OnBloodDiamondAttachedFinished FOnBloodDiamondAttachedFinishedDelegate
---@field AsyncLoadID number
---@field MeshColumn string
---@field SimulateMeshColumn string
---@field ParticleColumn string
---@field SimulateParticleColumn string
---@field LeftSocketColumn string
---@field RightSocketColumn string
---@field ColorParamColumn string
local UAvatarSubSystem_PistolCrystal = {}

---@param InOwnerAvatarComp UAvatarComponent
function UAvatarSubSystem_PistolCrystal:InitSubSystem(InOwnerAvatarComp) end

function UAvatarSubSystem_PistolCrystal:ReleaseSubSystem() end

function UAvatarSubSystem_PistolCrystal:ActiveSystem() end

function UAvatarSubSystem_PistolCrystal:DeactiveSystem() end

function UAvatarSubSystem_PistolCrystal:OnRep_BloodDiamondData() end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
function UAvatarSubSystem_PistolCrystal:OnAsyncLoadBloodDiamondMeshList(AssetRef) end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
---@param AsyncLoadID number
function UAvatarSubSystem_PistolCrystal:OnAsyncLoadBloodDiamondMeshListWithAsyncID(AssetRef, AsyncLoadID) end

function UAvatarSubSystem_PistolCrystal:CollectResAndLoad() end

function UAvatarSubSystem_PistolCrystal:ClientGetBloodDiamondData() end

function UAvatarSubSystem_PistolCrystal:IServerSetBloodDiamondData() end

function UAvatarSubSystem_PistolCrystal:ServerGetBloodDiamondData() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarSubSystem_PistolCrystal:HandleAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

function UAvatarSubSystem_PistolCrystal:AttachBloodDiamondMesh() end

function UAvatarSubSystem_PistolCrystal:AttachBloodDiamondMeshBySTMesh() end

function UAvatarSubSystem_PistolCrystal:AttachBloodDiamondMeshByISM() end

---@return FItemSpecialData_BloodDiamondData
function UAvatarSubSystem_PistolCrystal:GetBloodDiamondData() end
