---@meta

---@class FCirclePainValumePainInfo
---@field endTime number
---@field pain number
FCirclePainValumePainInfo = {}


---吃毒碰撞盒，主角和盒子重叠会和在毒圈外有相同的效果
---@class ACirclePainVolume: AUAETriggerArea
---@field Infos ULuaArrayHelper<FCirclePainValumePainInfo>
---@field bOnlyForInterface boolean
---@field bisAddCirclePain boolean
---@field CharacterList ULuaArrayHelper<ASTExtraBaseCharacter>
---@field bOpenParachuteAfterExiting boolean
---@field BuffTimes number
---@field bShowTips boolean
---@field EnterTipsMsgID number
---@field bAllowCheckEnterInTick boolean
---@field bUseAABB boolean
---@field AfterRotatorMin FVector
---@field AfterRotatorMax FVector
---@field bIgnoreParachuting boolean
local ACirclePainVolume = {}

---@param InputCharacter ASTExtraBaseCharacter
function ACirclePainVolume:PlayerEnter(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
function ACirclePainVolume:PlayerExit(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
---@return boolean
function ACirclePainVolume:CheckCanEnter(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
---@return boolean
function ACirclePainVolume:CheckCanLeave(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
---@return boolean
function ACirclePainVolume:CheckCanLeaveInTick(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
function ACirclePainVolume:OnPlayerEnter(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
function ACirclePainVolume:OnPlayerExit(InputCharacter) end

---@param InputCharacter ASTExtraBaseCharacter
---@return boolean
function ACirclePainVolume:IsCharacterInBox(InputCharacter) end

function ACirclePainVolume:OnGameFinished() end
