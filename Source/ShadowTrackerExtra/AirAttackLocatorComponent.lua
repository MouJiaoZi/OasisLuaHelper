---@meta

---@class UAirAttackLocatorComponent: UActorComponent
---@field AALOpenMotionSensibility number
---@field AALOpenSensibility number
---@field OpenAALFOV number
---@field MaxDist number
---@field MinDist number
---@field DangerDist number
---@field ADSModify FCameraModifyData
---@field bEnableServerConfirmItemExsist boolean
---@field bLocationCheckStartLocUseCamera boolean
---@field bNoWeaponAAlOpenAttach boolean
---@field bEnableTargetArmLengthOffset boolean
---@field TargetArmLengthOffsetValue number
---@field bEnableTickCheckAirraidActor boolean
---@field bEnableHandleWeaponScopeOut boolean
---@field bHasTargetArmLengthOffset boolean
---@field MarkInstanceIDs ULuaArrayHelper<number>
---@field FreeArrowParticle UParticleSystem
---@field AirAttackActorTemplate AAirAttackLocatorCalledActor
---@field FixArrowScaleDistance number
---@field ArrowScaleFactor1 number
---@field ArrowScalePlus1 number
---@field ArrowScaleFactor2 number
---@field ArrowScalePlus2 number
---@field BeginCheckDist number
---@field ShortDist number
---@field ChannelType ECollisionChannel
---@field TargetLocation FVector
---@field bNotifyCallAirAttackLocator boolean
---@field NotifyCallAALHorizontalDist number
---@field NotifyCallAALVerticalDist number
---@field bDispatchAssignedMarkData boolean
local UAirAttackLocatorComponent = {}

---@param bOpen boolean
function UAirAttackLocatorComponent:SetAALFov(bOpen) end

---@return boolean
function UAirAttackLocatorComponent:CheckAALAvaliable() end

---@param bOpen boolean
function UAirAttackLocatorComponent:SwitchAALCamera(bOpen) end

---@param BeginLocation FVector
---@param EndLocation FVector
function UAirAttackLocatorComponent:ServerSetAirAttackLocation(BeginLocation, EndLocation) end

---@return number
function UAirAttackLocatorComponent:GetTargetDistance() end

---@return boolean
function UAirAttackLocatorComponent:GetAALAvaliable() end

---@param bExsist boolean
function UAirAttackLocatorComponent:SetItemExsist(bExsist) end

---@return number
function UAirAttackLocatorComponent:GetMarkInstanceID() end

---@param InstanceID number
function UAirAttackLocatorComponent:RecycleMarkInstanceID(InstanceID) end

---@return boolean
function UAirAttackLocatorComponent:GetIsDispatchAssignedMarkData() end

function UAirAttackLocatorComponent:SetFinalLocation() end

---@param bAvaliable boolean
function UAirAttackLocatorComponent:SetLocatorFreeArrow(bAvaliable) end

function UAirAttackLocatorComponent:OnFreeArrowLoadFinsh() end

---@param Location FVector
function UAirAttackLocatorComponent:OnCalledActorLoadFinish(Location) end

---@param Location FVector
function UAirAttackLocatorComponent:BPOnServerCallAirAttackLocator(Location) end

---@param Location FVector
function UAirAttackLocatorComponent:ServerNotifyOtherCallAirAttackLocator(Location) end

---@param Location FVector
function UAirAttackLocatorComponent:RPC_OtherClientNotifiedCallAirAttackLocator(Location) end

---@param Location FVector
function UAirAttackLocatorComponent:BPOnOtherClientNotifiedCallAirAttackLocator(Location) end

---@param bIsBegin boolean
function UAirAttackLocatorComponent:HandleWeaponScopeOut(bIsBegin) end
