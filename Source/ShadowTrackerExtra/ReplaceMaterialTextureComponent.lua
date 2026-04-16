---@meta

---@class UReplaceMaterialTextureComponent: UActorComponent
---@field Id number
---@field ReplaceComponentTag string
---@field ReplaceMaterialName string
---@field ReplaceTexturesName string
---@field TextureHttpURL string
---@field bOnlyVisibleToObserver boolean
local UReplaceMaterialTextureComponent = {}

---@return boolean
function UReplaceMaterialTextureComponent:ShouldReplace() end

function UReplaceMaterialTextureComponent:OnRep_TexthureHttpURL() end

---@param Texture UTexture2D
---@param RequestedURL string
function UReplaceMaterialTextureComponent:OnRequestImgSuccess(Texture, RequestedURL) end

---@param Texture UTexture2D
function UReplaceMaterialTextureComponent:ReplaceTexture(Texture) end

---@param ComponentTag string
---@param MaterialName string
---@param TexturesName string
function UReplaceMaterialTextureComponent:ChangeReplaceParams(ComponentTag, MaterialName, TexturesName) end
