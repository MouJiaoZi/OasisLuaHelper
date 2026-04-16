---@meta

---@class UIceZodiacManager: UObject
---@field CurHasCharArray ULuaArrayHelper<ASTExtraBaseCharacter>
---@field CaughtCharArray ULuaArrayHelper<ASTExtraBaseCharacter>
local UIceZodiacManager = {}

---@param Chara ASTExtraBaseCharacter
---@return boolean
function UIceZodiacManager:IsNowHasZodiac(Chara) end

---@param Chara ASTExtraBaseCharacter
---@return boolean
function UIceZodiacManager:IsCaughtZodiac(Chara) end

---@param Chara ASTExtraBaseCharacter
---@return number
function UIceZodiacManager:AddCharaCaughtZodiac(Chara) end

---@param Chara ASTExtraBaseCharacter
---@return boolean
function UIceZodiacManager:RemoveCharaCaughtZodiac(Chara) end

function UIceZodiacManager:ClearAllArray() end
