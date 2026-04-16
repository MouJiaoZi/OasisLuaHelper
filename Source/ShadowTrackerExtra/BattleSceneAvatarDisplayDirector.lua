---@meta

---@class EBattleSceneAvatarDisplayType
---@field None number
---@field GameStartCountDown number @开始倒计时摆拍
---@field GameEnd number @结算摆拍
---@field GlobalMVP number @全场MVP
---@field ClassicTeamMVP number @经典模式队伍MVP
---@field CommonDisplay number @通用摆拍
EBattleSceneAvatarDisplayType = {}


---@class FBattleAvatarDisplayStageAction
---@field ActionType EBattleAvatarDisplayActionType
---@field ActionName string
---@field bExecuteEvenExceedDelay boolean
---@field bAlwaysExecuteAction boolean
---@field StartDelayTime number
---@field UIMsgParam FUIMsgParam
---@field CameraFadeParam FCameraFadeParam
---@field CameraAnimParam FCameraAnimParam
---@field ActionTimer FTimerHandle
---@field OwnerDisplayDirector ABattleSceneAvatarDisplayDirector
FBattleAvatarDisplayStageAction = {}


---@class UBattleAvatarStageActionHandler: UObject
---@field TargetDisplayDirector ABattleSceneAvatarDisplayDirector
local UBattleAvatarStageActionHandler = {}


---@class UBattleAvatarStageActionViewHandler: UBattleAvatarStageActionHandler
local UBattleAvatarStageActionViewHandler = {}


---@class UBattleAvatarStageActionAudioHandler: UBattleAvatarStageActionHandler
local UBattleAvatarStageActionAudioHandler = {}


---@class UBattleAvatarStageActionTerminateHandler: UBattleAvatarStageActionHandler
local UBattleAvatarStageActionTerminateHandler = {}


---@class UBattleAvatarStageActionCameraFadeHandler: UBattleAvatarStageActionHandler
local UBattleAvatarStageActionCameraFadeHandler = {}


---旧的UI控制方式，比较死板，请使用CastMsgToUI
---@class UBattleAvatarStageActionBattleUIHandler: UBattleAvatarStageActionHandler
local UBattleAvatarStageActionBattleUIHandler = {}


---新的UI控制方式 新加的UI控制配置请使用此方式
---@class UBattleAvatarStageActionUIMsgHandler: UBattleAvatarStageActionHandler
local UBattleAvatarStageActionUIMsgHandler = {}


---@class UBattleAvatarStageActionPlayCameraAnimHandler: UBattleAvatarStageActionHandler
---@field KeepCameraLocAndRotByFrameTimer FTimerHandle
---@field InPlayingCameraAnim UCameraAnim
local UBattleAvatarStageActionPlayCameraAnimHandler = {}

function UBattleAvatarStageActionPlayCameraAnimHandler:OnKeepCameraLocAndRot() end


---@class ABattleSceneAvatarDisplayDirector: AUAEAvatarDisplayDirector
---@field DisplayType EBattleSceneAvatarDisplayType
---@field DisplayID number
---@field TotalDisplayTime number
---@field AvatarDisplayActionFlowList ULuaArrayHelper<FBattleAvatarDisplayStageAction>
---@field AvatarDisplayPosList ULuaArrayHelper<UBattleSceneAvatarDisplayPoseComponent>
---@field AvatarDisplayInfoList ULuaArrayHelper<FBattleSceneAvatarDisplayInfo>
---@field LightCache ULuaMapHelper<AActor, boolean>
---@field LightSettings FAvatarDisplayLightSettings
---@field PreformLevelSequence ULevelSequence
---@field UseLevelSequenceMap boolean
---@field PreformLevelSequenceMap ULuaMapHelper<number, ULevelSequence>
---@field bDestroyLevelSpawnedObject number
---@field SequencePlaybackSettings FMovieSceneSequencePlaybackSettings
local ABattleSceneAvatarDisplayDirector = {}

---@param InForceClientMode boolean
function ABattleSceneAvatarDisplayDirector:ForceClientMode(InForceClientMode) end

function ABattleSceneAvatarDisplayDirector:InitDirector() end

---@param bForce boolean
function ABattleSceneAvatarDisplayDirector:ResetDirector(bForce) end

function ABattleSceneAvatarDisplayDirector:FinishDirectorDisplay() end

function ABattleSceneAvatarDisplayDirector:InitDisplayAvatar() end

---@param InElapsedTime number
---@param InTotalDisplayTime number
function ABattleSceneAvatarDisplayDirector:StartDirctorActionFlow(InElapsedTime, InTotalDisplayTime) end

---@param InPlayEmoteID number
---@return boolean
function ABattleSceneAvatarDisplayDirector:PlayEmote(InPlayEmoteID) end

---@return boolean
function ABattleSceneAvatarDisplayDirector:IsCurrentInDisplay() end

---@param InTargetPlayerName string
---@return FBattleSceneAvatarDisplayInfo
function ABattleSceneAvatarDisplayDirector:GetAvatarDisplayInfo(InTargetPlayerName) end

---@param SeqKey number
function ABattleSceneAvatarDisplayDirector:PrepareLevelSequence(SeqKey) end

function ABattleSceneAvatarDisplayDirector:PrepareLevelSequence_BP() end

---@param LoopCount number
function ABattleSceneAvatarDisplayDirector:ResetSequencePlaybackLoopSetting(LoopCount) end

function ABattleSceneAvatarDisplayDirector:AutoBindingSequence() end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function ABattleSceneAvatarDisplayDirector:AddBinding(Binding, Object) end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function ABattleSceneAvatarDisplayDirector:RemoveBinding(Binding, Object) end

function ABattleSceneAvatarDisplayDirector:PlayPreformSequence() end

---@return number
function ABattleSceneAvatarDisplayDirector:GetAvatarMVPAnimID() end

---@param Settings FAvatarMVPShowSetting
---@return boolean
function ABattleSceneAvatarDisplayDirector:GetMVPAvatarShowSettings(Settings) end

function ABattleSceneAvatarDisplayDirector:SwitchAndCacheLight() end

function ABattleSceneAvatarDisplayDirector:RecoverLight() end

---@return boolean
function ABattleSceneAvatarDisplayDirector:IsShippingOrTestENV() end

---@param WorldContextObject UObject
function ABattleSceneAvatarDisplayDirector:CheckCameraState(WorldContextObject) end

---@param WorldContextObject UObject
function ABattleSceneAvatarDisplayDirector:CheckLightState(WorldContextObject) end

---@param WorldContextObject UObject
function ABattleSceneAvatarDisplayDirector:LogLightState(WorldContextObject) end

---@param WorldContextObject UObject
---@param IsDirectionLightEnable boolean
---@param DirectionLightTag string
function ABattleSceneAvatarDisplayDirector:SetDirectionLightEnable(WorldContextObject, IsDirectionLightEnable, DirectionLightTag) end

---@param WorldContextObject UObject
---@param IsSkyLightEnable boolean
---@param SkyLightTag string
function ABattleSceneAvatarDisplayDirector:SetSkyLightEnable(WorldContextObject, IsSkyLightEnable, SkyLightTag) end

---@param WorldContextObject UObject
---@param IsPointLightEnable boolean
---@param PointLightTag string
function ABattleSceneAvatarDisplayDirector:SetPointLightEnable(WorldContextObject, IsPointLightEnable, PointLightTag) end

---@param InMVPActionID number
function ABattleSceneAvatarDisplayDirector:CheckMVPActionCameraAnim(InMVPActionID) end

---@param InNewCameraAnimParam FCameraAnimParam
function ABattleSceneAvatarDisplayDirector:ReplaceDefaultCameraAnim(InNewCameraAnimParam) end

---@param NewMipOffset number
---@param SizeLimited boolean
function ABattleSceneAvatarDisplayDirector:SetDisplayStreamingTextureMipOffset(NewMipOffset, SizeLimited) end

---@param CountDownTime number
function ABattleSceneAvatarDisplayDirector:OnGameStartCountDown(CountDownTime) end

function ABattleSceneAvatarDisplayDirector:OnRepTeammateAvatarDisplayInfoList() end

---@param InPlayerName string
---@param InPlayEmoteID number
function ABattleSceneAvatarDisplayDirector:OnCharacterPlayEmote(InPlayerName, InPlayEmoteID) end

function ABattleSceneAvatarDisplayDirector:FreeAvatarPoseComp() end

function ABattleSceneAvatarDisplayDirector:InitAvatarDisplayPosList() end

function ABattleSceneAvatarDisplayDirector:RefreshStartAvatarDisplay() end
