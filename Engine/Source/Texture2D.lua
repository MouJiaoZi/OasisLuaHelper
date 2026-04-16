---@meta

---@class FCollectionBoolParameter
---@field DefaultValue boolean
FCollectionBoolParameter = {}


---@class FCollectionIntParameter
---@field DefaultValue number
FCollectionIntParameter = {}


---@class FCollectionStructParameter
---@field MatchRules string
---@field ScalarParameters ULuaArrayHelper<FCollectionScalarParameter>
---@field VectorParameters ULuaArrayHelper<FCollectionVectorParameter>
---@field BoolParameters ULuaArrayHelper<FCollectionBoolParameter>
---@field IntParameters ULuaArrayHelper<FCollectionIntParameter>
FCollectionStructParameter = {}


---@class UTexture2D: UTexture
---@field StreamingIndex number @FStreamingTexture index used by the texture streaming system.
---@field LevelIndex number
---@field FirstResourceMemMip number @keep track of first mip level used for ResourceMem creation
---@field bSuperSamplingMipBiasResponsive number
---@field PerTextureMipBias number
---@field ImportedSize FIntPoint @The imported size of the texture. Only valid on cooked builds when texture source is not available. Access ONLY via the GetImportedSize() accessor!
---@field ForceMipLevelsToBeResidentTimestamp number @WorldSettings timestamp that tells the streamer to force all miplevels to be resident up until that time.
---@field bTemporarilyDisableStreaming boolean @True if streaming is temporarily disabled so we can update subregions of this texture's resource without streaming clobbering it. Automatically cleared before saving.
---@field bIsStreamable boolean @Whether the texture is currently streamable or not.
---@field bHasStreamingUpdatePending number @Whether some mips might be streamed soon. If false, the texture is not planned resolution will be stable.
---@field bForceMiplevelsToBeResident number @Override whether to fully stream even if texture hasn't been rendered.
---@field bIgnoreStreamingMipBias number @Ignores the streaming mip bias used to accommodate memory constraints.
---@field bGlobalForceMipLevelsToBeResident number @Global and serialized version of ForceMiplevelsToBeResident.
---@field bIsTransient number @Whether the texture has been painted in the editor.
---@field AddressX TextureAddress @The addressing mode to use for the X axis.
---@field AddressY TextureAddress @The addressing mode to use for the Y axis.
---@field NotInlineMipCountOverride number
local UTexture2D = {}

---Gets the X size of the texture, in pixels
---@return number
function UTexture2D:Blueprint_GetSizeX() end

---Gets the Y size of the texture, in pixels
---@return number
function UTexture2D:Blueprint_GetSizeY() end


---@class UTextureProperty: UObject
---@field Propertys ULuaArrayHelper<FCollectionStructParameter>
local UTextureProperty = {}
