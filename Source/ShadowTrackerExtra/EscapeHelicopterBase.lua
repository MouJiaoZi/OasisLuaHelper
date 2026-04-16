---@meta

---@class EHelicopterState
---@field E_Spawn_State number
---@field E_FlyIn_State number
---@field E_FallingHeight_State number
---@field E_Hover_State number
---@field E_Play_Anim_State number
---@field E_ClimbHeight_State number
---@field E_FlyOut_State number
EHelicopterState = {}


---@class EHelicopterHeightCorrectType
---@field E_LineTrace_Single number
---@field E_LineTrace_Multiple number
---@field E_Sweep_Single number
EHelicopterHeightCorrectType = {}


---@class AEscapeHelicopterBase: ACharacter, IPostProcessor_SpawnActorAction
---@field bLocalClientOnlyHelicopter boolean
---@field FlyHeight number
---@field FlyTime number
---@field HoverHeight number
---@field HoverTime number
---@field FlyRadiusRangeMin number
---@field FlyRadiusRangeMax number
---@field SearchLocationStep number
---@field ValidLocationActorTag string
---@field OnlyFallingHeightPlot boolean
---@field bUseInitLocationAsHoverLocation boolean
---@field PlayAnimActionDelay number
---@field bClimbHeightBeforPlayAnim boolean
---@field HoverHeightCorrectType EHelicopterHeightCorrectType
---@field InitLocHeightCorrectType EHelicopterHeightCorrectType
---@field HelicopterState EHelicopterState
---@field HelicopterInitLocation FVector
---@field HoverLocation FVector
---@field FlyTargetLocation FVector
---@field PlayCameraAnimAction boolean
---@field ViewTransitionParams FViewTargetTransitionParams
---@field ExtraInfoTag string
---@field TimerHandle_PlayAnimAction FTimerHandle
local AEscapeHelicopterBase = {}

function AEscapeHelicopterBase:OnRep_HelicopterInitLocation() end

function AEscapeHelicopterBase:OnRep_HoverLocation() end

function AEscapeHelicopterBase:OnRep_HelicopterState() end

function AEscapeHelicopterBase:OnRep_ExtraInfoTag() end

function AEscapeHelicopterBase:PlayAnim() end

function AEscapeHelicopterBase:PlayAnimInLocalClient() end

---@param InCheckObject UObject
---@param bPlayInLocalClient boolean
function AEscapeHelicopterBase:CheckEscapeHelicopterAnimPlay(InCheckObject, bPlayInLocalClient) end

function AEscapeHelicopterBase:StopAnim() end

function AEscapeHelicopterBase:OnEnterSpectating() end

---@param WorldContextObject UObject
function AEscapeHelicopterBase:StopEscapeHelicopterAnim(WorldContextObject) end

---@param WorldContextObject UObject
function AEscapeHelicopterBase:OnPlayerEnterSpectating(WorldContextObject) end

---@param TargetLocaction FVector
function AEscapeHelicopterBase:BP_FlyToLocation(TargetLocaction) end

function AEscapeHelicopterBase:BP_PlayCameraAnimAction() end

function AEscapeHelicopterBase:BP_StopCameraAnimAction() end

function AEscapeHelicopterBase:BP_PostProcessActorSpawn() end

function AEscapeHelicopterBase:DoPlayAnimAction() end
