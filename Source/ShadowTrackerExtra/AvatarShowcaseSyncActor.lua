---@meta

---@class FShowcasePawnInfo
---@field bVisible boolean
---@field bLoadCharacterFinish boolean
---@field bLoadWeaponFinish boolean
---@field ShowcaseCharacterCom UCharacterAvatarComponent
---@field ShowcaseWeaponCom UWeaponAvatarComponent
---@field ShowingWeaponAvatarID number
FShowcasePawnInfo = {}


---@class FShowcaseConfig
---@field AvatarShowcaseActor AActor
---@field AvatarShowcaseActor_WorldLocation FVector
---@field AvatarShowcaseActor_WorldRotator FRotator
FShowcaseConfig = {}


---@class FShowcaseQualityMemoryConfig
---@field MemorySize_GB number
---@field RenterTextureSize FVector2D
FShowcaseQualityMemoryConfig = {}


---@class FShowcaseQualityConfig
---@field AvatarQuality EDisplayQuality
---@field MemoryAndTextureSize ULuaArrayHelper<FShowcaseQualityMemoryConfig>
FShowcaseQualityConfig = {}


---@class FShowcaseQuality
---@field AvatarQuality EDisplayQuality
---@field RenterTextureSize FVector2D
FShowcaseQuality = {}


---@class FShowcasePlayerStateInfo
---@field PlayerName string
---@field PlayerID number
FShowcasePlayerStateInfo = {}


---@class AAvatarShowcaseSyncActor: AActor
---@field CopySlots ULuaArrayHelper<EAvatarSlotType>
---@field QualitySetting ULuaMapHelper<ERenderQuality, FShowcaseQualityConfig>
---@field TargetPlayerStateInfos ULuaArrayHelper<FShowcasePlayerStateInfo>
---@field ShowcasePawnInfos ULuaArrayHelper<FShowcasePawnInfo>
---@field ShowcaseCharacterAvatarTemplate AAvatarShowcaseCharacter
---@field ShowcaseWeaponAvatarTemplate ASTExtraShootWeapon
---@field ShowcaseWeaponSocket string
---@field DontCopyAvatarID ULuaArrayHelper<number>
---@field ShowcasePoseNum number
---@field bShowCloth boolean
---@field bShowWeapon boolean
---@field LoadFinishDelay number
---@field RefreshAvatarInterval number
---@field CongratulationTip number
---@field ShowcaseConfigs ULuaArrayHelper<FShowcaseConfig>
---@field LastChangeMemberCountTime number
local AAvatarShowcaseSyncActor = {}

function AAvatarShowcaseSyncActor:OnRep_ShowcasePawnInfos() end

function AAvatarShowcaseSyncActor:OnRep_TargetPlayerStateInfo() end

---@param ChangeEventFrom UAvatarComponent
function AAvatarShowcaseSyncActor:OnCharacterAvatarMeshChanged(ChangeEventFrom) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function AAvatarShowcaseSyncActor:OnCharacterAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@param ChangeEventFrom UAvatarComponent
function AAvatarShowcaseSyncActor:OnWeaponAvatarMeshChanged(ChangeEventFrom) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function AAvatarShowcaseSyncActor:OnWeaponAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@return boolean
function AAvatarShowcaseSyncActor:IsResLoading() end

---@return boolean
function AAvatarShowcaseSyncActor:IsAllAvatarLoaded() end

---@param count number
function AAvatarShowcaseSyncActor:SetMemberCount_DS(count) end

---@return number
function AAvatarShowcaseSyncActor:GetLastMemberDuringTime() end

---@param num number
function AAvatarShowcaseSyncActor:PreSpawnActor(num) end

function AAvatarShowcaseSyncActor:UpdateWeaponSocket() end

function AAvatarShowcaseSyncActor:RefreshFinishDelay() end

---@param InputTargetPlayerState ULuaArrayHelper<ASTExtraPlayerState>
function AAvatarShowcaseSyncActor:SetTargetPlayerStates(InputTargetPlayerState) end

---@param CharAvatarCom UCharacterAvatarComponent
---@param PoseIndex number
function AAvatarShowcaseSyncActor:SetAvatarToPose_DS(CharAvatarCom, PoseIndex) end

---@param avatarItemHandle UBackpackAvatarHandle
---@param PoseIndex number
function AAvatarShowcaseSyncActor:SetAvatarHandleToPose_DS(avatarItemHandle, PoseIndex) end

function AAvatarShowcaseSyncActor:InitAllAvatarMaster() end

---@param PoseIndex number
function AAvatarShowcaseSyncActor:ResetAllAvatarToEnterBattle(PoseIndex) end

---@param PoseIndex number
---@param slotID EAvatarSlotType
function AAvatarShowcaseSyncActor:ResetAvatarToEnterBattle(PoseIndex, slotID) end

function AAvatarShowcaseSyncActor:RefreshSyncAvatarInfo() end

function AAvatarShowcaseSyncActor:CleanSyncAvatarInfo() end

---@param WeaponAvatarID number
---@param PoseIndex number
---@param weaponSocketSlot string
---@param ShowcaseLevelIndex number
function AAvatarShowcaseSyncActor:SetWeaponToPoseByID(WeaponAvatarID, PoseIndex, weaponSocketSlot, ShowcaseLevelIndex) end

---@param VehicleAvatarID number
---@param PoseIndex number
function AAvatarShowcaseSyncActor:SetVehicleToPoseByID(VehicleAvatarID, PoseIndex) end


---@class UAvatarShowcaseSyncActorSingleton: UObject
local UAvatarShowcaseSyncActorSingleton = {}

---@param ownerWorld UWorld
---@param Template AAvatarShowcaseSyncActor
function UAvatarShowcaseSyncActorSingleton:CreateInstance(ownerWorld, Template) end

---@param ownerWorld UWorld
function UAvatarShowcaseSyncActorSingleton:ReleaseInstance(ownerWorld) end
