---@meta

---@class EUAECharacterRegionSize
---@field EUAECharacterRegionSize_Small number @40m
---@field EUAECharacterRegionSize_Medium number @150m
---@field EUAECharacterRegionSize_Large number @350m
---@field EUAECharacterRegionSize_SuperLarge number @1000m
EUAECharacterRegionSize = {}


---@class FSceneComponentState
---@field TargetComponent USceneComponent
FSceneComponentState = {}


---@class AUAECharacter: ACharacter, IRegionObjectInterface, IOnlyActorComponentManagerInterface, IFastRemoteReplicationTargetInterface, IActorJumOffInterface
---@field CharacterRegionSize EUAECharacterRegionSize
---@field PlayerType string
---@field PlayerName string
---@field RemarkName string
---@field PlayerKey number
---@field PlayerUID string
---@field UID number
---@field PlayerOpenID string
---@field IsPossessed boolean
---@field TeamID number
---@field bTeamLeader boolean
---@field DefaultCharacterGender ECharacterGender
---@field InitialItemList ULuaArrayHelper<FGameModePlayerItem>
---@field playerFaceHandleID number
---@field bIsAI boolean
---@field bIsMLAI boolean
---@field bIsPartner boolean
---@field bIsAIHosting boolean
---@field AIModelType number @深度学习AI的类型 实际是枚举类型： EAiModelLogicType 由于这边模块不能引用项目模块，所以定义成了Int
---@field MLAIGatherSN number @机器学习AI的聚集序列
---@field AIStyle number @AI的Style
---@field SecMarkType number
---@field PawnInputRollScale number @Roll input speed scaling on Pawn
---@field PawnInputPitchScale number @Pitch input speed scaling on Pawn
---@field PawnInputYawScale number @Yaw input speed scaling on Pawn
---@field bCalcuPawn boolean @add, feishen, 20210813
---@field TimerHandle_ForceUpdateSpringArm FTimerHandle
---@field TimerHandle_DelayCalcuPawn FTimerHandle
---@field SpringArmStateList ULuaArrayHelper<FSceneComponentState>
---@field showNickname boolean
local AUAECharacter = {}

---@return string
function AUAECharacter:GetToString() end

function AUAECharacter:GetNonDedicatedComponents() end

function AUAECharacter:GetNonSimulatedComponents() end

function AUAECharacter:GetNonSimulatedComponents_NonTeammates() end

function AUAECharacter:GetNonSimulatedComponents_OnFighting() end

---@return number
function AUAECharacter:GetCachedcampID() end

---@return boolean
function AUAECharacter:IsAlive() end

---@return string
function AUAECharacter:GetPlayerKey() end

---@return number
function AUAECharacter:GetInstanceID() end

function AUAECharacter:OnRep_PlayerUID() end

function AUAECharacter:OnRep_PlayerUIDLua() end

function AUAECharacter:OnRep_PlayerOpenID() end

function AUAECharacter:OnRep_PlayerKey() end

function AUAECharacter:OnRep_RemarkName() end

function AUAECharacter:OnRep_TeamID() end

---@param IsAIHosting boolean
---@param Reason string
function AUAECharacter:SetIsAIHosting(IsAIHosting, Reason) end

function AUAECharacter:OnRep_bIsAI() end

---@param InGatherSN number
function AUAECharacter:SetMLAIGatherSN(InGatherSN) end

function AUAECharacter:OnRep_SecMarkType() end

---@param Token number
function AUAECharacter:ClientAcknowledgeReconnection_2(Token) end

---@param Params FGameModePlayerParams
function AUAECharacter:OnInitWithParams(Params) end

---@param NewBaseComponent UPrimitiveComponent
---@param InBoneName string
---@param bNotifyPawn boolean
---@param JumpOffBaseComponent UPrimitiveComponent
function AUAECharacter:SetBaseAndJumpOff(NewBaseComponent, InBoneName, bNotifyPawn, JumpOffBaseComponent) end

---@param bEnter boolean
function AUAECharacter:BPOnPlayerActiveRegionsChanged(bEnter) end

function AUAECharacter:ForceUpdateSpringArm() end

function AUAECharacter:OnForceUpdateSpringArmTimer() end

function AUAECharacter:OnDelayCalcuPawnTimer() end

---@param isShow boolean
function AUAECharacter:SetShowNickname(isShow) end

---@param flag boolean
function AUAECharacter:ServerSetShowNicknameValue(flag) end

function AUAECharacter:OnRep_ShowNicknameChangeEx() end

---@return boolean
function AUAECharacter:IsSuitGenderEnable() end

---@return ECharacterGender
function AUAECharacter:GetAvatarSuitGender() end

---@return number
function AUAECharacter:GetAvatarAppearanceGender() end

---@param InLockDisuseReason EBattleItemDisuseReason
---@return boolean
function AUAECharacter:LockAvatarAssemblingDisuseReason(InLockDisuseReason) end

---@param InLockDisuseReason EBattleItemDisuseReason
function AUAECharacter:UnLockAvatarAssemblingDisuseReason(InLockDisuseReason) end

---@return boolean
function AUAECharacter:LockToAvatarAssemblingState() end

---@param InIsCheckDefaultFallback boolean
function AUAECharacter:UnlockAvatarAssemblingState(InIsCheckDefaultFallback) end

---@return boolean
function AUAECharacter:LockToAvatarDisassemblingState() end

function AUAECharacter:UnlockAvatarDisassemblingState() end

---@param InAvatarIDList ULuaArrayHelper<number>
function AUAECharacter:SetAvatarAssembleInfo(InAvatarIDList) end

function AUAECharacter:ResetAvatarAssembleInfo() end

---@param InTestSuitItemID number
---@return number
function AUAECharacter:FetchSuitFallbackItemID(InTestSuitItemID) end
