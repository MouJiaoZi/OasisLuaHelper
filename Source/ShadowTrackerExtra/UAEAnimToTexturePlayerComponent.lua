---@meta

---年兽动画类
---@class UUAEAnimToTexturePlayerComponent: UAnimToTexturePlayerComponent
---@field MEAnimStateToAnimDataIndex ULuaMapHelper<eMEAnimationState, FVector2D>
---@field MEAnimBlendState ULuaMapHelper<eMEAnimationState, boolean>
---@field MEAnimStateOffsetRangeLevel ULuaMapHelper<eMEAnimationState, number>
---@field MEAnimStateStartSound ULuaMapHelper<number, UAkAudioEvent>
---@field MEAnimStateStopSound ULuaMapHelper<number, UAkAudioEvent>
---@field bDebugPrintInfo boolean
local UUAEAnimToTexturePlayerComponent = {}

---@param ISMAnimationIndex number
---@return number
function UUAEAnimToTexturePlayerComponent:GetAnimSeqTime(ISMAnimationIndex) end

---@param ISMAnimationIndex number
---@param AnimState number
---@param ID number
function UUAEAnimToTexturePlayerComponent:ChangeInstanceAnimStateWithFixedRand(ISMAnimationIndex, AnimState, ID) end

---@param ID number
---@param AnimState number
---@return number
function UUAEAnimToTexturePlayerComponent:GetAnimIndex(ID, AnimState) end

---@param InstanceIndex number
---@param bShowOutline boolean
function UUAEAnimToTexturePlayerComponent:UpdateShowOutlineParams(InstanceIndex, bShowOutline) end
