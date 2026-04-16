---@meta

---@class UModeAvatarFeature: UObject
---@field FeatureAssociatedItemList ULuaArrayHelper<number>
---@field FeatureAssociatedHandleCacheMap ULuaMapHelper<number, UBackpackAvatarHandle>
local UModeAvatarFeature = {}

---@param InFeatureNetMeta FModeAvatarFeatureNetMetaData
function UModeAvatarFeature:InitFeature(InFeatureNetMeta) end

---DS激活特性 客户端、DS的操作根据特性的不同，差异可能很大，必须分开实现和调用
---@param InTargetCAC UCharacterAvatarComponent
---@param InTargetHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeature:Server_TryActivateFeature(InTargetCAC, InTargetHandle) end

---DS撤销特性 客户端、DS的操作根据特性的不同，差异可能很大，必须分开实现和调用
---@param InTargetCAC UCharacterAvatarComponent
---@param InTargetHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeature:Server_TryRevertFeature(InTargetCAC, InTargetHandle) end

---客户端激活特性 客户端、DS的操作根据特性的不同，差异可能很大，必须分开实现和调用
---@return boolean
function UModeAvatarFeature:Client_TryActivateFeature() end

---客户端撤销特性 客户端、DS的操作根据特性的不同，差异可能很大，必须分开实现和调用
---@return boolean
function UModeAvatarFeature:Client_TryRevertFeature() end

---仅当穿脱对应的handle会开启/关闭特性 当特性开启后，穿脱其它的handle则会刷新一遍判断handle间特性是否有交叉处理
---@param InTargetHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeature:RefreshModeAvatar(InTargetHandle) end

---客户端对Handle异步加载列表进行个性化处理，在此处加入特性要用到的Handle
---@return boolean
function UModeAvatarFeature:Client_ActivateFeature_LoadingItemList() end

---客户端是否开启捏脸
---@return boolean
function UModeAvatarFeature:Client_ActivateFeature_EnableHighResFaceWithSkeletonInGame() end

---客户端对Handle异步加载列表进行个性化处理，在此处过滤特性要用忽略或屏蔽的Handle
---@return boolean
function UModeAvatarFeature:Client_ActivateFeature_LoadedHandleList() end

---客户端在Render资源加载完成，处理Render前的处理
---@return boolean
function UModeAvatarFeature:Client_ActivateFeature_PreAsyncRender() end

---客户端在Render资源加载完成，处理Render后的处理
---@return boolean
function UModeAvatarFeature:Client_ActivateFeature_PostAsyncRender() end

---客户端对Handle的查询进行特性相关的适配，确保特性相关的Handle不会被过滤掉
---@param AvatarHandle UBackpackAvatarHandle
---@param SyncData FMeshSynData
---@return boolean
function UModeAvatarFeature:Client_ActivateFeature_PreFiltHandles(AvatarHandle, SyncData) end

---客户端OnRep数据的处理，为了保持热更特性，OnRep处理必须调用此Event
function UModeAvatarFeature:OnRep_FeatureNetMetaData() end

---获得性别
---@return number
function UModeAvatarFeature:Client_ActivateFeature_GetGender() end

---获取当前的特性数据
---@return FModeAvatarFeatureNetMetaData
function UModeAvatarFeature:FetchFeatureNetMetaData() end

---@return string
function UModeAvatarFeature:GetOwnerPlayerName() end

---@return boolean
function UModeAvatarFeature:IsDisplayModeAvatarFeatureMesh() end

---@param InFeatureHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeature:BanFeatureHandleByHandle(InFeatureHandle) end

---@param InFeatureItemID number
---@return boolean
function UModeAvatarFeature:BanFeatureHandleByID(InFeatureItemID) end

---@return boolean
function UModeAvatarFeature:IsEnableModeVatarFeature() end
