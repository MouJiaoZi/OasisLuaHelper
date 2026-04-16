---@meta

---@class FFunctionParam_ConsumeHandleItem
---@field ItemID number
---@field Type number
---@field Count number
---@field IsGrenade boolean
---@field IsNeedNotifyLobbyServer boolean
---@field bUseDirectly boolean
FFunctionParam_ConsumeHandleItem = {}


---@class FFunctionParam_ForbidWeapon
---@field PlayerKey number
---@field LockKey2Slot ULuaMapHelper<string, ESurviveWeaponPropSlot>
FFunctionParam_ForbidWeapon = {}


---@class FFunctionParam_ForbidWeaponList
---@field ForbidWeaponList ULuaArrayHelper<FFunctionParam_ForbidWeapon>
FFunctionParam_ForbidWeaponList = {}


---封装一些角色的静态操作方法
---@class UUAEClosure_PlayerStaticFunction: UBlueprintFunctionLibrary
local UUAEClosure_PlayerStaticFunction = {}

---@param Character ASTExtraBaseCharacter
---@param AttachScene USceneComponent
---@param DetachScenes ULuaArrayHelper<USceneComponent>
---@param SocketName string
---@param bMulticastToClient boolean
---@param bSetMovementMode boolean
---@param SpareOffsetZ number
function UUAEClosure_PlayerStaticFunction:AttachCharacterTo(Character, AttachScene, DetachScenes, SocketName, bMulticastToClient, bSetMovementMode, SpareOffsetZ) end

---@param Character ASTExtraBaseCharacter
---@param ExpectScenes ULuaArrayHelper<USceneComponent>
---@param bSetMovementMode boolean
---@param bRecoverMovement boolean
---@param SpareOffsetZ number
---@param OldSencen USceneComponent
---@param Iterations number
function UUAEClosure_PlayerStaticFunction:RecoverCharacter(Character, ExpectScenes, bSetMovementMode, bRecoverMovement, SpareOffsetZ, OldSencen, Iterations) end

---@param Character ASTExtraBaseCharacter
---@param IgnoreState ULuaArrayHelper<EPawnState>
---@param UnPossessReason EUnPossessReason
function UUAEClosure_PlayerStaticFunction:ClearCharacterToNormal(Character, IgnoreState, UnPossessReason) end

---@param Character ASTExtraBaseCharacter
---@param WeatherIndex number
---@param WeatherActor AActor
function UUAEClosure_PlayerStaticFunction:SwitchWeatherDS(Character, WeatherIndex, WeatherActor) end

---@param Character ASTExtraBaseCharacter
---@param IDTag string
---@param index number
---@param LogicTag string
function UUAEClosure_PlayerStaticFunction:SwitchWeatherDSByTrigger(Character, IDTag, index, LogicTag) end

---@param WorldContextObject UObject
---@param bEnable boolean
---@param WeatherActor AActor
function UUAEClosure_PlayerStaticFunction:SwitchWeatherClient(WorldContextObject, bEnable, WeatherActor) end

---@param Character ASTExtraBaseCharacter
---@param bEnable boolean
---@param bSetMovementMode boolean
---@param bSetDetach boolean
---@param bSetReplicateMovement boolean
function UUAEClosure_PlayerStaticFunction:SetCharacterMovementEnable(Character, bEnable, bSetMovementMode, bSetDetach, bSetReplicateMovement) end

---@param WorldContextObject UObject
---@param bShowTitle boolean
---@param includeUI boolean
function UUAEClosure_PlayerStaticFunction:ShowCommomShareUI(WorldContextObject, bShowTitle, includeUI) end

---@param JumpCharacter ASTExtraBaseCharacter
---@param CheckPawnState ULuaArrayHelper<EPawnState>
---@param CanOpenParachuteHeight number
---@param ForceOpenParachuteHeight number
---@param CloseParachuteHeight number
---@param bEnterParachuteOpenDirectly boolean
---@param bReInitParachuteItem boolean
function UUAEClosure_PlayerStaticFunction:OpenParachuteInPlace(JumpCharacter, CheckPawnState, CanOpenParachuteHeight, ForceOpenParachuteHeight, CloseParachuteHeight, bEnterParachuteOpenDirectly, bReInitParachuteItem) end

---@param JumpCharacter ASTExtraPlayerCharacter
---@param CheckPawnState ULuaArrayHelper<EPawnState>
---@param CanOpenParachuteHeight number
---@param ForceOpenParachuteHeight number
---@param CloseParachuteHeight number
function UUAEClosure_PlayerStaticFunction:OpenParachuteInPlace_BigWorld(JumpCharacter, CheckPawnState, CanOpenParachuteHeight, ForceOpenParachuteHeight, CloseParachuteHeight) end

---@param InBase AActor
---@param Characters ULuaArrayHelper<ASTExtraBaseCharacter>
---@param location FVector
---@param rotation FRotator
---@param setLoc boolean
---@param setRot boolean
function UUAEClosure_PlayerStaticFunction:SetBaseAndCharacterPos(InBase, Characters, location, rotation, setLoc, setRot) end

---@param Character ASTExtraBaseCharacter
---@param bSetUp boolean
---@param propSlot ESurviveWeaponPropSlot
---@param bBlackList boolean
function UUAEClosure_PlayerStaticFunction:SetCharacterWeaponVisibility(Character, bSetUp, propSlot, bBlackList) end

---@param PC ASTExtraPlayerController
---@param WeatherSequence UWeatherSequence
---@param BlendParameters FBlendWeatherParameters
function UUAEClosure_PlayerStaticFunction:LoadWeatherSequence(PC, WeatherSequence, BlendParameters) end

---@param PC ASTExtraPlayerController
---@param WeatherSequence UWeatherSequence
function UUAEClosure_PlayerStaticFunction:UnloadWeatherSequence(PC, WeatherSequence) end

---新天气控件，设置天气序列播放进度，DS或客户端调用，客户端调用会覆盖DS当前进度
---@param PC ASTExtraPlayerController
---@param WeatherSequence UWeatherSequence
---@param Time number
---@param bReplicate boolean
function UUAEClosure_PlayerStaticFunction:SeekWeatherSequence(PC, WeatherSequence, Time, bReplicate) end

---@param PC ASTExtraPlayerController
---@param WeatherSequence UWeatherSequence
function UUAEClosure_PlayerStaticFunction:PauseWeatherSequence(PC, WeatherSequence) end

---@param PC ASTExtraPlayerController
---@param WeatherSequence UWeatherSequence
function UUAEClosure_PlayerStaticFunction:ResumeWeatherSequence(PC, WeatherSequence) end

---@param PC ASTExtraPlayerController
---@return EWeatherSequenceType
function UUAEClosure_PlayerStaticFunction:GetCurrentWeatherSequenceType(PC) end

---@param PC ASTExtraPlayerController
---@return number
function UUAEClosure_PlayerStaticFunction:GetCurrentWeatherPlayPercentage(PC) end

---@param PC ASTExtraPlayerController
---@return number
function UUAEClosure_PlayerStaticFunction:GetCurrentWeatherTime(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function UUAEClosure_PlayerStaticFunction:IsDayOrNight(PC) end

---@param PC ASTExtraPlayerController
---@param WeatherSequence UWeatherSequence
---@param Factor number
---@return boolean
function UUAEClosure_PlayerStaticFunction:ChangeWeatherSequenceMultiFactor(PC, WeatherSequence, Factor) end

---@param Character ASTExtraBaseCharacter
---@param IsFpp boolean
---@param setup boolean
---@param CanTouch boolean
function UUAEClosure_PlayerStaticFunction:LevelSequenceChangePerspective(Character, IsFpp, setup, CanTouch) end

---@param bSetup boolean
---@param ShowUIName string
---@param OwningActor UObject
---@param WorldContenxt UObject
function UUAEClosure_PlayerStaticFunction:SetupActivityUIInfoOnClient(bSetup, ShowUIName, OwningActor, WorldContenxt) end

---@param bSetup boolean
---@param PC ASTExtraPlayerController
---@param Target AActor
---@param BlendTime number
function UUAEClosure_PlayerStaticFunction:SetupViewTargetOnClient(bSetup, PC, Target, BlendTime) end

---@param Character ASTExtraBaseCharacter
---@param param FFunctionParam_ConsumeHandleItem
function UUAEClosure_PlayerStaticFunction:ConsumeHandleItem(Character, param) end

---@param Character ASTExtraBaseCharacter
---@param ActorHiddenMask EActorHiddenMask
---@param bIsHidden boolean
function UUAEClosure_PlayerStaticFunction:HidePawn(Character, ActorHiddenMask, bIsHidden) end

---@param Character ASTExtraBaseCharacter
---@param LockKey string
---@param HideWeaponSlot ESurviveWeaponPropSlot
---@param bForbid boolean
function UUAEClosure_PlayerStaticFunction:ForbidWeapon(Character, LockKey, HideWeaponSlot, bForbid) end

---@param Character ASTExtraBaseCharacter
---@param LockKey string
---@param HideWeaponSlot ESurviveWeaponPropSlot
---@param bForbid boolean
---@param WhiteWeaponIDList ULuaArrayHelper<number>
function UUAEClosure_PlayerStaticFunction:ForbidWeaponWithWhiteWeaponIDList(Character, LockKey, HideWeaponSlot, bForbid, WhiteWeaponIDList) end

---@param SkComp USkeletalMeshComponent
---@param time number
---@param NewAnim UAnimationAsset
function UUAEClosure_PlayerStaticFunction:PlayAnimByClearCache(SkComp, time, NewAnim) end

---@param Player ASTExtraBaseCharacter
---@param SubSystem UAvatarSubSystem_CharacterOutlineAndColoring
function UUAEClosure_PlayerStaticFunction:ActiveCharacterOutlineAndColoringAvataSubSystem(Player, SubSystem) end

---@param Player ASTExtraBaseCharacter
---@param SubSystem UAvatarSubSystem_CharacterOutlineAndColoring
function UUAEClosure_PlayerStaticFunction:DeActiveCharacterOutlineAndColoringAvataSubSystem(Player, SubSystem) end

---@param Player ASTExtraBaseCharacter
---@param SubSystem UAvatarSubSystem_CharacterOutlineAndColoring
function UUAEClosure_PlayerStaticFunction:DestoryCharacterOutlineAndColoringAvataSubSystem(Player, SubSystem) end

---@param Player ASTExtraBaseCharacter
---@param bOpen boolean
function UUAEClosure_PlayerStaticFunction:SetCharacterDisableWriteDepthForOcclusionHighLight(Player, bOpen) end
