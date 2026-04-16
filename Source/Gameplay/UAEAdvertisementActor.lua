---@meta

---@class AUAEAdvertisementActor: AStaticMeshActor, IRegionObjectInterface
---@field StaticMeshPath string
---@field PicURL string
---@field bAdvertisementOnlyVisibleToObserver boolean
---@field NetCullDistance number
---@field NeedDestroyChildActorCom boolean
---@field Id number
local AUAEAdvertisementActor = {}

---@param InMeshPath string
function AUAEAdvertisementActor:SetStaticMeshPath(InMeshPath) end

---@param InPicURL string
function AUAEAdvertisementActor:SetHttpImage(InPicURL) end

---@param InScale FVector
function AUAEAdvertisementActor:SetScale(InScale) end

---@param ID number
function AUAEAdvertisementActor:SetID(ID) end

---@param bNewEnabled boolean
function AUAEAdvertisementActor:SetAdvertisementOnlyVisibleToObserver(bNewEnabled) end

---@return boolean
function AUAEAdvertisementActor:ShouldReplace() end

---@param InPicURL string
function AUAEAdvertisementActor:CheckVideoPathAndRequest(InPicURL) end

function AUAEAdvertisementActor:OnRep_MeshPath() end

function AUAEAdvertisementActor:OnRep_PicURL() end

---@param Texture UTexture2D
---@param RequestedURL string
function AUAEAdvertisementActor:OnRequestImgSuccess(Texture, RequestedURL) end

function AUAEAdvertisementActor:RequestHttpImage() end

---@param DisableAdvertisementCategories number
---@return boolean
function AUAEAdvertisementActor:ShouldBeDisabled(DisableAdvertisementCategories) end

---@param Texture UTexture2D
function AUAEAdvertisementActor:ReplaceTexture(Texture) end
