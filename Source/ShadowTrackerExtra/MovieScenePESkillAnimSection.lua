---@meta

---@class EPESkillAnimSlotType
---@field EPESkillAnimSlotType_FullBody number @FullBody
---@field EPESkillAnimSlotType_UpperBody number @UpperBody
---@field EPESkillAnimSlotType_Chest number @Chest
---@field EPESkillAnimSlotType_Arms number @Arms
---@field EPESkillAnimSlotType_FullBody_PreAO number @FullBody_PreAO
---@field EPESkillAnimSlotType_UpperBody_PreAO number @UpperBody_PreAO
---@field EPESkillAnimSlotType_Chest_PreAO number @Chest_PreAO
---@field EPESkillAnimSlotType_Melee number @Melee
---@field EPESkillAnimSlotType_Custom number @CustomSlot
EPESkillAnimSlotType = {}


---@class FMovieScenePESkillAnimationConfig
---@field RequiredTags FGameplayTagContainer
FMovieScenePESkillAnimationConfig = {}


---@class FMovieScenePESkillAnimationParams
---@field DefaultAnimationName string @The name of the animation played in this section. be use for DS
---@field AnimationConfigs ULuaArrayHelper<FMovieScenePESkillAnimationConfig>
---@field StartOffset number @The offset into the beginning of the animation clip
---@field EndOffset number @The offset into the end of the animation clip
---@field PlayRate number @The playback rate of the animation clip
---@field bReverse number @Reverse the playback of the animation clip
---@field SlotType EPESkillAnimSlotType @The slot name to use for the animation
---@field CustomSlot string
---@field Weight FRichCurve @The weight curve for this animation section
---@field BlendOutTime number @BlendOutTimeWhenStop
---@field BlendInTime number @BlendInTime
---@field bClearPose number @clear the cached pose
---@field bApplySubAnim number @Apply Anim To SubAnim
---@field ApplyAvatarSlot ULuaArrayHelper<number> @Apply Anim To Avatar
---@field DisableBoneResolve ULuaArrayHelper<number> @Apply Anim To SubAnim
FMovieScenePESkillAnimationParams = {}


---Movie scene section that control skeletal animation
---@class UMovieScenePESkillAnimSection: UMovieSceneSection
---@field Params FMovieScenePESkillAnimationParams
local UMovieScenePESkillAnimSection = {}
