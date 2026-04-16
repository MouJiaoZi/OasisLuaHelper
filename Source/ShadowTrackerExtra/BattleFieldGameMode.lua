---@meta

---@class EBattleFieldCamp
---@field None number
---@field Attacker number
---@field Defender number
EBattleFieldCamp = {}


---@class EBattleFieldModeType
---@field Breakthrough number
---@field Conquest number
---@field AllModeTypes number
EBattleFieldModeType = {}


---@class FOnHardPointStageChange : ULuaSingleDelegate
FOnHardPointStageChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHardPointStageChange:Bind(Callback, Obj) end

---执行委托
function FOnHardPointStageChange:Execute() end


---@class ABattleFieldGameMode: ABattleRoyaleGameModeTeam, IGamemodeActorManagerInterface
---@field CheckSideLength number
---@field CheckLength number
---@field MaxCheckTimes number
---@field RevivalMarkMaxCheckTimes number
---@field RevivalMarkCheckWidth number
---@field RevivalMarkCheckLength number
---@field RevivalMarkDeployHeight number
---@field ComboInterval number
---@field AssistInterval number
---@field OnHardPointStageChangeDelegate FOnHardPointStageChange
---@field OnAreaBattleEndDelegate FOnHardPointStageChange
---@field DataTransmissionHelperClass UDataTransmissionHelper
---@field AllBuildingActorList ULuaArrayHelper<AActor>
local ABattleFieldGameMode = {}

---@param NewPlayer APlayerController
function ABattleFieldGameMode:ReceivePostLogin(NewPlayer) end

---@param Exiting AController
function ABattleFieldGameMode:ReceiveLogout(Exiting) end

---@return boolean
function ABattleFieldGameMode:CheckNoHumanExist() end

---@param TeammateCharacter ASTExtraBaseCharacter
---@param NewPlayer AController
function ABattleFieldGameMode:SetPlayerLocationNearToTeammate(TeammateCharacter, NewPlayer) end

---@param BoxActor AActor
---@param BoxSize FVector
---@param NewPlayer AController
function ABattleFieldGameMode:SetPlayerLocationNearToBoxActor(BoxActor, BoxSize, NewPlayer) end

---@param WeaponAvatarComponent UWeaponAvatarComponent
---@param OrigniSkin UBattleItemHandleBase
---@param AvatarSkin UBattleItemHandleBase
function ABattleFieldGameMode:HandleWeaponOrAttachmentOriginSkin(WeaponAvatarComponent, OrigniSkin, AvatarSkin) end

---@param WeaponAvatarComponent UWeaponAvatarComponent
---@param InWeaponHandle UBattleItemHandleBase
function ABattleFieldGameMode:HandleWeaponAdditionalData(WeaponAvatarComponent, InWeaponHandle) end

---@param InTargetCharacter ASTExtraBaseCharacter
---@return boolean
function ABattleFieldGameMode:CanAddAdditionalEffect(InTargetCharacter) end
