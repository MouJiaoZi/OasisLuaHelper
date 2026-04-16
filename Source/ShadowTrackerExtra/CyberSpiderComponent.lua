---@meta

---@class ICyberSpiderHackableInterface: IInterface
ICyberSpiderHackableInterface = {}

---@param Controller AController
function ICyberSpiderHackableInterface:StartHacking(Controller) end

---@param Controller AController
function ICyberSpiderHackableInterface:FinishHacking(Controller) end

---@param Controller AController
function ICyberSpiderHackableInterface:InterruptHacking(Controller) end

---@param Controller AController
---@return boolean
function ICyberSpiderHackableInterface:CanBeHacked(Controller) end


---@class ACyberSpiderDomain: AActor
---@field ObjectPosUIInfo FObjectPosUIInfo
---@field EnemyFoundTipID number
---@field Radius number
---@field DetectBuffName string
local ACyberSpiderDomain = {}

function ACyberSpiderDomain:ClientDisplayEnemy() end

function ACyberSpiderDomain:ClearEnemyUI() end

---@param DeltaTime number
function ACyberSpiderDomain:ServerWarningEnemy(DeltaTime) end


---@class UCyberSpiderComponent: UActorComponent, IInteractorInterface
---@field DontAllowHackingStates ULuaArrayHelper<EPawnState>
---@field VoiceCheckIcon FSlateBrush
---@field bIsInCyberDomain boolean
local UCyberSpiderComponent = {}

function UCyberSpiderComponent:EnterCyberDomain() end

function UCyberSpiderComponent:BlueprintEnterCyberDomain() end

function UCyberSpiderComponent:LeaveCyberDomain() end

function UCyberSpiderComponent:BlueprintLeaveCyberDomain() end

---@param Target AActor
function UCyberSpiderComponent:OnHackableObjectFound(Target) end

---@param DeltaTime number
function UCyberSpiderComponent:UpdateHackableObject(DeltaTime) end

---@param Target AActor
function UCyberSpiderComponent:StartHacking(Target) end

---@param Target AActor
function UCyberSpiderComponent:FinishHacking(Target) end

---@param Target AActor
function UCyberSpiderComponent:InterruptHacking(Target) end

---@param DeltaTime number
function UCyberSpiderComponent:UpdateVoiceCheck(DeltaTime) end

---IInteractorInterface End
function UCyberSpiderComponent:TriggerHack() end
