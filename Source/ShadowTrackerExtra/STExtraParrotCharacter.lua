---@meta

---@class EParrotEmoteType
---@field None number @无
---@field Happy number @开心
---@field Angry number @生气
---@field Alert01 number @警觉
---@field Alert02 number @警觉指向
---@field Disdain number @嫌弃
---@field CheapLaugh number @贱笑
---@field EvilLaugh number @邪恶笑
---@field Cunning number @狡猾
EParrotEmoteType = {}


---@class EParrotEventType
---@field None number @无
---@field Summoned number @被召唤
---@field Dismissed number @被收回
---@field BeAimed number @被瞄准/被命中
---@field AroundEnemy number @周围有敌人
---@field ScoutShout number @侦察喊话
---@field PlayerKnockdown number @玩家击倒敌人
---@field TopSquad number @最强小队
---@field KillKing number @淘汰王
---@field FiveKills number @5杀
---@field SquadWipe number @灭队
---@field PlayerRescue number @玩家救人
---@field PlayerRescued number @玩家被救
---@field PlayerDownAbandoned number @倒地无人救
---@field AllTeamDead number @队友全死
---@field PlayerDowned number @玩家被打倒
---@field InPoison number @玩家吃毒
---@field SlangMatch number @热梗匹配
---@field PlayerQuestion number @玩家提问
---@field NegativeEmotion number @玩家负面情绪
---@field PositiveEmotion number @玩家正面情绪
---@field HighLoadFallback number @高负载兜底
---@field SafetyFallback number @安全审核兜底
---@field UnknownFallback number @不会回答兜底
---@field RestrictedFallback number @话题限制兜底
---@field ImitationFailed number @模仿失败兜底
EParrotEventType = {}


---@class EParrotEffectType
---@field None number @无
---@field Summoned number @召唤
---@field Dismissed number @收回
---@field Death number @死亡
---@field SkillDismiss number @技能返回消失
---@field SkillReturn number @技能返回出现
EParrotEffectType = {}


---@class EParrotDeathReason
---@field None number @未死亡
---@field Unequip number @卸下装备，立即销毁
---@field Killed number @被击杀，播放死亡动画后重生
EParrotDeathReason = {}


---@class EParrotBornReason
---@field Summon number @主人装备鹦鹉道具，首次召唤
---@field Reborn number @被打死后重生
EParrotBornReason = {}


---@class EParrotAttachReason
---@field None number @无
---@field SkillEnd number @技能结束返回
EParrotAttachReason = {}


---@class EParrotSkillType
---@field None number @无
---@field DetectTeam number @侦察周围小队数量
---@field TrackNearestEnemy number @追踪最近敌人
---@field AskBack number @召回
EParrotSkillType = {}


---@class EParrotMoveToTargetState
---@field None number
---@field MoveToTarget number @开始移动
---@field MoveToTargetFailed number @移动失败
---@field MoveToTargetSuccess number @移动成功
EParrotMoveToTargetState = {}


---表情蒙太奇配置
---@class FParrotEmoteMontageConfig
---@field MontageAsset FSoftObjectPath
FParrotEmoteMontageConfig = {}


---特效配置：粒子特效资源 + 挂载信息 + 持续时间
---@class FParrotEffectConfig
---@field EffectPath FSoftObjectPath
---@field EffectTransform FTransform
---@field EffectSocket string
---@field Duration number
---@field bAutonomousOnly boolean
---@field bPlayEmoteMontage boolean
FParrotEffectConfig = {}


---表情额外参数，支持通过 RPC 传递 float/int/string 值
---@class FParrotEmoteParams
---@field FloatParam number
---@field IntParam number
---@field StringParam string
---@field VectorParam FVector
FParrotEmoteParams = {}


---技能CD信息
---@class FSTExtraParrotCharacterSkillCDInfo
---@field LastExecuteTime number
---@field SkillType EParrotSkillType
FSTExtraParrotCharacterSkillCDInfo = {}


---事件CD信息
---@class FParrotEventCDInfo
---@field LastExecuteTime number
---@field EventType EParrotEventType
FParrotEventCDInfo = {}


---单条 AkEvent 兜底配置：音效资源 + 时长
---@class FParrotEmoteAkEventEntry
---@field AkEvent FSoftObjectPath
---@field Duration number
FParrotEmoteAkEventEntry = {}


---AkEvent 数组包装，用于 TMap Value
---@class FParrotEmoteAkEventArray
---@field Entries ULuaArrayHelper<FParrotEmoteAkEventEntry>
FParrotEmoteAkEventArray = {}


---某个 EventType 下，按 EmoteType 分组的 AkEvent 映射
---@class FParrotEmoteAkEventGroup
---@field EmoteMap ULuaMapHelper<EParrotEmoteType, FParrotEmoteAkEventArray>
FParrotEmoteAkEventGroup = {}


---@class ASTExtraParrotCharacter: ASTExtraFlyZombieCharacter
---@field bBorning boolean
---@field OwnerPlayerKey number
---@field EmoteMontageMap ULuaMapHelper<EParrotEmoteType, FParrotEmoteMontageConfig>
---@field EventAkEventMap ULuaMapHelper<EParrotEventType, FParrotEmoteAkEventGroup>
---@field OnParrotEmotePlayed FOnParrotEmotePlayed
---@field OnParrotEmoteStopped FOnParrotEmoteStopped
---@field CurrentPlayingEmoteType EParrotEmoteType
---@field CurrentPlayingEventType EParrotEventType
---@field CurrentEmoteParams FParrotEmoteParams
---@field BeHittedMinCheckRadius number
---@field BeHittedMaxCheckRadius number
---@field BeHittedCheckHeight number
---@field AroundEnemyMinCheckRadius number
---@field AroundEnemyCheckRadius number
---@field AroundEnemyCheckHeight number
---@field AimedCheckInterval number
---@field AimedCheckAngle number
---@field AroundEnemyCheckInterval number
---@field bCurrentTrackEnemyOutRange boolean
---@field CurrentDetectTeamEnemyCount number
---@field AttachedBlackboardKeyName string
---@field AttachmentTransform FTransform
---@field bShouldAttachToOwner boolean
---@field bAlreadyAttached boolean
---@field bAlreadyDetached boolean
---@field ParrotEffectConfigMap ULuaMapHelper<EParrotEffectType, FParrotEffectConfig>
local ASTExtraParrotCharacter = {}

function ASTExtraParrotCharacter:OnRep_Borning() end

function ASTExtraParrotCharacter:OnRep_OwnerPlayerKey() end

---@return number
function ASTExtraParrotCharacter:GetOwnerPlayerKey() end

---@param InPlayerKey number
function ASTExtraParrotCharacter:SetOwnerPlayerKey(InPlayerKey) end

function ASTExtraParrotCharacter:OnRep_OwnerPlayerState() end

---@param InPlayerState ASTExtraPlayerState
function ASTExtraParrotCharacter:SetOwnerPlayerState(InPlayerState) end

---@param EventType EParrotEventType
---@param OutEmoteType EParrotEmoteType
---@param OutEntry FParrotEmoteAkEventEntry
---@param OutIndex number
---@return boolean
function ASTExtraParrotCharacter:GetRandomEmoteAkEventByEvent(EventType, OutEmoteType, OutEntry, OutIndex) end

---@param EventType EParrotEventType
---@param EmoteType EParrotEmoteType
---@param OutEntry FParrotEmoteAkEventEntry
---@param OutIndex number
---@return boolean
function ASTExtraParrotCharacter:GetRandomEmoteAkEvent(EventType, EmoteType, OutEntry, OutIndex) end

---@param EventType EParrotEventType
---@param EmoteType EParrotEmoteType
---@param Index number
---@param OutEntry FParrotEmoteAkEventEntry
---@return boolean
function ASTExtraParrotCharacter:GetEmoteAkEventByIndex(EventType, EmoteType, Index, OutEntry) end

---@param EventType EParrotEventType
---@return number
function ASTExtraParrotCharacter:GetMaxEmoteAkEventDurationByEvent(EventType) end

---@param EmoteType EParrotEmoteType
---@param EventType EParrotEventType
---@param EmoteParams FParrotEmoteParams
function ASTExtraParrotCharacter:MulticastRPCPlayEmoteMontage(EmoteType, EventType, EmoteParams) end

---@param EffectType EParrotEffectType
---@param EmoteType EParrotEmoteType
---@param EventType EParrotEventType
---@param AkEventIndex number
function ASTExtraParrotCharacter:MulticastRPCPlayParrotEffect(EffectType, EmoteType, EventType, AkEventIndex) end

---@param EffectType EParrotEffectType
---@param EmoteType EParrotEmoteType
---@param EventType EParrotEventType
---@param AkEventIndex number
function ASTExtraParrotCharacter:ClientPlayParrotEffect(EffectType, EmoteType, EventType, AkEventIndex) end

---@param EffectType EParrotEffectType
---@param EmoteType EParrotEmoteType
---@param EventType EParrotEventType
---@param AkEventIndex number
function ASTExtraParrotCharacter:OnReceiveParrotEffect(EffectType, EmoteType, EventType, AkEventIndex) end

---@param EmoteType EParrotEmoteType
---@return string
function ASTExtraParrotCharacter:GetEmoteMontagePath(EmoteType) end

---@param EmoteType EParrotEmoteType
---@param EventType EParrotEventType
---@param EmoteParams FParrotEmoteParams
function ASTExtraParrotCharacter:ClientPlayEmoteMontage(EmoteType, EventType, EmoteParams) end

function ASTExtraParrotCharacter:ClientStopEmoteMontage() end

function ASTExtraParrotCharacter:OnRep_bCurrentTrackEnemyOutRange() end

---@param bOutRange boolean
function ASTExtraParrotCharacter:SetCurrentTrackEnemyOutRange(bOutRange) end

function ASTExtraParrotCharacter:OnRep_CurrentDetectTeamEnemyCount() end

---@param InCount number
function ASTExtraParrotCharacter:SetCurrentDetectTeamEnemyCount(InCount) end

---@param bSetup boolean
function ASTExtraParrotCharacter:BindOwnerPostAttachmentReplication(bSetup) end

---@param AttachParent AActor
---@param AttachParent_Direct AActor
---@param AttachComponent USceneComponent
---@param AttachSocket string
function ASTExtraParrotCharacter:OnOwnerPostAttachmentReplication(AttachParent, AttachParent_Direct, AttachComponent, AttachSocket) end

function ASTExtraParrotCharacter:AttachToOwner() end

function ASTExtraParrotCharacter:DetachFromOwner() end

function ASTExtraParrotCharacter:OnRep_ShouldAttachToOwner() end

function ASTExtraParrotCharacter:ClientUpdateAttachment() end

---@param bAttached boolean
function ASTExtraParrotCharacter:OnAttachmentInfoUpdated(bAttached) end

---@param EffectType EParrotEffectType
---@param OutConfig FParrotEffectConfig
---@return boolean
function ASTExtraParrotCharacter:GetEffectConfig(EffectType, OutConfig) end
