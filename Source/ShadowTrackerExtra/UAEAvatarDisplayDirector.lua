---@meta

---@class FOnScreenCoordCalculated : ULuaSingleDelegate
FOnScreenCoordCalculated = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnScreenCoordCalculated:Bind(Callback, Obj) end

---执行委托
function FOnScreenCoordCalculated:Execute() end


---@class AUAEAvatarDisplayDirector: AActor
---@field poseNum number
---@field avatarPoseList ULuaArrayHelper<UAvatarDisplayPoseComponent>
---@field ScreenPos ULuaArrayHelper<FVector2D>
---@field Limit FVector4
---@field OnCoordCalculated FOnScreenCoordCalculated
---@field bAsyncEquipWeapon boolean
---@field OnWeaponItemListLoaded FCreateBattleItemHandleAsyncListDelegate
local AUAEAvatarDisplayDirector = {}

function AUAEAvatarDisplayDirector:SpawnAvatar() end

---@param MaxTeammateNum number
---@param MaxTeamNum number
function AUAEAvatarDisplayDirector:SetCeremonyDirector(MaxTeammateNum, MaxTeamNum) end

function AUAEAvatarDisplayDirector:SpawnCeremonyDirector() end

function AUAEAvatarDisplayDirector:UnloadWeatherLevel() end

---@param pos number
---@param CharComp UCharacterAvatarComponent
function AUAEAvatarDisplayDirector:CalcCharacterScreenPos(pos, CharComp) end

function AUAEAvatarDisplayDirector:SendScreenPosEvent() end

function AUAEAvatarDisplayDirector:AsyncEquipWeapon() end

---@param InWeaponItemList ULuaArrayHelper<number>
function AUAEAvatarDisplayDirector:AsyncPrepareWeaponItem(InWeaponItemList) end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function AUAEAvatarDisplayDirector:OnWeaponItemHandleListLoaded(ItemHandles, AsyncLoadID) end

function AUAEAvatarDisplayDirector:BP_OnWeaponItemHandleListLoaded() end

---@return string
function AUAEAvatarDisplayDirector:GetWeatherLevelName() end
