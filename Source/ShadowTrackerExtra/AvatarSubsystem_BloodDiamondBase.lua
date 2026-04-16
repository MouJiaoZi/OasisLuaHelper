---@meta

---@class UAvatarSubSystem_BloodDiamondBase: UAvatarSubSystem_PistolEffect
---@field PistolCrystalParamList ULuaArrayHelper<FPistolCrystalParamItem>
---@field BloodDiamondData FItemSpecialData_BloodDiamondData
---@field OnBloodDiamondAttachedFinished FOnBloodDiamondAttachedFinishedDelegate
---@field MaterialParam string
---@field DiamondParticleList ULuaArrayHelper<UParticleSystemComponent>
---@field MeshMaterialSlotName string
---@field MeshMaterialParamName string
---@field DiamondParticleMeshMaterialSlotName string
---@field DiamondParticleMeshMaterialParamName string
---@field ParticleMaterialSlotName string
---@field ParticleMaterialParamName string
---@field LeftSocketColumn string
---@field RightSocketColumn string
---@field ColorParamColumn string
local UAvatarSubSystem_BloodDiamondBase = {}

---@param InOwnerAvatarComp UAvatarComponent
function UAvatarSubSystem_BloodDiamondBase:InitSubSystem(InOwnerAvatarComp) end

function UAvatarSubSystem_BloodDiamondBase:ReleaseSubSystem() end

function UAvatarSubSystem_BloodDiamondBase:ActiveSystem() end

function UAvatarSubSystem_BloodDiamondBase:DeactiveSystem() end

function UAvatarSubSystem_BloodDiamondBase:OnRep_BloodDiamondData() end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
function UAvatarSubSystem_BloodDiamondBase:OnAsyncLoadBloodDiamondMeshList(AssetRef) end

function UAvatarSubSystem_BloodDiamondBase:IServerSetBloodDiamondData() end

function UAvatarSubSystem_BloodDiamondBase:ServerGetBloodDiamondData() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarSubSystem_BloodDiamondBase:HandleAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

function UAvatarSubSystem_BloodDiamondBase:AttachBloodDiamond() end

function UAvatarSubSystem_BloodDiamondBase:GetBloodDiamondMaterialParam() end

function UAvatarSubSystem_BloodDiamondBase:PostOnRepModifyMaterialData() end

function UAvatarSubSystem_BloodDiamondBase:PostAttachBloodDiamond() end

---@param MeshComponent UMeshComponent
---@param MaterialSlotName string
---@param MaterialParamName string
function UAvatarSubSystem_BloodDiamondBase:ModifyMaterial(MeshComponent, MaterialSlotName, MaterialParamName) end

---@return boolean
function UAvatarSubSystem_BloodDiamondBase:ShouldAttachParticle() end

---@return number
function UAvatarSubSystem_BloodDiamondBase:GetParamFloatValue() end

---@return number
function UAvatarSubSystem_BloodDiamondBase:GetGalleryID() end

---@param ColorID number
---@return FVector
function UAvatarSubSystem_BloodDiamondBase:GetColorRGBbyColorID(ColorID) end
