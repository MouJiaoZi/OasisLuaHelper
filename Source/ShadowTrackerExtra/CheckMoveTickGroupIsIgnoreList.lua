---@meta

---@class FCheckMoveTickGroupIgnoreClassCacheData
FCheckMoveTickGroupIgnoreClassCacheData = {}


---@class FCheckMoveTickGroupIgnoreClass
---@field UID number
FCheckMoveTickGroupIgnoreClass = {}


---@class UCheckMoveTickGroupIsIgnoreList: UBlueprintFunctionLibrary
local UCheckMoveTickGroupIsIgnoreList = {}

---@param Actor AActor
function UCheckMoveTickGroupIsIgnoreList:InitCheckMoveTickGroupIgnoreClasses(Actor) end

---@param MoveScene USceneComponent
---@return boolean
function UCheckMoveTickGroupIsIgnoreList:CheckMoveTickGroupIsIgnore(MoveScene) end
