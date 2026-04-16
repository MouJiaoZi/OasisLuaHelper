---@meta

---@class FSAPlayMontagePoseIsArmedInstanceStruct
---@field MontageMapCurrent ULuaMapHelper<EMainCharMontagePlayType, UAnimMontage>
FSAPlayMontagePoseIsArmedInstanceStruct = {}


---@class UUAESkillAction_PlayMontage_Pose_IsArmed: USTExtraBuffAction
---@field bOnlyPlayOnce boolean
---@field PoseMontageDataArmed FSkillPoseMontageData
---@field FPPPoseMontageDataArmed FSkillPoseMontageData
---@field NewFPPPoseMontageDataArmed FSkillPoseMontageData
---@field PoseMontageDataArmed_LeftHandWeapon FSkillPoseMontageData
---@field FPPPoseMontageDataArmed_LeftHandWeapon FSkillPoseMontageData
---@field NewFPPPoseMontageDataArmed_LeftHandWeapon FSkillPoseMontageData
---@field PoseMontageDataArmed_EachHandWeapon FSkillPoseMontageData
---@field FPPPoseMontageDataArmed_EachHandWeapon FSkillPoseMontageData
---@field NewFPPPoseMontageDataArmed_EachHandWeapon FSkillPoseMontageData
---@field PoseMontageData FSkillPoseMontageData
---@field FPPPoseMontageData FSkillPoseMontageData
---@field NewFPPPoseMontageData FSkillPoseMontageData
---@field CheckDurationConfig number
---@field IsEntertainmentEnable boolean
---@field EntertainmentRatio number
---@field SkipTPPMontageInNewFPPAnim boolean
local UUAESkillAction_PlayMontage_Pose_IsArmed = {}
