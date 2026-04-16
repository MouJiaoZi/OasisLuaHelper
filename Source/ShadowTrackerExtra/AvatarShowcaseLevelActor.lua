---@meta

---@class AAvatarShowcaseLevelActor: AActor
---@field AvatarShowcaseSyncActor AAvatarShowcaseSyncActor
---@field RenderTextureSize FVector2D
local AAvatarShowcaseLevelActor = {}

function AAvatarShowcaseLevelActor:GetAvatarShowcasePawns() end

---@param CopyFromActor AAvatarShowcaseLevelActor
function AAvatarShowcaseLevelActor:CopyAvatarShowcasePawns(CopyFromActor) end

function AAvatarShowcaseLevelActor:OnSetSyncActor() end

function AAvatarShowcaseLevelActor:OnSetAvatarShowcasePawns() end

function AAvatarShowcaseLevelActor:OnResourceLoadFinish() end

function AAvatarShowcaseLevelActor:PreCaptureScene() end

function AAvatarShowcaseLevelActor:PostCaptureScene() end

function AAvatarShowcaseLevelActor:RefreshAllMeshVisible() end

---@return boolean
function AAvatarShowcaseLevelActor:IsAllAvatarLoaded() end

---@param Texture UTextureRenderTarget2D
---@param SizeX number
---@param SizeY number
function AAvatarShowcaseLevelActor:SetTextureRenderTargetSize(Texture, SizeX, SizeY) end

---@param skeletalMesh USkeletalMeshComponent
function AAvatarShowcaseLevelActor:ForceUpdateSkeletalMeshAnimation(skeletalMesh) end

---@param widgetComponent UWidgetComponent
function AAvatarShowcaseLevelActor:ForceUpdateWidgetComponent(widgetComponent) end

---@param ObjectToWorld UObject
---@param PointNum number
function AAvatarShowcaseLevelActor:ForceOpenPointLightNum(ObjectToWorld, PointNum) end

---@param ObjectToWorld UObject
---@param AddPointNum number
function AAvatarShowcaseLevelActor:ForceAddPointLightNum(ObjectToWorld, AddPointNum) end

---@param ObjectToWorld UObject
---@param RemovePointNum number
function AAvatarShowcaseLevelActor:ForceRemovePointLightNum(ObjectToWorld, RemovePointNum) end

---@param ObjectToWorld UObject
function AAvatarShowcaseLevelActor:ResetForcePointLightNum(ObjectToWorld) end

---@param ObjectToWorld UObject
function AAvatarShowcaseLevelActor:ForceOpenAsyncPSO(ObjectToWorld) end

---@param ObjectToWorld UObject
function AAvatarShowcaseLevelActor:ForceCloseAsyncPSO(ObjectToWorld) end

---@param ObjectToWorld UObject
function AAvatarShowcaseLevelActor:ResetAsyncPSO(ObjectToWorld) end
