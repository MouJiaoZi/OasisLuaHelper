---@meta

---@class UPlayerCharacterPositionWidget: UObjectPositionWidget
---@field IsCheckTeammate boolean
---@field IsOffsetConsiderScaleZ boolean
---@field BHideInPlane boolean
---@field BBindHPChange boolean
---@field BUseHelmetSocket boolean
---@field BDeadHide boolean
---@field BValidInReadyState boolean
---@field DeadLocOffset FVector
---@field HelmetSocketOffset number
---@field CheckBeHitShow boolean
---@field BeHitShowDuration number
---@field TeammateUIOffset number
---@field SelfUIOffset number
---@field PlayerKey number
---@field HelmetSocketName string
---@field OcclusionSocketName string
local UPlayerCharacterPositionWidget = {}

---@param BehitCharacter ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UPlayerCharacterPositionWidget:OnPlayerCharacterBehit(BehitCharacter, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return boolean
function UPlayerCharacterPositionWidget:Event_CanBehitUpdateShowTime(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param InHPCurrent number
---@param InHPMax number
---@param PrevHP number
function UPlayerCharacterPositionWidget:OnPlayerCharacterHPChange(InHPCurrent, InHPMax, PrevHP) end

function UPlayerCharacterPositionWidget:OnCharacterPostNetInit() end

function UPlayerCharacterPositionWidget:OnTeamIDChange() end

---@param InHPCurrent number
---@param InHPMax number
function UPlayerCharacterPositionWidget:Event_PlayerCharacterHPChange(InHPCurrent, InHPMax) end

function UPlayerCharacterPositionWidget:Event_TeamIDChange() end

function UPlayerCharacterPositionWidget:Event_OnCharacterPostNetInit() end

function UPlayerCharacterPositionWidget:OnViewTargetChange() end

---@param InController AUAEPlayerController
function UPlayerCharacterPositionWidget:OnPlayerControllerRespawn(InController) end

function UPlayerCharacterPositionWidget:Event_ViewTargetChange() end

---@return number
function UPlayerCharacterPositionWidget:GetPlayerKey() end
