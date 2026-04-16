---@meta

---@class UAIMonsterDropWrapperComponent: UActorComponent
---@field bDropUseCommonProduce boolean
---@field bAddPlayerWeaponAndBackpackToCommonProduceTombBox boolean
---@field bCommonProduceDropDeadBoxUsePlayerName boolean
---@field IsBountyBlueprintName string
---@field bChooseDropCompByTag boolean
---@field bUseCustomExDrop boolean
---@field bIsBounty boolean
local UAIMonsterDropWrapperComponent = {}

---@param MonsterChar ASTExtraCharacter
function UAIMonsterDropWrapperComponent:MonsterSelectedAsBounty(MonsterChar) end

---@param MonsterChar ASTExtraCharacter
---@param Killer AController
---@param bOverlapPhysicsVolumes boolean
---@param bImmediatelyDrop boolean
function UAIMonsterDropWrapperComponent:MonsterStartDrop(MonsterChar, Killer, bOverlapPhysicsVolumes, bImmediatelyDrop) end

---@param ExProduceID number
---@param Reason string
function UAIMonsterDropWrapperComponent:AddExtraDropProduceID(ExProduceID, Reason) end

---@param ExProduceID number
---@param Reason string
function UAIMonsterDropWrapperComponent:RemoveExtraDropProduceID(ExProduceID, Reason) end

---@param NewDropUseCommonProduce boolean
---@param NewAddPlayerWeaponAndBackpackToCommonProduceTombBox boolean
---@param NewCommonProduceDropDeadBoxUsePlayerName boolean
function UAIMonsterDropWrapperComponent:UpdateConfig(NewDropUseCommonProduce, NewAddPlayerWeaponAndBackpackToCommonProduceTombBox, NewCommonProduceDropDeadBoxUsePlayerName) end
