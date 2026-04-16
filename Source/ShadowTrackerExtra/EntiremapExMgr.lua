---@meta

---@class EMapExUIType
---@field SeasonTask number @赛季任务
---@field CampTool number @营地工具
---@field Action number @行动
---@field EscapeTask number @逃生任务
---@field CommonTab number @公共按钮
---@field CommonTab1 number @公共按钮1
---@field NewTabs number @新按钮
EMapExUIType = {}


---@class EMapExOpenState
---@field None number @不存在ExUI
---@field Closed number @收起状态
---@field SeasonTask number @赛季任务
---@field CampTool number @营地工具
---@field Action number @行动
---@field EscapeTask number @逃生任务
---@field CommonTab number @公共按钮
---@field CommonTab1 number @公共按钮1
---@field NewTabs number @新按钮
EMapExOpenState = {}


---@class UEntiremapExMgr: UObject
---@field OnCreateAllExUIFinished FOnCreateAllExUIFinished
---@field MapExOpenState EMapExOpenState
---@field NewButtonState number
---@field NewTabUIMap ULuaMapHelper<number, UWidget>
---@field NewContentUIMap ULuaMapHelper<number, UWidget>
local UEntiremapExMgr = {}

---@param Key string
function UEntiremapExMgr:CreateNewExUI_Dynamic(Key) end

---@param Key string
function UEntiremapExMgr:DestroyNewExUI_Dynamic(Key) end

---@param i number
function UEntiremapExMgr:OnLoadConditionClass(i) end

---@param i number
function UEntiremapExMgr:OnLoadTabUI(i) end

---@param i number
function UEntiremapExMgr:OnLoadContentUI(i) end

---@param i number
function UEntiremapExMgr:OnUnLoadTabUI(i) end

---@param i number
function UEntiremapExMgr:OnUnLoadContentUI(i) end

---@param inSoftClass USeasonTaskWidget
function UEntiremapExMgr:OnLoadSeasonTaskUI(inSoftClass) end

---@param inSoftClass UCampToolWidget
function UEntiremapExMgr:OnLoadCampToolUI(inSoftClass) end

---@param inSoftClass UUAEUserWidget
function UEntiremapExMgr:OnLoadActionUI(inSoftClass) end

---@param inSoftClass UUAEUserWidget
function UEntiremapExMgr:OnLoadEscapeTaskUI(inSoftClass) end

---@param ID number
function UEntiremapExMgr:OnNewButtonSelect(ID) end

---@param isShow boolean
function UEntiremapExMgr:EntireMapShowAirLine(isShow) end

---@param isShow boolean
function UEntiremapExMgr:EntireMapShowVertLine(isShow) end

function UEntiremapExMgr:CampDisappearAirLine() end

function UEntiremapExMgr:CampToolChangeVertBox() end

function UEntiremapExMgr:CampToolRefreshUI() end

---@param isOpen boolean
function UEntiremapExMgr:CampToolChangeUI(isOpen) end

---@param isShow boolean
function UEntiremapExMgr:CampToolRefrehTMsInfo(isShow) end
