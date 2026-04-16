---@meta

---@class FQuestionAnswerStatusType
---@field Normal number
---@field Correct number
---@field Wrong number
FQuestionAnswerStatusType = {}


---@class FPlayerQuestionInfo
---@field bHasAnswerCompleted boolean
---@field CurrentQuestionID number
FPlayerQuestionInfo = {}


---@class UQuestionAnswerComponent: UActorComponent
---@field PlayerInfoMap ULuaMapHelper<APlayerController, FPlayerQuestionInfo>
---@field AnswerStateCorrect boolean
---@field AnswerStateResult FQuestionAnswerStatusType
local UQuestionAnswerComponent = {}

---@param PlayerController APlayerController
---@return number
function UQuestionAnswerComponent:GetQuestionID(PlayerController) end

---@param PlayerController APlayerController
---@param QuestionID number
---@param AnswerID number
---@return boolean
function UQuestionAnswerComponent:SumbitQuestion(PlayerController, QuestionID, AnswerID) end

---@param PlayerController APlayerController
---@return boolean
function UQuestionAnswerComponent:HasAnswerCompleted(PlayerController) end

---@return boolean
function UQuestionAnswerComponent:IsValid() end

---@param CurrentQuestionID number
---@param InValidQuestionID number
---@return number
function UQuestionAnswerComponent:GetNextQuestionID(CurrentQuestionID, InValidQuestionID) end

---@param QuestionID number
---@return number
function UQuestionAnswerComponent:GetAnswerIDByQuestionID(QuestionID) end

---@param QuestionID number
---@param CurrentNPC AWarteringAreaCPP
function UQuestionAnswerComponent:UpdatePanelByQuestionID(QuestionID, CurrentNPC) end

---@param Result boolean
function UQuestionAnswerComponent:UpdatePanelByQuestionAnswer(Result) end

function UQuestionAnswerComponent:CloseQuestionPanel() end

function UQuestionAnswerComponent:OnRep_AnswerStateCorrect() end

---@param PlayerController APlayerController
function UQuestionAnswerComponent:EffectByCorrectAnswer(PlayerController) end

function UQuestionAnswerComponent:OnRep_AnswerStateResult() end

---@param Result boolean
function UQuestionAnswerComponent:ServerDoChangeAnswerStatus(Result) end
