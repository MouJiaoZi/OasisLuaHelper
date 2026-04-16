---@meta

---@class USeekAndLockWeapon3DWidget: UUAEUserWidget
---@field LandscapeRotation number
---@field offset number
---@field width number
---@field materialXParameterName string
---@field CPPNavigatorTickRate number
---@field DisplayCharRotation number
local USeekAndLockWeapon3DWidget = {}

---@param OwnerActor AActor
---@param WidgetComponent UWidgetComponent
function USeekAndLockWeapon3DWidget:InitCustomWidget(OwnerActor, WidgetComponent) end

function USeekAndLockWeapon3DWidget:OnPostInitWidget() end

---@param OwnerActor AActor
---@param WidgetComponent UWidgetComponent
function USeekAndLockWeapon3DWidget:BindCustomUserEvent(OwnerActor, WidgetComponent) end

---@param InCompassMat UMaterialInstanceDynamic
function USeekAndLockWeapon3DWidget:SetCompassMat(InCompassMat) end

---@return FRotator
function USeekAndLockWeapon3DWidget:GetPlayerLookRotation() end

function USeekAndLockWeapon3DWidget:UpdateRT() end

---@param bIsBegin boolean
function USeekAndLockWeapon3DWidget:HandleWeaponScopeIn(bIsBegin) end

---@param bIsBegin boolean
function USeekAndLockWeapon3DWidget:HandleWeaponScopeOut(bIsBegin) end

---@param OwnerActor AActor
function USeekAndLockWeapon3DWidget:HandleWeaponGetOwner(OwnerActor) end

---@param HitInfo FHitResult
function USeekAndLockWeapon3DWidget:HandleChangeTraceTarget(HitInfo) end

---@param Distance number
function USeekAndLockWeapon3DWidget:BPChangeTraceTargetDis(Distance) end

---@param Tip string
function USeekAndLockWeapon3DWidget:HandleChangeSeekAndLockStageTip(Tip) end

---@param Tip string
function USeekAndLockWeapon3DWidget:BPChangeSeekAndLockStageTip(Tip) end

---@param InValue number
---@param ModValue number
---@return boolean
function USeekAndLockWeapon3DWidget:IsModToZero(InValue, ModValue) end

---@param InValue number
---@param InText string
---@param ReverseResult boolean
---@return boolean
function USeekAndLockWeapon3DWidget:IsIntNotEqualToText(InValue, InText, ReverseResult) end

---@param InValue string
---@param InText string
---@param ReverseResult boolean
---@return boolean
function USeekAndLockWeapon3DWidget:IsStrNotEqualToText(InValue, InText, ReverseResult) end

---@param SelfValue string
---@param OtherText string
---@param ReverseResult boolean
---@return boolean
function USeekAndLockWeapon3DWidget:IsTextNotEqualTo(SelfValue, OtherText, ReverseResult) end

function USeekAndLockWeapon3DWidget:Show3DUI() end

function USeekAndLockWeapon3DWidget:Hide3DUI() end

---@param bSet boolean
function USeekAndLockWeapon3DWidget:ExtraForGuidedMissileRenderStyle(bSet) end
