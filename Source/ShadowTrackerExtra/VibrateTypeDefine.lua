---@meta

---@class EWeaponSpecialSoundType
---@field EWeaponSpecialSoundType_LoadBullet number
---@field EWeaponSpecialSoundType_ChangeMagazine number
---@field EWeaponSpecialSoundType_MagIn number
---@field EWeaponSpecialSoundType_MagOut number
---@field EWeaponSpecialSoundType_PullBolt number
---@field EWeaponSpecialSoundType_LocalShellDrop number
EWeaponSpecialSoundType = {}


---@class EVibrateTriggerMainItemType
---@field EVibrateTriggerMainItemType_None number
---@field EVibrateTriggerMainItemType_Weapon number
---@field EVibrateTriggerMainItemType_Vehicle number
---@field EVibrateTriggerMainItemType_Character number
---@field EVibrateTriggerMainItemType_ShowVoiceUI number
---@field EVibrateTriggerMainItemType_Custom number
EVibrateTriggerMainItemType = {}


---@class EVibrateTriggerSubItemType
---@field EVibrateTriggerSubItemType_None number
---@field EVibrateTriggerSubItemType_WeaponAttachment number
---@field EVibrateTriggerSubItemType_VehicleGear number
EVibrateTriggerSubItemType = {}


---@class EVibrateTriggerEventType
---@field EVibrateTriggerEventType_None number
---@field EVibrateTriggerEventType_EquipWeapon number
---@field EVibrateTriggerEventType_UnEquipWeapon number
---@field EVibrateTriggerEventType_EquipWeaponAttachment number
---@field EVibrateTriggerEventType_UnEquipWeaponAttachment number
---@field EVibrateTriggerEventType_FireShot number
---@field EVibrateTriggerEventType_ReloadStart number
---@field EVibrateTriggerEventType_LoadBulletOnReload number
---@field EVibrateTriggerEventType_ReloadEnd number
---@field EVibrateTriggerEventType_BoltStart number
---@field EVibrateTriggerEventType_PullBolt number
---@field EVibrateTriggerEventType_BoltEnd number
---@field EVibrateTriggerEventType_ChangeMagazine number
---@field EVibrateTriggerEventType_MagIn number
---@field EVibrateTriggerEventType_MagOut number
---@field EVibrateTriggerEventType_LocalShellDrop number
---@field EVibrateTriggerEventType_ChangeShootType number
---@field EVibrateTriggerEventType_ShootLastBullet number
---@field EVibrateTriggerEventType_NoneShoot number
---@field EVibrateTriggerEventType_PrepareThrowGrenade number
---@field EVibrateTriggerEventType_ReleaseThrowGrenade number
---@field EVibrateTriggerEventType_WeaponCustom number
---@field EVibrateTriggerEventType_VehicleGetOn number
---@field EVibrateTriggerEventType_VehicleGetOff number
---@field EVibrateTriggerEventType_VehicleBoostSpeed number
---@field EVibrateTriggerEventType_VehicleHitByBullet number
---@field EVibrateTriggerEventType_VehicleWheelsBroken number
---@field EVibrateTriggerEventType_VehicleHitObstacal number
---@field EVibrateTriggerEventType_VehicleChangeGear number
---@field EVibrateTriggerEventType_VehicleBreaking number
---@field EVibrateTriggerEventType_VehicleContactSpesificGround number
---@field EVibrateTriggerEventType_VehicleSlipping number
---@field EVibrateTriggerEventType_VehicleRaisePushSuspension number
---@field EVibrateTriggerEventType_HitByBullet number
---@field EVibrateTriggerEventType_FallDamage number
---@field EVibrateTriggerEventType_VehicleImpactDamage number
---@field EVibrateTriggerEventType_VehicleImpactDamageInVehicle number
---@field EVibrateTriggerEventType_ExplosionDamage number
---@field EVibrateTriggerEventType_BurningDamage number
---@field EVibrateTriggerEventType_LoseSignalHP number
---@field EVibrateTriggerEventType_FallOnGround number
---@field EVibrateTriggerEventType_Dead number
---@field EVibrateTriggerEventType_JumpFromPlane number
---@field EVibrateTriggerEventType_StartSprint number
---@field EVibrateTriggerEventType_Shoveling number
---@field EVibrateTriggerEventType_Climb number
---@field EVibrateTriggerEventType_StartSwim number
---@field EVibrateTriggerEventType_MeleeDamage number
---@field EVibrateTriggerEventType_ShowVoice_Move number
---@field EVibrateTriggerEventType_ShowVoice_Shoot number
---@field EVibrateTriggerEventType_ShowVoice_SilenceShoot number
---@field EVibrateTriggerEventType_ShowVoice_BreakGlass number
---@field EVibrateTriggerEventType_ShowVoice_Explosion number
---@field EVibrateTriggerEventType_ShowVoice_Vehicle number
---@field EVibrateTriggerEventType_TriggerByAssetID number
EVibrateTriggerEventType = {}


---@class EVibrateTriggerActionType
---@field EVibrateTriggerActionType_None number
---@field EVibrateTriggerActionType_Onece number
---@field EVibrateTriggerActionType_Start number
---@field EVibrateTriggerActionType_Stop number
EVibrateTriggerActionType = {}


---@class EVibrateStrengthLevel
---@field EVibrateStrengthLevel_None number
---@field EVibrateStrengthLevel_Low number
---@field EVibrateStrengthLevel_Mid number
---@field EVibrateStrengthLevel_High number
EVibrateStrengthLevel = {}


---@class FVibrateTriggerMainItem
---@field MainItemType EVibrateTriggerMainItemType
---@field Data string
FVibrateTriggerMainItem = {}


---@class FVibrateTriggerSubItem
---@field SubItemTyp EVibrateTriggerSubItemType
---@field Data string
FVibrateTriggerSubItem = {}


---@class FVibrateTriggerCondition
---@field bOnlyMatchMainItemType boolean
---@field TriggerMainItem FVibrateTriggerMainItem
---@field TriggerSubItemList ULuaArrayHelper<FVibrateTriggerSubItem>
---@field TriggerEventType EVibrateTriggerEventType
FVibrateTriggerCondition = {}


---@class FVibrateAssetItemConfig
---@field AssetID number
---@field TriggerCondition FVibrateTriggerCondition
---@field AssetPath string
---@field PlayKeyParam string
---@field AutoStopTime number
---@field PlayPriority number
---@field PlayDuration number
---@field AbsPath string
FVibrateAssetItemConfig = {}


---@class FVibrateTriggerAction
---@field VibrateAmplitude number
---@field TriggerMainItem FVibrateTriggerMainItem
---@field TriggerSubItemList ULuaArrayHelper<FVibrateTriggerSubItem>
---@field TriggerEventType EVibrateTriggerEventType
---@field TriggerActionType EVibrateTriggerActionType
FVibrateTriggerAction = {}


---@class FVibrateEntity
---@field AssetID number
---@field AssetAbsPath string
---@field PlayAmplitude number
---@field PlayKeyParam string
---@field PlayPriority number
---@field PlayDuration number
---@field InitPlayDuration number
---@field bIsLoop boolean
---@field bIsValid boolean
---@field PushTime number
---@field EventType EVibrateTriggerEventType
FVibrateEntity = {}


---@class FWeaponChangeStateVibrateData
---@field EventType EVibrateTriggerEventType
---@field ActionType EVibrateTriggerActionType
FWeaponChangeStateVibrateData = {}
