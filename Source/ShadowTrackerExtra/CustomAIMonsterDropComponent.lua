---@meta

---@class UCustomAIMonsterDropComponent: UActorComponent
---@field OverrideTombBoxTemplate APlayerTombBox
---@field BoxType EPickUpBoxType
local UCustomAIMonsterDropComponent = {}

---@param CommonProduceDropItemComp UCommonProduceDropItemComponent
---@param AIMonsterDropWrapperComp UAIMonsterDropWrapperComponent
---@param MonsterChar ASTExtraCharacter
---@param Killer AController
function UCustomAIMonsterDropComponent:CustomGenerateExDrop(CommonProduceDropItemComp, AIMonsterDropWrapperComp, MonsterChar, Killer) end

---@param CommonProduceDropItemComp UCommonProduceDropItemComponent
---@param InBoxType EPickUpBoxType
function UCustomAIMonsterDropComponent:SetOverrideTombBoxTemplate(CommonProduceDropItemComp, InBoxType) end
