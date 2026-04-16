---@meta

---搜索屏幕固定区域内的目标
---@class UTargetPickerEffect_ScreenArea: UTargetPickerEffectBase
---@field bUseScreenCenterAsCalcCenter boolean
---@field CalcCenterViewportScale FVector2D
---@field ScreenSize_Radius number
---@field ScreenSize_BoxSize FVector2D
---@field bBasedGMPUIAreaQuery boolean
---@field LeftTopScreenAreaPos FVector2D
---@field RightBottomScreenAreaPos FVector2D
---@field GMPUIAreaQueryInterval number
---@field PickTargetTemplateList ULuaArrayHelper<AActor>
---@field MaxPickDistance number
---@field bIgnoreTeammate boolean
---@field PickConditionEffectList ULuaArrayHelper<FConditionEffecttWrapper>
---@field MeshLockSocketName string
---@field bUseObjectPositionWidgetTargetInterface boolean
---@field BlockCheckEffectWrapperList ULuaArrayHelper<FConditionEffecttWrapper_BlockCheck>
---@field TargetLockMarkTextureNormalizeUVStart FVector2D
---@field TargetLockMarkTextureNormalizeUVDimension FVector2D
---@field TargetLockMarkTextureDrawSize FVector2D
---@field TargetLockMarkDrawColor FLinearColor
---@field DrawHUDConditionEffectList ULuaArrayHelper<FConditionEffecttWrapper>
---@field LockFrameCornerLineSize FVector2D
---@field BoxFrameDrawColor FLinearColor
---@field PickTargetDrawColor FLinearColor
---@field PickTargetDrawBoxSize FVector2D
---@field CurGMPUIAreaQueryInterval number
---@field UpdateDeltaTime number
---@field CachedOwnerCharacter ASTExtraCharacter
---@field bEnableOptimization boolean
---@field CachedMaxPickDistanceSq number
local UTargetPickerEffect_ScreenArea = {}

---@param WeaponHudWidget UHUDWidgetBase
---@param Canvas UCanvas
function UTargetPickerEffect_ScreenArea:DrawHUD(WeaponHudWidget, Canvas) end

---@param LeftTopPos FVector2D
---@param RightBottomPos FVector2D
function UTargetPickerEffect_ScreenArea:HandleRespondGetScreenUIArea(LeftTopPos, RightBottomPos) end

---@param Target AActor
---@param PC ASTExtraPlayerController
---@param ViewportSize FVector2D
---@return boolean
function UTargetPickerEffect_ScreenArea:TryPickTarget(Target, PC, ViewportSize) end

---@return FVector2D
function UTargetPickerEffect_ScreenArea:GetScreenOrigin() end

---@param Target AActor
---@return FVector
function UTargetPickerEffect_ScreenArea:GetTargetPickLocation(Target) end

---@param WorldPos FVector
---@return FVector2D
function UTargetPickerEffect_ScreenArea:GetScreenPosByWorldPos(WorldPos) end
