---@meta

---用于怪物血条显示的UI，显示在屏幕固定位置
---@class UPlayerSimpleCharacterScreenWidget: UObjectPositionWidget
---@field bUseDefaultScreenPos boolean
---@field DefaultScreenPos FVector2D
---@field BHideInPlane boolean
---@field BBindHPChange boolean
---@field BUseHelmetSocket boolean
---@field BDeadHide boolean
---@field DeadLocOffset FVector
---@field HelmetSocketOffset number
---@field bForceShowWhenTakeDamage boolean
---@field BeHitShowDuration number
---@field bShowBySelfHit boolean
---@field bShowObserver boolean
---@field bShowInPlayerView boolean
---@field HelmetSocketName string
---@field OcclusionSocketName string
local UPlayerSimpleCharacterScreenWidget = {}

---@param InHPCurrent number
---@param InHPMax number
function UPlayerSimpleCharacterScreenWidget:OnSimpleCharacterHpChange(InHPCurrent, InHPMax) end

---@param InHPCurrent number
---@param InHPMax number
---@param PrevHP number
function UPlayerSimpleCharacterScreenWidget:OnBaseCharacterHPChange(InHPCurrent, InHPMax, PrevHP) end

---@param Causer AActor
function UPlayerSimpleCharacterScreenWidget:OnHandleHit(Causer) end

function UPlayerSimpleCharacterScreenWidget:Event_OnHPChange() end

function UPlayerSimpleCharacterScreenWidget:OnCharacterPostNetInit() end

function UPlayerSimpleCharacterScreenWidget:Event_OnCharacterPostNetInit() end

---@param BuffName string
function UPlayerSimpleCharacterScreenWidget:OnCharBuffAdd(BuffName) end

---@param BuffName string
function UPlayerSimpleCharacterScreenWidget:OnCharBuffRemove(BuffName) end

---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UPlayerSimpleCharacterScreenWidget:OnBaseCharPostTakeDamage(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param Causer AActor
---@param Damage number
function UPlayerSimpleCharacterScreenWidget:OnSimpleCharPostTakeDamage(Causer, Damage) end

function UPlayerSimpleCharacterScreenWidget:Event_OnCurrentShowTimeChange() end
