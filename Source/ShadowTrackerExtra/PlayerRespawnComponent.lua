---@meta

---变身时缓存起来不走repickup的物品类型
---@class FTransPawnCacheItemTypes
---@field bCachedEquippedWeapon boolean
---@field bCachedUnequippedWeapon boolean
---@field bCachedClothing boolean
---@field bCachedEmote boolean
---@field bCachedDecal boolean
---@field bCachedConsumable boolean
---@field bCachedArmor boolean
---@field bCachedAmmo boolean
FTransPawnCacheItemTypes = {}


---@class FRespawnedDelegate : ULuaSingleDelegate
FRespawnedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRespawnedDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 boolean
function FRespawnedDelegate:Execute(Param1, Param2) end


---@class FRespawnRemainTimeDelegate : ULuaSingleDelegate
FRespawnRemainTimeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRespawnRemainTimeDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FRespawnRemainTimeDelegate:Execute(Param1) end


---@class FRespawnInvincibleRemainTimeDelegate : ULuaSingleDelegate
FRespawnInvincibleRemainTimeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRespawnInvincibleRemainTimeDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FRespawnInvincibleRemainTimeDelegate:Execute(Param1) end


---@class UPlayerRespawnComponent: UGameModeBaseComponent
---@field bIsEnableRespawnKeepItemsConfig_Record boolean
---@field bIsRespawnGenerateInitialItems_Record boolean
---@field DefaultPlayerRespawnTime number
---@field DefaultRespawnInvincibleTime number
---@field RespawnPointType ERespawnPointType
---@field bIsRespawnGenerateInitialItems boolean
---@field bIsRespawnKeepSuitSkinConfig boolean
---@field bIsEnableRespawnKeepItemsConfig boolean
---@field RespawnKeepItemsConfig FRespawnKeepItemsConfig
---@field bAlwaysAssociated boolean
---@field RespawnPlayerKeepItemDataMap ULuaMapHelper<number, FRespawnKeepAllItemData>
---@field RespawnPlayerCacheItemInfoUntilRecoverDataMap ULuaMapHelper<number, FRespawnKeepAllItemData> @变身时缓存起来的物品列表，不会重新repickup，知道恢复时才重新repickup
local UPlayerRespawnComponent = {}

---@param PlayerKey number
function UPlayerRespawnComponent:AddRespawnPlayer(PlayerKey) end

---@param PlayerKey number
---@param ResapwnTime number
function UPlayerRespawnComponent:AddRespawnPlayerWithTime(PlayerKey, ResapwnTime) end

---@param PlayerKey number
function UPlayerRespawnComponent:RemoveRespawnPlayer(PlayerKey) end

function UPlayerRespawnComponent:ClearAllPlayerRespawnTimer() end

function UPlayerRespawnComponent:RespawnAllPlayer() end

---@param PlayerKey number
function UPlayerRespawnComponent:RecordPlayerItemsInRespawnPlayer(PlayerKey) end

---@param ItemData FBattleItemData
---@param AllItems ULuaArrayHelper<FBattleItemData>
---@param OutRespawnData FRespawnKeepItemData
---@return boolean
function UPlayerRespawnComponent:RecordWeaponAndAttachmentCombine(ItemData, AllItems, OutRespawnData) end

---@param ItemData FBattleItemData
---@param AllItems ULuaArrayHelper<FBattleItemData>
---@param OutRespawnData FRespawnKeepItemData
---@return boolean
function UPlayerRespawnComponent:RecordArmorAndAttachmentCombine(ItemData, AllItems, OutRespawnData) end

---@param PlayerKey number
---@param bTryCacheItems boolean
---@param bTryRecoverItemsFromCached boolean
---@param bRecordWeaponCurBulletNumInClip boolean
---@param CleanRespawnAddiionData boolean
---@param ForceResetInitBulletNum boolean
---@param KeepInsatnce boolean
---@param KeepItemEquipStatus boolean
function UPlayerRespawnComponent:RecordPlayerRespawnKeepItems(PlayerKey, bTryCacheItems, bTryRecoverItemsFromCached, bRecordWeaponCurBulletNumInClip, CleanRespawnAddiionData, ForceResetInitBulletNum, KeepInsatnce, KeepItemEquipStatus) end

function UPlayerRespawnComponent:EnableRespawnKeepItemsConfig() end

function UPlayerRespawnComponent:ResetRespawnKeepItemsConfig() end

---设置变身时缓存起来的物品类型，在恢复是重新pickup
---@param PlayerKey number
---@param InParams FTransPawnCacheItemTypes
function UPlayerRespawnComponent:TransformPawnCachedItemsUntilRecover(PlayerKey, InParams) end

---@param Controller AController
function UPlayerRespawnComponent:GenerateRespawnInitialItems(Controller) end

---@param PlayerKey number
---@param RespawnKeepAllItemData FRespawnKeepAllItemData
---@param bUse boolean
function UPlayerRespawnComponent:GenerateRespawnKeepItems(PlayerKey, RespawnKeepAllItemData, bUse) end

---@param BaseCharacter ASTExtraBaseCharacter
function UPlayerRespawnComponent:UGCAddInvincibleBuff(BaseCharacter) end

---@param PlayerKey number
---@param RespawnTime number
function UPlayerRespawnComponent:AddRespawnTimer(PlayerKey, RespawnTime) end

---@param PlayerKey number
function UPlayerRespawnComponent:RespawnTimerCallBack(PlayerKey) end

---@param PlayerKey number
function UPlayerRespawnComponent:RespawnPlayer_Internal(PlayerKey) end

---@param PlayerKey number
function UPlayerRespawnComponent:InitPlayerRespawnItem(PlayerKey) end

---@param ItemDefineID FItemDefineID
---@return boolean
function UPlayerRespawnComponent:IsKeepItem(ItemDefineID) end

---@param BaseCharacter ASTExtraBaseCharacter
function UPlayerRespawnComponent:AddInvincibleBuff(BaseCharacter) end

---@param PlayerController APlayerController
function UPlayerRespawnComponent:OnPlayerLogout(PlayerController) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UPlayerRespawnComponent:OnPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param InPlayerRespawnTime number
---@param InRespawnInvincibleTime number
function UPlayerRespawnComponent:SetRespawnTime(InPlayerRespawnTime, InRespawnInvincibleTime) end
