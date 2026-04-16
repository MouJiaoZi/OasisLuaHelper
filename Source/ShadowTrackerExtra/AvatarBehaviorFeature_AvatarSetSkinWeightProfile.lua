---@meta

---@class UAvatarBehaviorFeature_AvatarSetSkinWeightProfile: UAvatarBehaviorFeature
---@field AvatarSetSkinWeightParam FAvatarSetSkinWeightParam
local UAvatarBehaviorFeature_AvatarSetSkinWeightProfile = {}

function UAvatarBehaviorFeature_AvatarSetSkinWeightProfile:ReleaseBehaviorFeature() end

---@param CharacterList ULuaArrayHelper<AActor>
---@param FileName_Male string
---@param FileName_Female string
---@param bOpenSkinWeightProfile boolean
function UAvatarBehaviorFeature_AvatarSetSkinWeightProfile:HandleGenderSkinWeightProfile(CharacterList, FileName_Male, FileName_Female, bOpenSkinWeightProfile) end

---@param CharAvatarComp UCharacterAvatarComponent
---@param FileName string
---@param bOpenSkinWeightProfile boolean
function UAvatarBehaviorFeature_AvatarSetSkinWeightProfile:HandleSkinWeightProfile(CharAvatarComp, FileName, bOpenSkinWeightProfile) end

---@param PreState EParachuteState
---@param CurState EParachuteState
function UAvatarBehaviorFeature_AvatarSetSkinWeightProfile:OnParachuteStateChanged(PreState, CurState) end
