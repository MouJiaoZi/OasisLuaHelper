---@meta

---@class ESoundType
---@field SoundType_FootStep_Default number @默认声，不使用
---@field SoundType_FootStep_Walk number @走路脚步声
---@field SoundType_FootStep_Run number @跑步脚步声
---@field SoundType_FootStep_Crouch number @蹲行脚步声
---@field SoundType_FootStep_Prone number @趴行脚步声
---@field SoundType_Weapon_L_WithSilencer number @远程带消音器枪声
---@field SoundType_Weapon_L_WithoutSilencer number @远程不带消音器枪声
---@field SoundType_Weapon_M_WithSilencer number @中程带消音器枪声
---@field SoundType_Weapon_M_WithoutSilencer number @中程不带消音器枪声
---@field SoundType_Weapon_S_WithSilencer number @短程带消音器枪声
---@field SoundType_Weapon_S_WithoutSilencer number @短程不带消音器枪声
---@field SoundType_Weapon_BulletImpact number @子弹碰撞声
---@field SoundType_Glass number @破窗声
---@field SoundType_Grenade number @手雷爆炸
---@field SoundType_FlashBomb number @闪光弹爆炸
---@field SoundType_SmokeBomb number @烟雾弹爆炸
---@field SoundType_BurningBottle number @燃烧瓶
---@field SoundType_Vehicle number @开车声
---@field SoundType_Cracker number @鞭炮
---@field SoundType_YearBeastCracker number @年兽鞭炮
---@field SoundType_C4 number @C4炸弹
---@field SoundType_StickyBomb number @粘性炸弹
---@field SoundType_VehicleExplosion number @车辆爆炸
---@field SoundType_PlayerVoice number @玩家语音
ESoundType = {}


---@class EHearSoundCharacterType
---@field CharacterType_Zombie number @僵尸
---@field CharacterType_Animal number @小动物
---@field CharacterType_AIPlayer number @假人AI
EHearSoundCharacterType = {}


---@class FSoundConfig
---@field TransDist number
---@field bSetBlackboardValue boolean
---@field BlackboardNameList ULuaArrayHelper<string>
---@field FilterClass USoundHearFilter
FSoundConfig = {}


---@class FMLAISoundConfig
---@field TransDist number
---@field FilterClass USoundHearFilter
FMLAISoundConfig = {}


---@class FHistorySoundSource
FHistorySoundSource = {}


---@class FHistorySoundSourceQuere
FHistorySoundSourceQuere = {}


---@class USoundHearFilter: UObject
local USoundHearFilter = {}


---@class USoundHearFilter_OwnerSameTeam: USoundHearFilter
local USoundHearFilter_OwnerSameTeam = {}


---@class USoundHearFilter_DifferentTeam: USoundHearFilter
local USoundHearFilter_DifferentTeam = {}


---@class UAIWorldSoundManagerComponent: UActorComponent
---@field SoundConfig ULuaMapHelper<ESoundType, FSoundConfig>
---@field MLAISoundConfig ULuaMapHelper<ESoundType, FMLAISoundConfig>
---@field HearSoundCharacterTypes ULuaArrayHelper<EHearSoundCharacterType>
---@field ProjectileTagToSoundType ULuaMapHelper<string, ESoundType>
---@field bAIHearSoundForState boolean
---@field bAISenseBulletHole boolean
---@field AISenseBulletHoleRadius number
---@field bAIRecordHistorySoundSource boolean
---@field AIRecordHistorySoundSourceDuartion number
---@field AIRecordHistorySoundSourceNum number
---@field bHearNearDeathPlayer boolean
---@field AIRecordSoundSourcePlayer string
---@field AIRecordSoundType string
---@field AIRecordSoundTimestamp string
local UAIWorldSoundManagerComponent = {}

---@param SoundType ESoundType
---@param Pos FVector
---@param Instigator AActor
function UAIWorldSoundManagerComponent:ProduceSoundInPos(SoundType, Pos, Instigator) end

---@param Projectile AActor
function UAIWorldSoundManagerComponent:OnProjectileExplode(Projectile) end
