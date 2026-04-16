---@meta

---@class ASTAnimal_Rabbit: ASTAnimalCharacter
---@field IsCatched boolean
---@field IsBackToHouse boolean
---@field UpdateSpeedDeltaTime number
---@field NearOwnerRadius number
---@field NearOwnerRadius_2 number
---@field FarAwayOwnerRadius number
---@field FarAwayOwnerRadius_2 number
---@field DefaultSprintSpeed number
---@field IsMoveToCoast boolean
---@field MoveStart FVector
---@field MoveDest FVector
---@field MoveDir FVector
---@field Highest number
---@field TotalDistance number
---@field TotalMoveTime number
---@field OwnerHideRabbit boolean
---@field OwnerIsPlayingEmote boolean
---@field CreateLoveEffect boolean
---@field RabbitHouse FVector
local ASTAnimal_Rabbit = {}

function ASTAnimal_Rabbit:OnRep_IsCatched() end

function ASTAnimal_Rabbit:OnRep_IsBackToHouse() end

function ASTAnimal_Rabbit:OnRep_IsMoveToCoast() end

function ASTAnimal_Rabbit:OnRep_OwnerHideRabbit() end

function ASTAnimal_Rabbit:OnRep_OwnerIsPlayingEmote() end

function ASTAnimal_Rabbit:OnRep_CreateLoveEffect() end
