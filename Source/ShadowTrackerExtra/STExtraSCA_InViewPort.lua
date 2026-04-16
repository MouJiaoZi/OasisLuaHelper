---@meta

---@class EAffectSightType
---@field Normal number
---@field Angle number
---@field Both number
EAffectSightType = {}


---@class USTExtraSCA_InViewPort: USightActionNode
---@field bDisableEffect boolean
---@field CurrentIsAngleSight boolean
---@field bCheckInScreen boolean
---@field bBindAvatarLoadEvent boolean
---@field bBindWeaponUseEvent boolean
---@field AffectSightType EAffectSightType
---@field MaxValueOnFrame number
---@field ViewPortLeftBottom FVector2D
---@field ViewPortRightTop FVector2D
---@field TargetClass APawn
---@field InViewportPawnList ULuaArrayHelper<APawn>
---@field TempViewportNewPawnList ULuaArrayHelper<APawn>
---@field NewList ULuaArrayHelper<APawn>
local USTExtraSCA_InViewPort = {}

---@param InPlayer ASTExtraPlayerController
---@param DeltaTime number
function USTExtraSCA_InViewPort:UpdateViewportPawnList(InPlayer, DeltaTime) end

---@param InPlayer ASTExtraPlayerController
---@param WorldLocation FVector
---@param ScreenLeftBottom FVector2D
---@param ScreenRightTop FVector2D
---@return boolean
function USTExtraSCA_InViewPort:PointInScreenRange(InPlayer, WorldLocation, ScreenLeftBottom, ScreenRightTop) end

---@param AsyncLoadID number
---@param LoadAvatar UAvatarComponent
function USTExtraSCA_InViewPort:HandleAvatarLoadingFinished(AsyncLoadID, LoadAvatar) end

---@param Weapon ASTExtraWeapon
function USTExtraSCA_InViewPort:HandleGetWeaponWeapon(Weapon) end

---@param Weapon ASTExtraWeapon
---@param HandleIn boolean
function USTExtraSCA_InViewPort:HandleWeaponWeapon(Weapon, HandleIn) end

function USTExtraSCA_InViewPort:ClearInViewportPawnList() end

---@param InDisable boolean
function USTExtraSCA_InViewPort:SetDiableEffect(InDisable) end

---@param NodeOwner USTextraSightScopeMgr
---@param IsBind boolean
function USTExtraSCA_InViewPort:BindSameEvent(NodeOwner, IsBind) end

---@param WeapinInstanceID number
function USTExtraSCA_InViewPort:OnAngleChange(WeapinInstanceID) end

---@param InIsAngle boolean
function USTExtraSCA_InViewPort:Event_AngleChange(InIsAngle) end

---@param InScreenCharacters ULuaArrayHelper<APawn>
function USTExtraSCA_InViewPort:Event_InScreenRange(InScreenCharacters) end

---@param OutScreenCharacters ULuaArrayHelper<APawn>
function USTExtraSCA_InViewPort:Event_OutScreenRange(OutScreenCharacters) end

---@param LoadAvatar UAvatarComponent
function USTExtraSCA_InViewPort:Event_HandleAvatarLoadingFinished(LoadAvatar) end

---@param Weapon ASTExtraWeapon
---@param HandleIn boolean
function USTExtraSCA_InViewPort:Event_HandleGetWeaponWeapon(Weapon, HandleIn) end
