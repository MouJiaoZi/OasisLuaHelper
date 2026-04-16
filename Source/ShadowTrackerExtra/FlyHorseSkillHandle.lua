---@meta

---@class UFlyHorseSkillHandle: UVehicleSkillBaseHandle
---@field ServerStationaryRecoverInterval number
---@field ServerStationaryRecoverHPAmount number
---@field ServerStationaryRecoverFuelAmount number
---@field EndOfFullControlTimeDisplayCooldown number
---@field EndOfFullControlTimeTipsID number
---@field WingsNotifySoftAkEventMap ULuaMapHelper<string, UAkAudioEvent>
---@field Sfx_FlyHorseWindSoftSound UAkAudioEvent
---@field Sfx_FlyHorseSoarTeamSoftSound UAkAudioEvent
---@field Sfx_FlyHorseSoarEnemySoftSound UAkAudioEvent
---@field Sfx_FlyHorseSoarEndSoftSound UAkAudioEvent
---@field WingsAttachSocket string
---@field WingsAttachOffsetByAvatar ULuaMapHelper<EHorseAvatarType, FVector>
---@field WingsDefaultMesh USkeletalMesh
---@field WingsDefaultAnimInstance UAnimInstance
---@field CHFlyHorseAnimInsSubSlotName string
---@field FlyHorseAnimInsSubSlotName string
---@field CHFlyHorseSubAnimInstance UAnimInstance
---@field CHFlyHorseWolfSubAnimInstance UAnimInstance
---@field FlyHorseSubAnimInstance UAnimInstance
---@field FlyHorseWolfSubAnimInstance UAnimInstance
---@field FlyHorseWingsStaticEffectName string
---@field FlyHorseWingStaticEffects FParticleSoftWrapperArray
---@field FlyHorseWingsTrailEffectName string
---@field FlyHorseWingTrailEffect FParticleSoftWrapperArray
---@field FlyHorseWingsTrailEffectSpeedThreshold number
---@field TickHorseWingAnimationTypeInterval number
---@field HorseWingCanConsiderSoarSpeed number
---@field HorseWingCanConsiderSoarSpeedMaintainDuration number
---@field HorseWingSoarMaxRandomDelay FFloatRange
---@field HorseWingSoarDuration FFloatRange
---@field ServerStationaryRecoverTimer number
---@field EndOfFullControlTipsDisplayTimer number
---@field WingsNotifyAkEventMap ULuaMapHelper<string, UAkAudioEvent>
---@field Sfx_FlyHorseAkSoundLoading boolean
---@field FlyHorseWindSoundLoop FSTExtraVehicleSfxLoop
---@field FlyHorseSoarSoundLoop FSTExtraVehicleSfxLoop
---@field FlyHorseClientSubAnimInstanceLoading boolean
---@field bIsAsyncLoadingWingsMeshAssets boolean
---@field bIsAsyncLoadingWingsAudioAssets boolean
---@field WingStaticParticleNeedAttach boolean
---@field WingTrailParticleNeedAttach boolean
---@field HorseWingAnimationType EHorseWingMaxSpeedAnimationType
local UFlyHorseSkillHandle = {}

function UFlyHorseSkillHandle:TickUpdateHorseWingParticle() end

---@param DeltaTime number
function UFlyHorseSkillHandle:TickUpdateHorseAudio(DeltaTime) end

---@param DeltaTime number
function UFlyHorseSkillHandle:TickUpdateHorseRecoverFuel(DeltaTime) end

---处理天马翅膀动画类型的更新逻辑 功能说明： - 根据马匹当前飞行速度和持续时间条件，在普通飞行和滑翔动画之间切换 - 包含速度维持检测、滑翔延迟和滑翔持续时间的完整状态管理
---@param DeltaSeconds number
function UFlyHorseSkillHandle:TickUpdateHorseWingAnimationType(DeltaSeconds) end

function UFlyHorseSkillHandle:RegisterAirVehicleComponent() end

function UFlyHorseSkillHandle:UpdateFlyHorseWingAudioClientAssets() end

function UFlyHorseSkillHandle:InitAkAudio() end

function UFlyHorseSkillHandle:UpdateFlyHorseWingMeshClientAssets() end

function UFlyHorseSkillHandle:ReplaceFlyHorseClientSubAnimInstance() end

function UFlyHorseSkillHandle:OnAsyncLoadedClientWingsAssets() end

function UFlyHorseSkillHandle:RegisterWingDataToHorse() end

function UFlyHorseSkillHandle:OnRep_HorseWingAnimationType() end
