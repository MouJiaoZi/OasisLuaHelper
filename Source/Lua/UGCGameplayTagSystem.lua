---@meta

---GameplayTag接口库
---@class UGCGameplayTagSystem
UGCGameplayTagSystem = {}

---UGCGameplayTag
---@class UGCGameplayTag
local UGCGameplayTag = {}

---返回 UGCGamePlayTag 的字符串
---@return string
function UGCGameplayTag.__tostring() end

---检查当前这个 UGCGameplayTag 是否合法
---@return boolean
function UGCGameplayTag.IsValid() end

---根据字符串获取FGameplayTag
---生效范围：服务器&客户端
---@param TagString string @Tag的字符串
---@return FGameplayTag @是否为合法的Tag
function UGCGameplayTagSystem.RequestGameplayTag(TagString) end

---检查一个Tag是否合法
---生效范围：服务器&客户端
---@param Tag UGCGameplayTag|string|FGameplayTag @Tag
---@return boolean @是否为合法的Tag
function UGCGameplayTagSystem.IsValidTag(Tag) end

---检查一个Tag是否是UGCGameplayTag
---生效范围：服务器&客户端
---@param Tag UGCGameplayTag @UGCGameplayTag的lua对象
---@return boolean @是否为UGCGameplayTag
function UGCGameplayTagSystem.IsUGCGameplayTag(Tag) end

---检查TagA是否与TagB匹配
---生效范围：服务器&客户端
---@param TagA UGCGameplayTag|string|FGameplayTag @Tag
---@param TagB UGCGameplayTag|string|FGameplayTag @Tag
---@param bExactMatch boolean @是否精确匹配
---@return boolean @是否匹配
function UGCGameplayTagSystem.MatchesTag(TagA, TagB, bExactMatch) end

---检查TagA是否与TagB相等
---生效范围：服务器&客户端
---@param TagA UGCGameplayTag|string|FGameplayTag @Tag
---@param TagB UGCGameplayTag|string|FGameplayTag @Tag
---@return boolean @是否相等
function UGCGameplayTagSystem.EqualsTag(TagA, TagB) end

---创建一个空的FFGameplayTagContainer
---生效范围：服务器&客户端
---@return FGameplayTagContainer @空的FGameplayTagContainer
function UGCGameplayTagSystem.CreateGameplayTagContainer() end

---创建一个包含指定FGameplayTag的FGameplayTagContainer
---生效范围：服务器&客户端
---@param SingleTag UGCGameplayTag|string|FGameplayTag @传入FGameplayTagContainer中的FGameplayTag
---@return FGameplayTagContainer @包含传入FGameplayTag的GameplayTagContainer
function UGCGameplayTagSystem.CreateGameplayTagContainerFromTag(SingleTag) end

---创建一个包含一组FGameplayTag的FGameplayTagContainer
---生效范围：服务器&客户端
---@param GameplayTags FGameplayTag[] @传入FGameplayTagContainer中的FGameplayTags
---@return FGameplayTagContainer @包含传入FGameplayTags的GameplayTagContainer
function UGCGameplayTagSystem.CreateGameplayTagContainerFromArray(GameplayTags) end

---将单个FGameplayTag添加到传入的FGameplayTagContainer中
---生效范围：服务器&客户端
---@param TagContainer FGameplayTagContainer @要追加到的FGameplayTagContainer
---@param Tag FGameplayTag @要添加到FGameplayTagContainer中的FGameplayTag
function UGCGameplayTagSystem.AddGameplayTagToContainer(TagContainer, Tag) end

---从传入的FGameplayTagContainer中移除单个FGameplayTag，若找到并移除则返回 true ，否则返回 false
---生效范围：服务器&客户端
---@param TagContainer FGameplayTagContainer @要从中移除的FGameplayTagContainer
---@param Tag FGameplayTag @要从FGameplayTagContainer中移除的FGameplayTag
---@return boolean @是否成功移除
function UGCGameplayTagSystem.RemoveGameplayTagFromContainer(TagContainer, Tag) end

---检查FGameplayTagContainer是否包含特定的FGameplayTag
---生效范围：服务器&客户端
---@param TagContainer FGameplayTagContainer @要从中查找指定FGameplayTag的FGameplayTagContainer
---@param Tag FGameplayTag @要从FGameplayTagContainer中检查的FGameplayTag
---@param bExactMatch boolean @是否精确匹配
---@return boolean @是否包含Tag
function UGCGameplayTagSystem.HasTag(TagContainer, Tag, bExactMatch) end