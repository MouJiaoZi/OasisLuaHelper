---@meta

---@class ULobbyModelPetItemShowEntity: ULobbyModelCommonItemShowEntity
---@field AsyncLoadIndex number
local ULobbyModelPetItemShowEntity = {}

---@param animPath string
---@param animType number
function ULobbyModelPetItemShowEntity:PlayItemMontage(animPath, animType) end

---@param animPath string
---@param animType number
---@return number
function ULobbyModelPetItemShowEntity:PlayItemAnim(animPath, animType) end

function ULobbyModelPetItemShowEntity:StopPlayItemAnim() end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelPetItemShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param Index number
---@param InPath FSoftObjectPath
---@param animType number
function ULobbyModelPetItemShowEntity:AsyncLoadResCallBack(Index, InPath, animType) end

---@param InPath FSoftObjectPath
---@param animType number
function ULobbyModelPetItemShowEntity:AfterLoadPlayItemAnim(InPath, animType) end
