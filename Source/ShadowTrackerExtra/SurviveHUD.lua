---@meta

---@class EPawnDetailInfoShowType
---@field PawnDetailInfoShowType_SelfAndOther number @自己和他人
---@field PawnDetailInfoShowType_Self number @自己
---@field PawnDetailInfoShowType_Other number @他人
EPawnDetailInfoShowType = {}


---@class EPawnDetailInfoShowFlag
---@field PawnDetailInfoShowFlag_Base number @基础
---@field PawnDetailInfoShowFlag_Camera number @相机
---@field PawnDetailInfoShowFlag_Weapon number @武器
---@field PawnDetailInfoShowFlag_GameStates number @GameStates
---@field PawnDetailInfoShowFlag_Debug number @调试信息
---@field PawnDetailInfoShowFlag_Animation number @动画
---@field PawnDetailInfoShowFlag_Any number
EPawnDetailInfoShowFlag = {}


---@class USurviveHUDLibrary: UBlueprintFunctionLibrary
local USurviveHUDLibrary = {}

---@param InAnimInstance UAnimInstance
---@param EnableBlendInfo boolean
---@return string
function USurviveHUDLibrary:DebugGetAnimInstanceCurrentAnimNameBP(InAnimInstance, EnableBlendInfo) end


---@class ASurviveHUD: AHUD
---@field bIsWorldMapVisible number
---@field MarkerPosition FVector
---@field bShowCrosshair boolean
---@field HideCrosshairByStyleNum number
---@field bDrawCrosshair boolean
---@field bOverrideCrosshair boolean
---@field HitPerform FHitPerformData
---@field HUDMainTextureViewSize number
---@field CrossHairDisableTextureViewSize number
---@field CrossHairDisablePaintingTextureViewSize number
---@field HUDWidgetClassList ULuaArrayHelper<UHUDWidgetBase>
---@field HudWidgets ULuaArrayHelper<UHUDWidgetBase>
---@field HousesForRCRVisual ULuaArrayHelper<AActor>
---@field PlayerInfoExtendedString ULuaMapHelper<string, string>
---@field WorldMap FCanvasIcon
---@field IsDrawSpread boolean
---@field DateDrawOffsetX number
---@field HitUIIconData FWeaponHitUIIconData
---@field ShouldShowDepthOfViewInfoOnHUD boolean
---@field ShouldShowWeaponAvatarOnHUD boolean
---@field ShouldShowSensibilityOnHUD boolean
---@field ShouldShowPawnMeshOnHUD boolean
---@field ShouldShowGAStateInfo boolean
local ASurviveHUD = {}

---@param InDrawCrossHair boolean
function ASurviveHUD:SetDrawCrosshair(InDrawCrossHair) end

function ASurviveHUD:AddStyleCrosshairHide() end

---@param Damage number
---@param IsHeadShot boolean
---@param bIsDeadlyShot boolean
function ASurviveHUD:AddHitDamageUI(Damage, IsHeadShot, bIsDeadlyShot) end

---@param Damage number
---@param HitTarget AActor
---@param ConfigIndex number
---@param bIsHeadShot boolean
---@param bLocalDamage boolean
function ASurviveHUD:K2_AddHitDamageNumber(Damage, HitTarget, ConfigIndex, bIsHeadShot, bLocalDamage) end

---@param Damage number
---@param HitTarget AActor
---@param DamageTags ULuaArrayHelper<string>
---@param IsHeadShot boolean
---@param bIsDeadlyShot boolean
---@param MyTeamID number
---@param EnemyTeamID number
---@param PlayerNumPerTeam number
---@param bDisplayAtTargetLocation boolean
function ASurviveHUD:AddHitDamageNumber(Damage, HitTarget, DamageTags, IsHeadShot, bIsDeadlyShot, MyTeamID, EnemyTeamID, PlayerNumPerTeam, bDisplayAtTargetLocation) end

---@param DamageStr string
---@param HitTarget AActor
---@param IsHeadShot boolean
---@param bIsDeadlyShot boolean
---@param MyTeamID number
---@param EnemyTeamID number
---@param PlayerNumPerTeam number
function ASurviveHUD:AddHitDamageText(DamageStr, HitTarget, IsHeadShot, bIsDeadlyShot, MyTeamID, EnemyTeamID, PlayerNumPerTeam) end

---@param TeamID number
---@return FLinearColor
function ASurviveHUD:GetColorByTeamID(TeamID) end

---@param TeamID number
---@return FLinearColor
function ASurviveHUD:GetPlayerNameColorByTeamID(TeamID) end

---@return number
function ASurviveHUD:GetUIScale() end

---@param Damage number
---@param Target AActor
---@param Causer AActor
---@param DamageFlags number
---@param DamageType number
function ASurviveHUD:AddDamageNumber(Damage, Target, Causer, DamageFlags, DamageType) end

---@param Damage number
---@param Target AActor
---@param Causer AActor
---@param DamageFlags number
---@param DamageType number
---@param DamageTypeTags ULuaArrayHelper<string>
---@param DamagePoint FVector
---@param DamageBodyType number
function ASurviveHUD:AddDamageNumberEX(Damage, Target, Causer, DamageFlags, DamageType, DamageTypeTags, DamagePoint, DamageBodyType) end

---@return boolean
function ASurviveHUD:CheckSupportDamageNumberEx() end

function ASurviveHUD:OnAsyncLoadingFinished() end

function ASurviveHUD:UpdateDamageNumberPar() end

function ASurviveHUD:DrawDepthOfViewInfoOnHUD() end

function ASurviveHUD:DrawWeaponAvatarOnHUD() end

function ASurviveHUD:DrawSensibilityOnHUD() end

function ASurviveHUD:DrawPawnMeshOnHUD() end

function ASurviveHUD:DrawGAStateInfoOnHUD() end
