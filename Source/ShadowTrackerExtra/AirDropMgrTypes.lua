---@meta

---@class EExecuteAirDropOrderResult
---@field MakeAirDropOrderDone number
---@field UndefinedADFReason number
---@field RandomDropFailure number
---@field NothingToDrop number
---@field GameNotStart number
---@field GameEnded number
---@field GameStateInvalid number
---@field DroppingLocationOutSideLandscape number
---@field LandscapeExtentInvalid number
---@field FlyingDirectionInValid number
---@field AirPlaneClassInvalid number
---@field NoLandscapeToDrop number
EExecuteAirDropOrderResult = {}


---@class FAirDropBoxConfig
---@field AirDropBoxBluePrint AAirDropBoxActor
---@field ContinuousAirDropInterval number
---@field Offset FVector
FAirDropBoxConfig = {}


---@class FAirDropPlaneParams
---@field FlyingHeight number
---@field FlyingSpeed number
---@field bUseAirDropFallingSpeed boolean
---@field AirDropFallingSpeed number
---@field bIsUseDebugLocation boolean
---@field DebugDroppingLocation FVector
---@field AirDropPlaneBluePrint AAirDropPlane
---@field AirDropBoxBluePrint AAirDropBoxActor
FAirDropPlaneParams = {}


---@class FExtraAirDropRandomParams
---@field TotalDropCount number
---@field TermWeight number
FExtraAirDropRandomParams = {}


---@class FAirDropBoxParams
---@field AirdropBoxFallingPosition FVector
---@field AirdropBoxName string
---@field ExIndex number
FAirDropBoxParams = {}


---@class FRandomAirDropConfig
---@field ZOffset number
---@field StartTime number
---@field EndTime number
---@field MinGap number
---@field MaxGap number
FRandomAirDropConfig = {}


---@class FAirDropConfig
---@field AirDropTime number
---@field RandomDroppingRange number
---@field DoubleCircleRandomDroppingRange number
---@field DropStuffChance number
---@field NoLandscapeDelayTime number
---@field bCanMakeExtraAirdrop boolean
---@field PlaneZOffset number
---@field ExtraAirDropRandParamsArray ULuaArrayHelper<FExtraAirDropRandomParams>
---@field ExtraAirDropRandLowerLimit number
---@field ExtraAirDropRandUpperLimit number
---@field ExtraAirDropUseEvenlyDistributed boolean
---@field bCanMakeContinuousAirdrop boolean
---@field bIsDrawAirDropFlightPath boolean
---@field ContinuousAirDropInterval number
---@field AirDropPlaneBluePrint AAirDropPlane
---@field AirdropWhiteCircleProportionMin number
---@field AirdropWhiteCircleProportionMax number
---@field AirdropIntervalProportionMin number
---@field AirdropIntervalProportionMax number
---@field AirDropBoxBlueprintList ULuaArrayHelper<AAirDropBoxActor>
---@field bRandomAirDropBoxOffset boolean
---@field RandomAirDropBoxOffsetX FVector2D
---@field RandomAirDropBoxOffsetY FVector2D
---@field bCanDoubleAirDrop boolean
---@field bNeedReportToServer boolean
---@field bNeedRandomParachuteMat boolean
---@field bShowAirDropTips boolean
---@field AirDropTipsId number
---@field bSwitchOnOffByIDIP boolean
---@field bIDIPONOFF boolean
FAirDropConfig = {}


---@class FFlyingParam
---@field FlyingSpeed number
---@field FlyingDirection FVector
---@field AirPlaneSpawnServerTime number
---@field AirPlaneSpawnLoc FVector
FFlyingParam = {}


---@class FAirDropOrder
---@field AirDropIndex number
---@field AirDropPlaneSpawnPosition FVector
---@field AirDropPlaneEndPosition FVector
---@field AirDropPlaneFlyingDirection FVector
---@field AirDropPlaneFlyingSpeed number
---@field AirDropStuffFallingPosition FVector
---@field BoxFallingPositionArray ULuaArrayHelper<FVector>
---@field AirDropBoxParamsArray ULuaArrayHelper<FAirDropBoxParams>
---@field CurBoxParam FAirDropBoxParams
---@field AirDropStuffFallingSpeed number
---@field bIsSpecialAirdrop boolean
---@field bIsDrawAirDropFlightPath boolean
---@field DropType number
---@field AirDropSummoner number
---@field mapMarkInsID number
---@field bShowTips boolean
---@field TipsId number
---@field SpecialVehiclePath string
---@field StarGameAirdropBoxClass string
---@field WingmanMeshClass UStaticMesh
---@field WingmanSkeletalMeshClass USkeletalMesh
---@field WingmanAnimSequence UAnimationAsset
---@field WingmanMaterialClass UMaterialInterface
---@field WingmanParticleClass UParticleSystem
---@field WingmanBattleAkAudioEventClass UAkAudioEvent
---@field WingmanEffect FWingmanEffect
---@field bDoubleAsset boolean
---@field DoubleAssetOffset FVector
---@field bNeedReportToServer boolean
---@field bNeedRandomParachuteMat boolean
---@field CacheFlareGunAbilityID number
FAirDropOrder = {}


---@class FFlareGunAirDropRandomParams
---@field SuperAirDropRandomRadius number
---@field SuperAirDropRouteRandomRadiusMin number
---@field SuperAirDropRouteRandomRadiusMax number
FFlareGunAirDropRandomParams = {}


---@class FAirdropTypeEx
---@field ExIndex number
---@field SpecialList ULuaArrayHelper<number>
---@field AirdropBoxPath string
FAirdropTypeEx = {}


---@class FAirdropType
---@field AirdropId number
---@field AirdropBoxPath string
---@field SuperAirdropBoxPath string
---@field AirdropPlanePath string
---@field OnOff boolean
---@field AirdropTypeEx ULuaArrayHelper<FAirdropTypeEx>
FAirdropType = {}


---@class FAirDropPathData
---@field AirDropIndex number
---@field StartLoc FVector2D
---@field TargetLoc FVector2D
---@field RouteWidgetRotateAngle number
---@field RouteLengthInMap number
---@field AirDropLocs ULuaArrayHelper<FVector2D>
---@field AirDropLocs3D ULuaArrayHelper<FVector>
---@field bIsDrawAirDropFlightPath boolean
FAirDropPathData = {}


---@class FAirDropPathData3D
---@field AirDropIndex number
---@field StartLoc3D FVector
---@field TargetLoc3D FVector
---@field AirDropLocs3D ULuaArrayHelper<FVector>
---@field bIsDrawAirDropFlightPath boolean
---@field MapCenter FVector
---@field Radius number
FAirDropPathData3D = {}


---@class FAirplaneRouteData
---@field PlaneFlyingProcess number
---@field CanJumpLocInMap FVector2D
---@field ForceJumpLocInMap FVector2D
---@field CanJumpLocInMapSelf number
---@field ForceJumpLocInMapSelf number
---@field RouteWidgetRotateAngle number
---@field RouteLengthInMap number
---@field PlaneLocInMap FVector2D
---@field PlaneRotation number
---@field AirDropPaths ULuaArrayHelper<FAirDropPathData>
---@field CanJumpLocInMapForCamp FVector2D
---@field ForceJumpLocInMapForCamp FVector2D
---@field CampRouteLengthInMap number
---@field CampRouteWidgetRotateAngle number
FAirplaneRouteData = {}


---@class FMapRealTimeInfo
---@field MapCenterToPlayer FVector
---@field MapCenterToBlueCircle FVector
---@field MapCenterToWhiteCircle FVector
---@field PlayerCoord FVector2D
---@field SpectatedPlayerCoord FVector2D
---@field WhiteCircleCoord FVector2D
---@field BlueCircleCoord FVector2D
---@field WhiteCircleRadius number
---@field BlueCircleRadius number
---@field LastDriveVehicleCoord FVector2D
---@field bCanPlayerSeeLastVehicle boolean
---@field PlaneRouteData FAirplaneRouteData
---@field AirDropPathData FAirDropPathData
FMapRealTimeInfo = {}


---@class UDropStuffStrategy: UObject
local UDropStuffStrategy = {}


---@class UDropVehicleStrategy: UDropStuffStrategy
local UDropVehicleStrategy = {}

---@param Plane AAirDropPlane
---@return boolean
function UDropVehicleStrategy:Apply(Plane) end


---@class UDropBoxStrategy: UDropStuffStrategy
local UDropBoxStrategy = {}

---@param Plane AAirDropPlane
---@return boolean
function UDropBoxStrategy:Apply(Plane) end


---@class UDropBoxSimpleStrategy: UDropStuffStrategy
local UDropBoxSimpleStrategy = {}

---@param Plane AAirDropPlane
---@return boolean
function UDropBoxSimpleStrategy:Apply(Plane) end


---@class UDropWingmanStrategy: UDropStuffStrategy
local UDropWingmanStrategy = {}

---@param AirPlane AAirDropPlane
---@return boolean
function UDropWingmanStrategy:Apply(AirPlane) end


---@class UDropVehicleAndBoxStrategy: UDropStuffStrategy
local UDropVehicleAndBoxStrategy = {}

---@param Plane AAirDropPlane
---@return boolean
function UDropVehicleAndBoxStrategy:Apply(Plane) end


---@class UDropActionStrategy: UDropStuffStrategy
local UDropActionStrategy = {}

---@param Plane AAirDropPlane
---@return boolean
function UDropActionStrategy:Apply(Plane) end
