---@meta

---@class FClientFieldOfViewData
---@field MinimalScreenLocation FVector2D
---@field MaximumScreenLocation FVector2D
---@field OldFieldOfViewNotificationStatus EFieldOfViewNotificationStatus
---@field CurrentFieldOfViewNotificationStatus EFieldOfViewNotificationStatus
FClientFieldOfViewData = {}


---@class UReportClientFieldOfViewDataComponent: UActorComponent, IActorBoundingBoxGetterInterface
local UReportClientFieldOfViewDataComponent = {}

---@param ClientFieldOfViewData FClientFieldOfViewData
function UReportClientFieldOfViewDataComponent:ServerReportClientFieldOfViewData(ClientFieldOfViewData) end

---@param Actor AActor
---@return FBox
function UReportClientFieldOfViewDataComponent:GetActorBoundingBox_Implementation(Actor) end

---@param Sender UFieldOfViewNotificationComponentRegistry
---@param FieldOfViewNotificationComponent UFieldOfViewNotificationComponent
function UReportClientFieldOfViewDataComponent:OnFieldOfViewNotificationComponentRegistryFieldOfViewNotificationComponentRegistered(Sender, FieldOfViewNotificationComponent) end

---@param Sender UFieldOfViewNotificationComponentRegistry
---@param FieldOfViewNotificationComponent UFieldOfViewNotificationComponent
function UReportClientFieldOfViewDataComponent:OnFieldOfViewNotificationComponentRegistryFieldOfViewNotificationComponentUnregistered(Sender, FieldOfViewNotificationComponent) end

---@param Sender UFieldOfViewNotificationComponent
---@param OldFieldOfViewNotificationStatus EFieldOfViewNotificationStatus
function UReportClientFieldOfViewDataComponent:OnFieldOfViewNotificationComponentInFieldOfViewChanged(Sender, OldFieldOfViewNotificationStatus) end

---@param Sender UFieldOfViewNotificationComponent
---@return boolean
function UReportClientFieldOfViewDataComponent:OnFieldOfViewNotificationComponentIsCheckingFieldOfViewEnabled(Sender) end
