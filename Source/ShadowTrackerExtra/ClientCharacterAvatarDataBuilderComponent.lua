---@meta

---@class FOnAvatarDataLoaded : ULuaSingleDelegate
FOnAvatarDataLoaded = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarDataLoaded:Bind(Callback, Obj) end

---执行委托
function FOnAvatarDataLoaded:Execute() end


---@class UClientCharacterAvatarDataBuilderComponent: UActorComponent
---@field ClientAvatarSyncData ULuaArrayHelper<FMeshSynData>
---@field CharacterAvatarItemIDList ULuaArrayHelper<number>
---@field Gender EGender
---@field AvatarSyncData ULuaArrayHelper<FMeshSynData>
---@field OnAvatarDataLoaded FOnAvatarDataLoaded
---@field OnItemListLoaded FCreateBattleItemHandleAsyncListDelegate
---@field ItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
local UClientCharacterAvatarDataBuilderComponent = {}

---@param InAvatarComponent UCharacterAvatarComponent
function UClientCharacterAvatarDataBuilderComponent:Init(InAvatarComponent) end

function UClientCharacterAvatarDataBuilderComponent:RefreshConfigClientAvatarData() end

---@param CharacterAvatarItemIDList ULuaArrayHelper<number>
---@param bIsBeginLoad boolean
function UClientCharacterAvatarDataBuilderComponent:CreateItemHandleListData(CharacterAvatarItemIDList, bIsBeginLoad) end

---@param CurrentItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param CurrentAsyncLoadMeshReqID number
function UClientCharacterAvatarDataBuilderComponent:OnItemHandleListLoaded(CurrentItemHandleList, CurrentAsyncLoadMeshReqID) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UClientCharacterAvatarDataBuilderComponent:OnAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param CurrentItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param CurrentAsyncLoadMeshReqID number
function UClientCharacterAvatarDataBuilderComponent:ParseCharacterAvatarAdditionalItems(CurrentItemHandleList, CurrentAsyncLoadMeshReqID) end
