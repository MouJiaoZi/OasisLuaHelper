---@meta

---@class APVEGameMode: ASTExtraGameFramework
local APVEGameMode = {}

function APVEGameMode:CreateCheatCommandComponentForRoom() end

---@param InTeamID number
function APVEGameMode:PreCreatePlayerWithTeam(InTeamID) end

---@return number
function APVEGameMode:GetAIDifficulty() end

---@param Damage number
---@param DamageType UDamageType
---@param EventInstigator AController
---@param DamagedActor AActor
---@param DamageCauser AActor
---@param DamageFlags EDamageEventFlags
function APVEGameMode:OnInstigatedDamage(Damage, DamageType, EventInstigator, DamagedActor, DamageCauser, DamageFlags) end

function APVEGameMode:TryStartRecordingReplay() end
