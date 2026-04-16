---@meta

---信号枪子弹
---@class ASTExtraFlareGunBullet: ASpecialBulletBase
---@field CallSuperAirDropHeight number
---@field Phase1LastTime number
---@field Phase2FallZSpeed number
---@field CallSuperAirSropRadius number
---@field ParticleScaleParamByDistanceToCamera number
---@field ForceAirDropType EAirDropType
---@field AirDropVehiclePath string
---@field AirDropAbilityID number
---@field CallSuccessMsgFXTipID number
---@field TeammateCallSuccessMsgFXTipID number
---@field CallSuccessMsgTipID number
---@field TeammateCallSuccessMsgTipID number
---@field CacheAirDropType EAirDropType
---@field WingmanMeshClass UStaticMesh
---@field WingmanMaterialClass UMaterialInterface
---@field WingmanParticleClass UParticleSystem
---@field WingmanBattleAkAudioEventClass UAkAudioEvent
---@field WingmanEffect FWingmanEffect
local ASTExtraFlareGunBullet = {}

---@param _ImpactResult FHitResult
---@param _ImpactVelocity FVector
function ASTExtraFlareGunBullet:OnBounce(_ImpactResult, _ImpactVelocity) end

function ASTExtraFlareGunBullet:RPC_Multicast_EnterPhase2() end

---通知非队友召唤成功
function ASTExtraFlareGunBullet:NotifyOthersCallSuccess() end

function ASTExtraFlareGunBullet:DestroyBulletOnGotoFighting() end


---召回信号枪子弹
---@class ASTExtraRevivalFlareGunBullet: ASTExtraFlareGunBullet
---@field TimeOverMsgTipID number
---@field FailedCallNoRevivalTargetMsgTipID number
---@field FailedCallHeightLimitMsgTipID number
---@field FailedCallHeightLimitTlog number
---@field SuccCallAirDropTlog number
---@field LimitTimeEnd number
local ASTExtraRevivalFlareGunBullet = {}

---@return boolean
function ASTExtraRevivalFlareGunBullet:CheckCanRevival() end

---@param PlayerController ASTExtraPlayerController
---@param RevivalLocation FVector
function ASTExtraRevivalFlareGunBullet:RevivalPlayer(PlayerController, RevivalLocation) end

---@return number
function ASTExtraRevivalFlareGunBullet:GetTimeLimitRemainingTime() end
