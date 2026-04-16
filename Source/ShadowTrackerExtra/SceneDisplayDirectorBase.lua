---@meta

---@class FDisplayAvatarDetail
---@field ActorIndex number
---@field WearList ULuaArrayHelper<number>
FDisplayAvatarDetail = {}


---@class FDisplayAvatarEditorDetail
---@field Gender number
---@field HeadID number
---@field DisplayWearList ULuaArrayHelper<number>
---@field DisplayWeapon number
---@field DisplayVehicle number
---@field DisplayHelmet number
---@field DisplayBackpack number
---@field GalaxyFaceInfoIndex string
---@field PetID number
---@field CharmValue number
FDisplayAvatarEditorDetail = {}


---@class FAvatarInfoAsyncLoadDetail
---@field ReqId number
---@field DetailInfo FPlayerDetailInfo
FAvatarInfoAsyncLoadDetail = {}


---@class ASceneDisplayDirectorBase: AActor
---@field DirectorTag string
---@field TipMsgID number
---@field IsUseLodControl boolean
---@field CountDownTimeThreshold number
---@field RefreshCharmPlayerTimeThreshold number
---@field StopRefreshCharmPlayerTimeThreshold number
---@field TemplateWidgetPath string
---@field CountDownWidgetTemplates ULuaArrayHelper<string>
---@field FilterItemIdList ULuaArrayHelper<number>
---@field FilterItemTypeIdList ULuaArrayHelper<number>
---@field FilterSlotList ULuaArrayHelper<EAvatarSlotType>
---@field CameraAnimParam FCameraAnimParam
---@field AvatarDisplayPoseList ULuaArrayHelper<UAvatarDisplayPoseComponent>
---@field AvatarAsyncDetail ULuaMapHelper<number, FAvatarInfoAsyncLoadDetail>
---@field AsyncReqId number
---@field WidgetCompoentList ULuaArrayHelper<UWidgetComponent>
---@field ActorIndicatorWidgetList ULuaArrayHelper<UCustomActorIndicatorWidget>
---@field VehicleAvatarDisplayPostList ULuaArrayHelper<UVehicleAvatarDisplayPoseComponent>
---@field CountDownWidgetList ULuaArrayHelper<URenderWidgetBase>
---@field HasCameraAnimStopped boolean
---@field bCheckPakDownload boolean
---@field PetTransforms ULuaMapHelper<number, FPetTransform>
---@field DisplayAvatarDetailCache ULuaMapHelper<number, FDisplayAvatarDetail>
---@field LastSeasonId number
---@field KeepCameraLocAndRotByFrameTimer FTimerHandle
---@field InPlayingCameraAnim UCameraAnim
---@field HasSwithToTeamAssembleView boolean
local ASceneDisplayDirectorBase = {}

---@param BattleItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadReqID number
function ASceneDisplayDirectorBase:OnRefreshAvatarInfoAsyncLoaded(BattleItemHandles, AsyncLoadReqID) end

---@param Component UPrimitiveComponent
---@param LightChannel number
function ASceneDisplayDirectorBase:SetPrimitiveLightChannel(Component, LightChannel) end

---@param ActorIndex number
---@param IsSelf boolean
---@param IsTeammate boolean
---@param DetailInfo FPlayerDetailInfo
---@param DisplayComp UAvatarDisplayPoseComponent
---@param WidgetComp UWidgetComponent
---@param IsAlreadyDisplaying boolean
function ASceneDisplayDirectorBase:OnPreRefreshAvatarInfoBlueprint(ActorIndex, IsSelf, IsTeammate, DetailInfo, DisplayComp, WidgetComp, IsAlreadyDisplaying) end

---@param DisplayComp UAvatarDisplayPoseComponent
---@param WidgetComp UWidgetComponent
---@param DetailInfo FPlayerDetailInfo
---@param OnlyWearList ULuaArrayHelper<number>
function ASceneDisplayDirectorBase:OnRefreshAvatarInfoBlueprint(DisplayComp, WidgetComp, DetailInfo, OnlyWearList) end

---@param DisplayComp UAvatarDisplayPoseComponent
---@param WidgetComp UWidgetComponent
---@param DetailInfo FPlayerDetailInfo
function ASceneDisplayDirectorBase:OnPostRefreshAvatarInfoBlueprint(DisplayComp, WidgetComp, DetailInfo) end

---@param ActorIndex number
---@return FVector
function ASceneDisplayDirectorBase:GetPlayerInfoWidgetLocation(ActorIndex) end

---@param ItemId number
---@return boolean
function ASceneDisplayDirectorBase:IsAvatarItemFiltered(ItemId) end

---@param CountDown number
---@param TotalCountDown number
function ASceneDisplayDirectorBase:OnRefreshCountDownValue(CountDown, TotalCountDown) end

function ASceneDisplayDirectorBase:OnDestroyDisplayActor() end

function ASceneDisplayDirectorBase:OnDestroyDisplayActorBlueprint() end

---@return boolean
function ASceneDisplayDirectorBase:NeedEnableDisplayActor() end

---@return boolean
function ASceneDisplayDirectorBase:IsEnableCharmPlayerShowTest() end

---@param CountDown number
---@param TotalCountDown number
function ASceneDisplayDirectorBase:OnCountDownChanged(CountDown, TotalCountDown) end

---@param PlayerKey number
---@param ActorIndex number
---@param DetailInfo FPlayerDetailInfo
---@return boolean
function ASceneDisplayDirectorBase:HasPlayerWearChanged(PlayerKey, ActorIndex, DetailInfo) end

function ASceneDisplayDirectorBase:OnResetDisplayAvatar() end

function ASceneDisplayDirectorBase:OnResetDisplayAvatarBlueprint() end

---@param ActorIndex number
function ASceneDisplayDirectorBase:OnPreRefreshTeammateAssembleInfoBlueprint(ActorIndex) end

---@param ActorIndex number
---@param AvatarDisplayInfo FTeamAssembleAvatarDisplayInfo
function ASceneDisplayDirectorBase:OnRefreshTeammateAssembleDisplayInfo(ActorIndex, AvatarDisplayInfo) end

---@param ActorIndex number
---@param DetailInfo FTeamAssembleAvatarDisplayInfo
---@param OnlyWearList ULuaArrayHelper<number>
function ASceneDisplayDirectorBase:OnRefreshTeammateAssembleInfoBlueprint(ActorIndex, DetailInfo, OnlyWearList) end

function ASceneDisplayDirectorBase:OnSwitchToTeamAssembleView() end

function ASceneDisplayDirectorBase:OnCameraAnimationFinished() end

---@param TotolNumber number
function ASceneDisplayDirectorBase:OnUpdateDisplayActorNumber(TotolNumber) end

---@param bIsEnable boolean
function ASceneDisplayDirectorBase:SwitchToTeamAssembleView(bIsEnable) end

---@param bIsEnable boolean
function ASceneDisplayDirectorBase:SwitchToTeamAssembleViewBlueprint(bIsEnable) end

function ASceneDisplayDirectorBase:PlayCameraAnimation() end

---@param NewAnim UCameraAnim
function ASceneDisplayDirectorBase:SetCameraAnimation(NewAnim) end

function ASceneDisplayDirectorBase:OnKeepCameraLocAndRot() end

---@param InID number
---@return number
function ASceneDisplayDirectorBase:GetHelmetOrBackpackOriginID(InID) end
