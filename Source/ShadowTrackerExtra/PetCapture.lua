---@meta

---@class APetCapture: AActor
---@field TextureTarget UTextureRenderTarget2D
---@field AsyncMeshIndex number
---@field AsyncAnimIndex number
---@field AsyncMatIndex number
---@field AnimPath FSoftObjectPath
---@field MeshPath FSoftObjectPath
---@field MatPath FSoftObjectPath
---@field PetMatPath string
local APetCapture = {}

function APetCapture:AsynLoadResCallback() end

---@param Path string
function APetCapture:ChangePetMesh(Path) end

---@param Path string
function APetCapture:ChangePetMat(Path) end

---@param AsyncIndex number
function APetCapture:AsyncLoadMeshCb(AsyncIndex) end

---@param AsyncIndex number
function APetCapture:AsyncLoadMatCb(AsyncIndex) end

---@param AnimIndex number
---@param bLooping boolean
function APetCapture:PlayPetAnim(AnimIndex, bLooping) end

---@param AsyncIndex number
---@param bLooping boolean
function APetCapture:AsyncLoadAnimCb(AsyncIndex, bLooping) end

function APetCapture:StopPlayAnim() end

---@param Step number
function APetCapture:AddCurMeshRotator(Step) end

function APetCapture:HideCat() end

function APetCapture:ShowCat() end

---@param bIsOpen boolean
function APetCapture:SetSceneCaptureState(bIsOpen) end
