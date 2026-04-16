---@meta

---震动系统
---@class UDynamicVibrateSystemManager: UObject
---@field ClassPath string
---@field VibrateAssetTablePath string
---@field MaxAmplitude number
---@field GroundSpesificMatVibrationMinGrear number
---@field VehicleBreakingMinSpeedThreshold number
---@field VehicleGearMinSpeedThreshold number
---@field VehicleSlipMinSpeedThreshold number
---@field TriggerVehicleVibrateGroundPhysicMatList ULuaArrayHelper<number>
---@field TriggerVehicleVibrateMinSlip number
---@field TriggerVehicleVibrateMinSuspensionRaisePercent number
---@field VehicleRaiseSuspensionVibrateInerval number
---@field InitAssetProccessNumFrames number
---@field StopVibrateMinTime number
---@field LoadedVibrateAssetIDAndEventTypeMap ULuaMapHelper<number, EVibrateTriggerEventType>
---@field VibrateStrengthLevelModifireMap ULuaMapHelper<EVibrateStrengthLevel, number>
---@field VibrateEventMinIntervalMap ULuaMapHelper<EVibrateTriggerEventType, number>
---@field CharacterVibrateEventList ULuaArrayHelper<EVibrateTriggerEventType>
---@field WeaponVibrateEventList ULuaArrayHelper<EVibrateTriggerEventType>
---@field VehicleVibrateEventList ULuaArrayHelper<EVibrateTriggerEventType>
---@field SoundUIVibrateEventList ULuaArrayHelper<EVibrateTriggerEventType>
---@field CharacterBeHitVibrateEventList ULuaArrayHelper<EVibrateTriggerEventType>
---@field VehicleEngineVibrateEventList ULuaArrayHelper<EVibrateTriggerEventType>
---@field VehicleBeHitVibrateEventList ULuaArrayHelper<EVibrateTriggerEventType>
---@field CharacterVibrationLevel number
---@field WeaponVibrationLevel number
---@field VehicleVibrationLevel number
---@field SoundUIVibrationLevel number
---@field EntireVibrationLevel number
---@field bCharacterVibrate boolean
---@field bWeaponVibrate boolean
---@field bVehicleVibrate boolean
---@field bSoundUIVibrate boolean
---@field bCharacterBeHitVibrate boolean
---@field bCharacterClimbVibrate boolean
---@field bCharacterFallVibrate boolean
---@field bCharacterSwimVibrate boolean
---@field bAutoWeaponVibrate boolean
---@field bSemiAutoWeaponVibrate boolean
---@field bBoltWeaponVibrate boolean
---@field bOtherWeaponVibrate boolean
---@field bVehicleEngineVibrate boolean
---@field bVehicleBeHitVibrate boolean
---@field bVehicleCrashVibrate boolean
---@field bFootstepSoundUIVibrate boolean
---@field bFireShotSoundUIVibrate boolean
---@field bGlassBrokenSoundUIVibrate boolean
---@field bVehicleSoundUIVibrate boolean
---@field StopVibrateHandle FTimerHandle
---@field CurPlayingVibrateAssetIndex number
---@field CurLoopPlayingVibrateAssetIndex number
---@field DeviceSupportVibrateType number
---@field bHasEndplay boolean
---@field bIsHandBreaking boolean
---@field WeaponChangeStateEventDataList ULuaArrayHelper<FWeaponChangeStateVibrateData>
---@field bHasLastVehicle boolean
---@field LastVehicleGear number
---@field bIsLastVehicleBreaking boolean
---@field bIsLastVehicleSlipping boolean
---@field LastVehicleGroundContactMaterialSurfaceType number
---@field LastVehicleGearVibrateCache ULuaMapHelper<number, boolean>
---@field LastVibrateEventTimeMap ULuaMapHelper<EVibrateTriggerEventType, number>
---@field CurVehicleRaiseSuspensionVibrateCD number
---@field CacheVibrateEntityList ULuaArrayHelper<FVibrateEntity>
local UDynamicVibrateSystemManager = {}

---@param Action FVibrateTriggerAction
---@param bCheckGate boolean
---@param bCheckInterval boolean
---@param SpesifyID number
function UDynamicVibrateSystemManager:PostVibrateTriggerAction(Action, bCheckGate, bCheckInterval, SpesifyID) end

---@param SpesifyID number
---@param Amplitude number
function UDynamicVibrateSystemManager:PostVibrateTriggerActionDirectly(SpesifyID, Amplitude) end

---@param EventType EVibrateTriggerEventType
function UDynamicVibrateSystemManager:InvalidateVibrateEntityByEventType(EventType) end

---@param Entity FVibrateEntity
function UDynamicVibrateSystemManager:PlayVibrateEntity(Entity) end

function UDynamicVibrateSystemManager:StopVibrate() end

---@param Val number
function UDynamicVibrateSystemManager:ModifyEntireVibrationLevel(Val) end

---@param inCharacterVibrationLevel number
---@param inWeaponVibrationLevel number
---@param inVehicleVibrationLevel number
---@param inSoundUIVibrationLevel number
---@param binCharacterBeHitVibrate boolean
---@param binCharacterClimbVibrate boolean
---@param binCharacterFallVibrate boolean
---@param binCharacterSwimVibrate boolean
---@param binVehicleEngineVibrate boolean
---@param binVehicleBeHitVibrate boolean
---@param binVehicleCrashVibrate boolean
---@param binFootstepSoundUIVibrate boolean
---@param binFireShotSoundUIVibrate boolean
---@param binGlassBrokenSoundUIVibrate boolean
---@param binVehicleSoundUIVibrate boolean
---@param inEntireVibrationLevel number
---@param binAutoWeaponVibrate boolean
---@param binSemiAutoWeaponVibrate boolean
---@param binBoltWeaponVibrate boolean
---@param binOtherWeaponVibrate boolean
function UDynamicVibrateSystemManager:LoadUserSettingData(inCharacterVibrationLevel, inWeaponVibrationLevel, inVehicleVibrationLevel, inSoundUIVibrationLevel, binCharacterBeHitVibrate, binCharacterClimbVibrate, binCharacterFallVibrate, binCharacterSwimVibrate, binVehicleEngineVibrate, binVehicleBeHitVibrate, binVehicleCrashVibrate, binFootstepSoundUIVibrate, binFireShotSoundUIVibrate, binGlassBrokenSoundUIVibrate, binVehicleSoundUIVibrate, inEntireVibrationLevel, binAutoWeaponVibrate, binSemiAutoWeaponVibrate, binBoltWeaponVibrate, binOtherWeaponVibrate) end

---@param Val number
function UDynamicVibrateSystemManager:ModifyVehicleVibrationLevel(Val) end

---@param Val boolean
function UDynamicVibrateSystemManager:ModifyVehicleEngineVibrationSetting(Val) end

---@param Mgr UDynamicVibrateSystemManager
function UDynamicVibrateSystemManager:CheckAndCopyFilesToSavedDir(Mgr) end

function UDynamicVibrateSystemManager:InitSystem() end

function UDynamicVibrateSystemManager:InitUserSetting() end

---@param DeltaSeconds number
function UDynamicVibrateSystemManager:UpdateVibrateEntityList(DeltaSeconds) end

function UDynamicVibrateSystemManager:ClearAllVibration() end

function UDynamicVibrateSystemManager:HandleApplicationWillDeactivate() end

function UDynamicVibrateSystemManager:BPHandleApplicationWillDeactivate() end

function UDynamicVibrateSystemManager:HandleApplicationWillEnterBackground() end

function UDynamicVibrateSystemManager:BPHandleApplicationWillEnterBackground() end

function UDynamicVibrateSystemManager:HandleApplicationHasReactivated() end

function UDynamicVibrateSystemManager:BPHandleApplicationHasReactivated() end

function UDynamicVibrateSystemManager:HandleApplicationHasEnteredForeground() end

function UDynamicVibrateSystemManager:BPHandleApplicationHasEnteredForeground() end

function UDynamicVibrateSystemManager:HandleApplicationWillTerminate() end

function UDynamicVibrateSystemManager:BPHandleApplicationWillTerminate() end
