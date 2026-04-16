---@meta

---@class EMapWidgetType
---@field EMWT_None number
---@field EMWT_Fighting_MiniMap number
---@field EMWT_Fighting_EntireMap number
---@field EMWT_Observe_MiniMap number
---@field EMWT_Observe_EntireMap number
EMapWidgetType = {}


---@class ETeammateIconInvisibleReason
---@field None number
---@field DifferentIsolatedZone number
ETeammateIconInvisibleReason = {}


---@class FMapLineData
---@field DataIndex number
---@field DrawColor FLinearColor
---@field LinePoints ULuaArrayHelper<FVector>
FMapLineData = {}


---@class FMapWidgetOnMapChage : ULuaSingleDelegate
FMapWidgetOnMapChage = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMapWidgetOnMapChage:Bind(Callback, Obj) end

---执行委托
function FMapWidgetOnMapChage:Execute() end


---@class FMapRotateAngleSet : ULuaMulticastDelegate
FMapRotateAngleSet = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, StaticRotateAngle: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMapRotateAngleSet:Add(Callback, Obj) end

---触发 Lua 广播
---@param StaticRotateAngle number
function FMapRotateAngleSet:Broadcast(StaticRotateAngle) end


---@class UMapWidgetBase: UUAEUserWidget
---@field AllUIMarks ULuaMapHelper<number, UMapUIMarkBaseWidget>
---@field UAVInfoWidgetArray ULuaArrayHelper<UMapVehicleIconWidget>
---@field UAVRotWidgetArray ULuaArrayHelper<UWidget>
---@field LandscapeCenterCpp FVector
---@field LevelToMapScaleCpp number
---@field RotateAngleCpp number
---@field MapScaleCpp number
---@field MapImageSizeCpp FVector2D
---@field MapWidgetType EMapWidgetType
---@field isMarkScaleAsDirty boolean
---@field bIsUIShowing boolean
---@field NoiseTickRate number
---@field TranslationMax number
---@field ScaleMax number
---@field ShearMax number
---@field AngleMax number
---@field NoiseEnableTranslation boolean
---@field NoiseEnableScale boolean
---@field NoiseEnableShear boolean
---@field NoiseEnableAngle boolean
---@field PlayerItemDict ULuaMapHelper<string, UPlayerItemInMap>
---@field bIsApplyMapItemNoise boolean
---@field LineLayer number
---@field DrawMapLines boolean
---@field MapLineList ULuaArrayHelper<FMapLineData>
---@field bHidePlayerIconWhenDead boolean
---@field bMarkUseRotateAngleC boolean
---@field bDisableClassicAirline boolean
---@field OnMapChange FMapWidgetOnMapChage
---@field StaticRotateAngle number
---@field OnMapRotateAngleSet FMapRotateAngleSet
---@field TeammateIconInvisibleReasons ULuaArrayHelper<ETeammateIconInvisibleReason>
local UMapWidgetBase = {}

function UMapWidgetBase:BatchCanvasInvalidateCache() end

function UMapWidgetBase:SetupUIMarkRoot() end

---@param bShow boolean
function UMapWidgetBase:SetAirlineVisible(bShow) end

---@param bShow boolean
function UMapWidgetBase:SetAirAttckVisible(bShow) end

---@param inInstanceID number
---@return boolean
function UMapWidgetBase:GetUIMarkIsExist(inInstanceID) end

---@param Context FPaintContext
---@param Tint FLinearColor
function UMapWidgetBase:DrawMovePathByTrackPoints(Context, Tint) end

---@param Pos3D FVector
---@return FVector2D
function UMapWidgetBase:Calculate3dTo2dPosition(Pos3D) end

---@return number
function UMapWidgetBase:GetPureLevelToMapScale() end

function UMapWidgetBase:OnUpdateUIMarks() end

---@param IsApplyData boolean
---@param IsApplyPos boolean
---@param isForceUpdate boolean
---@param isShowName boolean
---@param isSpectatorView boolean
---@param isFullName boolean
---@param MapPlayerList ULuaArrayHelper<FPlayerInfoInOB>
---@param CurViewPlayerUID string
---@param CurViewPlayerTeamID number
---@param isEntireMap boolean
---@param isEagleWatch boolean
function UMapWidgetBase:RefreshTotalPosRotByOBInfo(IsApplyData, IsApplyPos, isForceUpdate, isShowName, isSpectatorView, isFullName, MapPlayerList, CurViewPlayerUID, CurViewPlayerTeamID, isEntireMap, isEagleWatch) end

---@param ItemPB UPlayerItemInMap
function UMapWidgetBase:OnApplyOBDataToItem(ItemPB) end

---@param isApply boolean
function UMapWidgetBase:SetReadyToApplyMapItemNoise(isApply) end

---@param isApply boolean
function UMapWidgetBase:OnMapItemNoise(isApply) end

---@param InLineData FMapLineData
function UMapWidgetBase:AddLines(InLineData) end

---@param InInstanceID number
---@return boolean
function UMapWidgetBase:RemoveLines(InInstanceID) end

---@param InInstanceID number
---@return boolean
function UMapWidgetBase:ContainLine(InInstanceID) end

function UMapWidgetBase:BroadCastOnChangeMap() end

---@param TargetAngle number
function UMapWidgetBase:SetMapRotateAngle(TargetAngle) end

---@param TeammateIndex number
---@param Reason ETeammateIconInvisibleReason
function UMapWidgetBase:AddTeammateIconInvisibleReason(TeammateIndex, Reason) end

---@param TeammateIndex number
---@param Reason ETeammateIconInvisibleReason
function UMapWidgetBase:RemoveTeammateIconInvisibleReason(TeammateIndex, Reason) end

---@param TeammateIndex number
---@return boolean
function UMapWidgetBase:IsTeammateIconLogicVisible(TeammateIndex) end
