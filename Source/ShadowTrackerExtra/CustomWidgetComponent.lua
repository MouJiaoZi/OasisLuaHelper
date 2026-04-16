---@meta

---@class UCustomWidgetComponent: UWidgetComponent
---@field bDisableDepthTest boolean
---@field bNeedTickCustomWidget boolean
local UCustomWidgetComponent = {}

---@param bShowWidget boolean
function UCustomWidgetComponent:BindEvent(bShowWidget) end

---@param ParticleRes UParticleSystem
---@param MeshComp UMeshComponent
---@param SocketName string
---@param RelativeTrans FTransform
function UCustomWidgetComponent:CreateParticle(ParticleRes, MeshComp, SocketName, RelativeTrans) end

---@param MeshComp UMeshComponent
---@param AttachSocket string
---@param RelativeTrans FTransform
function UCustomWidgetComponent:SetupAttachMeshComponent(MeshComp, AttachSocket, RelativeTrans) end

---@param bInDisableDepthTest boolean
function UCustomWidgetComponent:SetMaterialDisableDepthTest(bInDisableDepthTest) end

function UCustomWidgetComponent:UpdateMaterialDisableDepthTest() end

function UCustomWidgetComponent:Clear() end
