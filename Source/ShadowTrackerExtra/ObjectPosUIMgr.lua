---@meta

---@class EPosUIShowType
---@field All number @全显示
---@field MyTeam number @显示队友
---@field OtherTeam number @显示非队友
---@field Observer number @Win端全局观战
---@field NotObserver number @非Win端全局观战
EPosUIShowType = {}


---@class FSimpleObjectPosUIInfo
---@field WidgetClassPath UObjectPositionWidget
---@field ZOrder number
---@field BNeedShowArrow boolean
---@field BOutScreenHide boolean
---@field BBeOcclusionHide boolean
---@field BBeOcclusionResult boolean
---@field OcclusionTraceMobilityType number
---@field MaxShowDistance number
---@field LimitLR FVector2D
---@field LimitUD FVector2D
---@field LocOffset FVector
FSimpleObjectPosUIInfo = {}


---@class FObjectPosUIInfo
---@field SizeAutoContent boolean
---@field ShowSelf boolean
---@field ShowType EPosUIShowType
---@field MaxShowNum number
---@field MemPoolCount number
---@field LuaClassPath string
---@field WidgetClass UObjectPositionWidget
---@field CompareUesContains boolean
---@field MountName string
---@field OuterName string
---@field LayoutData FAnchorData
---@field ZOrder number
---@field LogicNames string
---@field PlaybackTypeFilter ULuaArrayHelper<EPlaybackType>
---@field WidgetParamInfo FWidgetParamInfo
---@field UIClassTempPath string
FObjectPosUIInfo = {}


---@class FObjectPosUITemplate
---@field TemplateID number
---@field Describe string
---@field ObjectPosUIInfo FObjectPosUIInfo
FObjectPosUITemplate = {}


---@class FObjectPosUIData
---@field IsClientUseActor boolean
---@field IsVisable boolean
---@field ActorNetGUID number
---@field ActorDemoNetGUID number
---@field InstanceID number
---@field TeamID number
---@field TemplateID number
---@field ExParam number
---@field TargetPos FVector
---@field TargetActor AActor
---@field TargetUIInfo string
---@field TargetTempParam string
FObjectPosUIData = {}


---@class FObjectPosReplayNetGUIDMap
---@field InstanceID number
---@field ActorNetGUID number
---@field ActorDemoNetGUID number
FObjectPosReplayNetGUIDMap = {}


---@class FObjectPosWattingData
---@field DelayCount number
---@field UIInfo FObjectPosUIInfo
---@field UIData FObjectPosUIData
FObjectPosWattingData = {}


---@class FObjectPosUIItem
---@field ObjectWidget UObjectPositionWidget
---@field Data FObjectPosUIData
FObjectPosUIItem = {}


---@class FObjectPosHideList
---@field RequestHideInstanceList ULuaArrayHelper<number>
---@field NeedHideInstanceList ULuaArrayHelper<number>
FObjectPosHideList = {}


---@class FObjectPosHideMgr
---@field HideMap ULuaMapHelper<number, FObjectPosHideList>
FObjectPosHideMgr = {}


---@class UObjectPosUIPool: UObject
---@field PoolList ULuaArrayHelper<UUserWidget>
local UObjectPosUIPool = {}


---@class UObjectPosUIMgr: UActorComponent
---@field LineTickness number
---@field DrawTemplateLimit number
---@field DrawTemplateLimitColor FLinearColor
---@field RootUserWidgetZorder number
---@field RootUserWidgetClass UUserWidget
---@field EnableModifyTemplateList boolean
---@field ProcessWaittingCount number
---@field DelayCount number
---@field DelayTime number
---@field TemplateListForPath ULuaArrayHelper<FObjectPosUIInfo>
---@field TemplateActiveMap ULuaMapHelper<number, boolean>
---@field PCActiveTemplates ULuaArrayHelper<number>
---@field bUsePClimit boolean
---@field PCLimit FVector4
---@field PCCornerRadius number
---@field TemplateActiveStatic ULuaArrayHelper<number>
---@field OverrideTemplateList ULuaMapHelper<number, FObjectPosUIInfo>
---@field TemplateList ULuaArrayHelper<FObjectPosUITemplate>
---@field WidgetItemList ULuaArrayHelper<FObjectPosUIItem>
---@field WaittingDataMap ULuaMapHelper<number, FObjectPosWattingData>
---@field ProcessDataList ULuaArrayHelper<FObjectPosUIData>
---@field DelayProcessDataList ULuaArrayHelper<FObjectPosUIData>
---@field CurrentDataMap ULuaMapHelper<number, FObjectPosUIData>
---@field WidgetPool ULuaMapHelper<number, UObjectPosUIPool>
---@field AlreadyDecodedUIInfoMap ULuaMapHelper<number, FObjectPosUIInfo>
---@field bSwitchShowPrioritizedWidgets boolean
---@field bReplayGetCorrectTeamID boolean
---@field PrioritizedWidgetsMaxNum number
---@field bSwitchTemplateShowMaxNum boolean
local UObjectPosUIMgr = {}

---@param InSpawnActor AActor
function UObjectPosUIMgr:OnHandleActorSpawn(InSpawnActor) end

---@param InUIPath string
---@param InPos FVector
---@return number
function UObjectPosUIMgr:AddPosUIWithPathForPoint(InUIPath, InPos) end

---@param InUIPath string
---@param InActor AActor
---@return number
function UObjectPosUIMgr:AddPosUIWithPathForActor(InUIPath, InActor) end

---@param InUIPath string
---@param InActor AActor
---@param InParamStr string
---@param InNeedCombineUGCStr boolean
---@param InTeamID number
---@return number
function UObjectPosUIMgr:AddPosUIWithPathForActorParam(InUIPath, InActor, InParamStr, InNeedCombineUGCStr, InTeamID) end

---@param InActor AActor
---@param InPosUIInfo FSimpleObjectPosUIInfo
---@return number
function UObjectPosUIMgr:AddPosUIWithUIInfoForActor(InActor, InPosUIInfo) end

---@param InActor AActor
---@param InUIInfo FObjectPosUIInfo
---@return number
function UObjectPosUIMgr:AddPosUIWithUIInfoInClientForActor(InActor, InUIInfo) end

---@param InPos FVector
---@param InUIInfo FObjectPosUIInfo
---@return number
function UObjectPosUIMgr:AddPosUIWithUIInfoInClientForLocation(InPos, InUIInfo) end

---@param InTemplateID number
---@param InActor AActor
---@param InPos FVector
---@param InTeamID number
---@param InParam number
---@return number
function UObjectPosUIMgr:AddTemplatePosUI(InTemplateID, InActor, InPos, InTeamID, InParam) end

---@param InInstanceID number
function UObjectPosUIMgr:RemoveTemplatePosUI(InInstanceID) end

---@param UIInfo FObjectPosUIInfo
---@param UIData FObjectPosUIData
function UObjectPosUIMgr:LoadTemplatePosUI(UIInfo, UIData) end

---@param InInstanceID number
---@return boolean
function UObjectPosUIMgr:IsInstanceValid(InInstanceID) end

---@param InInstanceID number
---@param InVisable boolean
function UObjectPosUIMgr:SetObjectWidgetVisable(InInstanceID, InVisable) end

---@param InInstanceID number
---@param InParam number
function UObjectPosUIMgr:SetExParam(InInstanceID, InParam) end

---@param InInstanceID number
---@param InPos FVector
function UObjectPosUIMgr:SetObjectPos(InInstanceID, InPos) end

---@param InTemplateID number
function UObjectPosUIMgr:GetAllObjectWidgetsWithTemplateID(InTemplateID) end

function UObjectPosUIMgr:OnLoadDefaultWidgetClassCompleted() end

---@param InVisable boolean
function UObjectPosUIMgr:SetRootWidgetVisable(InVisable) end

---@param IsAdd boolean
---@param HideFlag string
function UObjectPosUIMgr:SetHideFlag(IsAdd, HideFlag) end

function UObjectPosUIMgr:ClearAllHideFlag() end

---@param InHideFlagList ULuaArrayHelper<string>
function UObjectPosUIMgr:SetHideFlagList(InHideFlagList) end

function UObjectPosUIMgr:RefreshRootWidgetVisable() end

---@param InStr string
---@return FObjectPosUIInfo
function UObjectPosUIMgr:GetUIInfoFromStr(InStr) end

---@param InPathStr string
---@param InParam string
---@param InNeedCombineUGCStr boolean
---@return string
function UObjectPosUIMgr:GetStrFromParam(InPathStr, InParam, InNeedCombineUGCStr) end

---@param InActor AActor
---@param InUIInfo FSimpleObjectPosUIInfo
---@return number
function UObjectPosUIMgr:AddPosUIWithUIInfoForActor_Event(InActor, InUIInfo) end

---@param InStr string
---@param OutUIInfo FSimpleObjectPosUIInfo
---@return boolean
function UObjectPosUIMgr:DecodeSimpleObjectPosUIInfo(InStr, OutUIInfo) end

---@param InString string
function UObjectPosUIMgr:GetSoftWidgetClass(InString) end

---@param InHashCode number
---@param PosUIInfo FObjectPosUIInfo
function UObjectPosUIMgr:AddDecodedUIInfoMap(InHashCode, PosUIInfo) end

---@param WidgetParamInfo FWidgetParamInfo
---@return FWidgetParamInfo
function UObjectPosUIMgr:ModifyWidgetParamInfo(WidgetParamInfo) end

---@param WorldContent UObject
---@param InUIPath string
---@param InPos FVector
---@return number
function UObjectPosUIMgr:AddPathForPointStatic(WorldContent, InUIPath, InPos) end

---@param WorldContent UObject
---@param InUIPath string
---@param InActor AActor
---@return number
function UObjectPosUIMgr:AddPathForActorStatic(WorldContent, InUIPath, InActor) end

---@param WorldContent UObject
---@param InUIPath string
---@param InActor AActor
---@param InParamStr string
---@return number
function UObjectPosUIMgr:AddPathForActorParamStatic(WorldContent, InUIPath, InActor, InParamStr) end

---@param WorldContent UObject
---@param InTemplateID number
---@param InActor AActor
---@param InPos FVector
---@param InTeamID number
---@param InParam number
---@return number
function UObjectPosUIMgr:AddTemplatePosUIStatic(WorldContent, InTemplateID, InActor, InPos, InTeamID, InParam) end

---@param WorldContent UObject
---@param InInstanceID number
function UObjectPosUIMgr:RemoveTemplatePosUIStatic(WorldContent, InInstanceID) end

---@param WorldContent UObject
---@param InInstanceID number
---@param InParam number
function UObjectPosUIMgr:SetExParamStatic(WorldContent, InInstanceID, InParam) end

---@param WorldContent UObject
---@param InInstanceID number
---@param InPos FVector
function UObjectPosUIMgr:SetObjectPosStatic(WorldContent, InInstanceID, InPos) end

---@param WorldContent UObject
---@param InInstanceID number
---@param InTarget AActor
function UObjectPosUIMgr:SetObjectTargetActorStatic(WorldContent, InInstanceID, InTarget) end

---@param WorldContent UObject
---@param InInstanceID number
---@param InVisable boolean
function UObjectPosUIMgr:SetObjectWidgetVisableStatic(WorldContent, InInstanceID, InVisable) end

---@param WorldContent UObject
---@param InInstanceID number
---@return boolean
function UObjectPosUIMgr:IsInstanceValidStatic(WorldContent, InInstanceID) end

---@param WorldContent UObject
---@param InTemplateID number
function UObjectPosUIMgr:GetAllObjectWidgetsWithTemplateIDStatic(WorldContent, InTemplateID) end

---@param ObjectPosUIData FObjectPosUIData
---@return number
function UObjectPosUIMgr:GetTemplateShowMaxNum(ObjectPosUIData) end

---@param InWidgetClass UClass
---@return number
function UObjectPosUIMgr:GetUGCGameHealthBarShowMaxNum(InWidgetClass) end
