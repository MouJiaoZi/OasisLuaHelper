---@meta

---@class FClientDamageStruct
---@field Damage number
---@field BisCrit boolean
FClientDamageStruct = {}


---@class AAsianGameEasyBaseTarget: AActivityBaseActor
---@field MaxHealth number
---@field CurHealth number
---@field BisAlive boolean
---@field BisUseForceNetUpdate boolean
---@field TargetTypeID number
---@field MatchStageID number
---@field InstigatorPlayerStateArray ULuaArrayHelper<AAsianGamesPlayerState>
---@field AsianTargetHealthDelegate FAsianTargetHealthDelegate
local AAsianGameEasyBaseTarget = {}

function AAsianGameEasyBaseTarget:OnRep_CurHealth() end

function AAsianGameEasyBaseTarget:OnRep_BisAlive() end

---@param Color EAsianGamesTeamColor
function AAsianGameEasyBaseTarget:S2C_RPC_HealthZeroEffect(Color) end

---@param Controller AController
---@return boolean
function AAsianGameEasyBaseTarget:JudgeTakeDamage_2(Controller) end

---@param Color EAsianGamesTeamColor
function AAsianGameEasyBaseTarget:ClientHealthZeroEffect(Color) end

---@param Color EAsianGamesTeamColor
function AAsianGameEasyBaseTarget:BP_ClientHealthZeroEffect(Color) end

---@param _bisAlive boolean
function AAsianGameEasyBaseTarget:BP_BisAliveDOREPONCE(_bisAlive) end

---@param _curHealth number
function AAsianGameEasyBaseTarget:BP_CurHealthDOREPONCE(_curHealth) end

---@param PC AController
function AAsianGameEasyBaseTarget:AddToInstigatorPlayerStateArray(PC) end

function AAsianGameEasyBaseTarget:ResetInstigatorPlayerStateArray() end

function AAsianGameEasyBaseTarget:PostInstigatorPlayerStateArrayToGameMode() end

---@param TeamID number
---@param HitComp UPrimitiveComponent
---@return number
function AAsianGameEasyBaseTarget:GetTargetGrade(TeamID, HitComp) end

---@return number
function AAsianGameEasyBaseTarget:GetTargetBelongTeamNum() end

function AAsianGameEasyBaseTarget:ResetTarget() end

---@param PC ASTExtraPlayerController
---@return EAsianGamesTeamColor
function AAsianGameEasyBaseTarget:GetTeamColorByController(PC) end

---@param ShootWeapon ASTExtraShootWeapon
---@param HitResult FHitResult
---@param Damage number
---@param UseClientLoc boolean
---@param SelfLoc FVector
---@return FClientDamageStruct
function AAsianGameEasyBaseTarget:ClientSimulationDamage(ShootWeapon, HitResult, Damage, UseClientLoc, SelfLoc) end

---@param ShootWeapon ASTExtraShootWeapon
---@param Bullet ASTExtraShootWeaponBulletBase
---@param HitInfo FHitResult
---@param BulletHitInfoUploadData FBulletHitInfoUploadData
function AAsianGameEasyBaseTarget:BindOnWeaponBulletHitDelagate(ShootWeapon, Bullet, HitInfo, BulletHitInfoUploadData) end

---@param PC ASTExtraPlayerController
function AAsianGameEasyBaseTarget:ServerToDealDestroyColorEffect(PC) end
