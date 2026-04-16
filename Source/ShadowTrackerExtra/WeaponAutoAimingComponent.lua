---@meta

---@class FAutoAimEnemyInfo
---@field DisToScreenCenter number
---@field WorldLocation FVector
FAutoAimEnemyInfo = {}


---@class FAutoAimDebugEnemyInfo
---@field OutterRadius number
---@field InnerRadius number
---@field OutterRadiusColor FLinearColor
---@field InnerRadiusColor FLinearColor
---@field EnemyScreenLocation FVector2D
---@field AimScreenLocation FVector2D
---@field Normal FVector
---@field Center FVector
---@field TopLeft FVector
---@field TopRight FVector
---@field BottomLeft FVector
---@field BottomRight FVector
---@field Range FVector2D
---@field bDrawDebug boolean
---@field bSelected boolean
FAutoAimDebugEnemyInfo = {}


---@class FCompareEnemyInfo
FCompareEnemyInfo = {}


---@class FCDInfo
---@field CDTime number
---@field FireTime number
---@field followTime number
FCDInfo = {}


---@class FAutoAimTargetFinder
FAutoAimTargetFinder = {}


---@class IAutoAimScaleInterface
IAutoAimScaleInterface = {}

---@return number
function IAutoAimScaleInterface:GetInnerScale() end

---@return number
function IAutoAimScaleInterface:GetOuterScale() end


---@class IAutoAimEnemyCheckInterface
IAutoAimEnemyCheckInterface = {}

---@param Target ACharacter
---@return boolean
function IAutoAimEnemyCheckInterface:IsEnemy(Target) end


---@class IAutoAimSelectorConfigInterface
IAutoAimSelectorConfigInterface = {}

function IAutoAimSelectorConfigInterface:GetSelectorConfig() end


---@class UWeaponAutoAimingComponent: UActorComponent
---@field CDInfo FCDInfo
---@field SelectEnemyInfo FAutoAimEnemyInfo
---@field LastSelectInfo FAutoAimEnemyInfo
---@field MagnetAssistEnemy ULuaArrayHelper<FAutoAimEnemyInfo>
---@field InRangeEnemyList ULuaArrayHelper<FAutoAimEnemyInfo>
---@field TraceTargetSocketsOnVehOp ULuaArrayHelper<string>
---@field Teammates ULuaArrayHelper<AActor>
---@field Dyingmen ULuaArrayHelper<AActor>
---@field AllCharacters ULuaArrayHelper<AActor>
---@field DebugEnemyInfoList ULuaArrayHelper<FAutoAimDebugEnemyInfo>
---@field DebugEnemyInfoAimAssistList ULuaArrayHelper<FAutoAimDebugEnemyInfo>
---@field EnemyRaycastReachChannel ECollisionChannel
---@field SmokeChannel ECollisionChannel
---@field EnemyRaycastReachTraceTypeQuery ETraceTypeQuery
---@field SmokeTraceTypeQuery ETraceTypeQuery
---@field AIM_CD_WHEN_OPERATE_CAMERA_WHEN_JUMP number
---@field AIM_HOLD_WHEN_OPEN_FIRE number
---@field DEFAULT_CD_TIME number
---@field AimAssistConfigDefault FAimAssistConfig
---@field Bones ULuaArrayHelper<string>
---@field AutoAimBoneSelectors ULuaArrayHelper<FMeshSocketSelector>
---@field AimAssistBone string
---@field AimAssistBoneSelector FMeshSocketSelector
---@field bEquipWeapon boolean
---@field ReadAutoAimingConfigSuccess boolean
---@field ReadAimAssistConfigSuccess boolean
---@field bCanAimNPC boolean
---@field bOpenAutoAimComponent boolean
---@field CarriedPawns ULuaArrayHelper<ASTExtraBaseCharacter>
---@field bTDM3FixIsSameTeam boolean
local UWeaponAutoAimingComponent = {}

---@return number
function UWeaponAutoAimingComponent:GetUIScale() end

---@param Config FAimAssistPoseStateConfig
---@param PoseState ESTEPoseState
---@param bIsSwim boolean
function UWeaponAutoAimingComponent:GetAimAssistConfigByPoseState(Config, PoseState, bIsSwim) end

---@param controller AController
function UWeaponAutoAimingComponent:init(controller) end

---@return FVector2D
function UWeaponAutoAimingComponent:GetScreenCenter() end

function UWeaponAutoAimingComponent:SelectAimTargetAnyway() end

---@param DeltaTime number
function UWeaponAutoAimingComponent:SelectAimTarget(DeltaTime) end

function UWeaponAutoAimingComponent:ClearAutoAimSelectTarget() end

---@param DeltaTime number
function UWeaponAutoAimingComponent:SelectAimAssistTarget(DeltaTime) end

function UWeaponAutoAimingComponent:ClearMagnetAssistEnemy() end

---@param CDTime number
function UWeaponAutoAimingComponent:SetCD(CDTime) end

function UWeaponAutoAimingComponent:ClearCD() end

---@return boolean
function UWeaponAutoAimingComponent:IsCool() end

---@return boolean
function UWeaponAutoAimingComponent:isOpenFire() end

---@return boolean
function UWeaponAutoAimingComponent:HoldFire() end

---@param DeltaTime number
function UWeaponAutoAimingComponent:TryDoAiming(DeltaTime) end

---@param startPoint FVector
---@param pawn ACharacter
---@return boolean
function UWeaponAutoAimingComponent:CanEnemeyRaycastReach(startPoint, pawn) end

---@param startPoint FVector
---@param pawn ACharacter
---@return boolean
function UWeaponAutoAimingComponent:CheckSmoke(startPoint, pawn) end

---@return boolean
function UWeaponAutoAimingComponent:CheckBuffStun() end

function UWeaponAutoAimingComponent:OnEquipWeapon() end

function UWeaponAutoAimingComponent:OnUnequipWeapon() end

---@param Weapon ASTExtraWeapon
function UWeaponAutoAimingComponent:OnShoot(Weapon) end

---@param BeCarriedPawn ASTExtraBaseCharacter
---@param CarringState ECarringState
function UWeaponAutoAimingComponent:RegisterCarryPawn(BeCarriedPawn, CarringState) end

---@param WorldSpacePoint FVector
---@return FVector
function UWeaponAutoAimingComponent:WorldSpaceToScreenSpace(WorldSpacePoint) end

---@param enemy ACharacter
---@param info FAutoAimEnemyInfo
---@return boolean
function UWeaponAutoAimingComponent:IsEnemeyInAutoAimRange(enemy, info) end

---@param EnemyInfo FAutoAimEnemyInfo
---@param EnemyStateRate number
---@param OutterRadiusColor FLinearColor
---@param InnerRadiusColor FLinearColor
---@return FAutoAimDebugEnemyInfo
function UWeaponAutoAimingComponent:CalculateDebugEnemyInfo(EnemyInfo, EnemyStateRate, OutterRadiusColor, InnerRadiusColor) end

---@param DeltaSeconds number
---@param Speed number
function UWeaponAutoAimingComponent:UpdateAutoAimInput(DeltaSeconds, Speed) end

function UWeaponAutoAimingComponent:UpdateAimAssist() end

---@param Config FAutoAimingConfig
function UWeaponAutoAimingComponent:SkillOverrideConfig(Config) end

function UWeaponAutoAimingComponent:SkillRevertConfig() end

---@param enemy ACharacter
---@param boneName string
---@param map ULuaMapHelper<number, FVector>
---@return boolean
function UWeaponAutoAimingComponent:CalculateScreenDisToBone(enemy, boneName, map) end

---@param holdTime number
function UWeaponAutoAimingComponent:SetFireHoldTime(holdTime) end

---@param PlayerState ASTExtraPlayerState
---@param Character ACharacter
---@return boolean
function UWeaponAutoAimingComponent:isTeamMate(PlayerState, Character) end

function UWeaponAutoAimingComponent:FindBarrierFreeEnemy() end

function UWeaponAutoAimingComponent:FindInRangeEnemies() end

function UWeaponAutoAimingComponent:FindAimAssistTarget() end

---@param PlayerEyeLoc FVector
---@param PlayerEyeRotator FRotator
---@param EnemyInfo FAutoAimEnemyInfo
---@return boolean
function UWeaponAutoAimingComponent:IsThisTargetValid(PlayerEyeLoc, PlayerEyeRotator, EnemyInfo) end

---@return boolean
function UWeaponAutoAimingComponent:IsUseHandFightAutoAimingConfig() end

---@return boolean
function UWeaponAutoAimingComponent:IsUseHandFightAimAssistConfig() end

---@param EnemyPawn ACharacter
function UWeaponAutoAimingComponent:GetAutoAimBoneSelectors(EnemyPawn) end
