---@meta

---@class FDuoActionPerformanceBlackEmoteIDs
---@field EmoteIDs ULuaArrayHelper<number>
FDuoActionPerformanceBlackEmoteIDs = {}


---@class UDuoActionPerformanceSubSystem: UWorldSubsystem
---@field WhitePawnStateMask number
---@field BlackPawnStateMask number
---@field DisableDynamicPawnState ULuaArrayHelper<FGameplayTag>
---@field DisableSkills ULuaArrayHelper<AUTSkill>
---@field DisableBuffs ULuaArrayHelper<string>
---@field ClothBlackListEmoteIDs ULuaMapHelper<number, FDuoActionPerformanceBlackEmoteIDs>
---@field GlobalListOfAvailableModeIDs ULuaArrayHelper<number>
---@field GameModeIDToMaxInviteTime ULuaMapHelper<number, number>
---@field InviterAndInviteeCanInteractScopeSize number
---@field InviteSamePlayerCD number
---@field AfterSuccessfulPerformanceCD number
---@field ActivateDuoActionPerformanceCD number
---@field InviteeAndInviteeFacingAngles number
---@field ClickICONTLogID number
---@field InvitationTLogID number
---@field HoldTLogID number
---@field DuoActionPerformanceTLogID number
---@field UseRotationLimit boolean
---@field YawMin number
---@field YawMax number
---@field PitchMin number
---@field PitchMax number
---@field ObjectPosUIInfo FObjectPosUIInfo
---@field bOpenDebugInfo boolean
---@field DebugDrawTime number
---@field DebugDuoActionPerformanceBattleConfig FDuoActionPerformanceBattleConfig
---@field DebugDuoActionPerformanceCommonConfig FDuoActionPerformanceCommonConfig
---@field bUseCustomData boolean
local UDuoActionPerformanceSubSystem = {}

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function UDuoActionPerformanceSubSystem:CheckIsInWhitePawnState(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function UDuoActionPerformanceSubSystem:CheckIsInBlackPawnState(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function UDuoActionPerformanceSubSystem:CheckIsInBlackDynamicPawnState(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function UDuoActionPerformanceSubSystem:CheckIsInBlackBuff(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function UDuoActionPerformanceSubSystem:CheckIsInBlackSkill(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
---@param InEmoteID number
---@return boolean
function UDuoActionPerformanceSubSystem:DetectSurroundingCollisions(InPlayerController, InEmoteID) end

---@param InPlayerController ASTExtraPlayerController
---@param InEmoteID number
---@return boolean
function UDuoActionPerformanceSubSystem:DetectSurroundingTerrain(InPlayerController, InEmoteID) end

---@param InPlayerController ASTExtraPlayerController
---@param InEmoteID number
---@param bInviter boolean
---@return boolean
function UDuoActionPerformanceSubSystem:CheckGender(InPlayerController, InEmoteID, bInviter) end

---@param InPlayerController ASTExtraPlayerController
---@param InEmoteID number
---@return boolean
function UDuoActionPerformanceSubSystem:CheckClothBlackListEmoteIDs(InPlayerController, InEmoteID) end

---@param InPlayerController ASTExtraPlayerController
---@param InEmoteID number
---@return boolean
function UDuoActionPerformanceSubSystem:CheckStartTimeOfGame(InPlayerController, InEmoteID) end

---@param InPlayerController ASTExtraPlayerController
---@param InEmoteID number
---@param bInviter boolean
---@param bInvitee boolean
---@param bIgnoreTrace boolean
---@return boolean
function UDuoActionPerformanceSubSystem:CheckCanDo(InPlayerController, InEmoteID, bInviter, bInvitee, bIgnoreTrace) end

---@param InInviterPlayerController ASTExtraPlayerController
---@param InInviteePlayerController ASTExtraPlayerController
---@param InEmoteID number
---@return boolean
function UDuoActionPerformanceSubSystem:CanPlayByGender(InInviterPlayerController, InInviteePlayerController, InEmoteID) end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function UDuoActionPerformanceSubSystem:CheckSuccessfulPerformanceCD(InPlayerController) end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function UDuoActionPerformanceSubSystem:CheckActivateDuoActionPerformanceCD(InPlayerController) end

---@param InTLogID number
---@param InInviterPlayerController ASTExtraPlayerController
---@param InInviteePlayerController ASTExtraPlayerController
---@param InEmoteID number
function UDuoActionPerformanceSubSystem:SendTLog(InTLogID, InInviterPlayerController, InInviteePlayerController, InEmoteID) end
