---@meta

---@class FUCACRule_UploadFireBtnPosRecordData
---@field FireBtnPosRight FVector2D
---@field FireBtnPosLeft FVector2D
---@field AimBtnPos FVector2D
FUCACRule_UploadFireBtnPosRecordData = {}


---@class UCACRule_CheckAimFireInfo: UCheckAimCheatRule
---@field ShootingUIName string
---@field FireBtn_Right string
---@field FireBtn_Left string
---@field ShootingAimBtn string
---@field FireBtnRecordMax number
---@field AimBtnRecordMax number
---@field CollectBtnInfoInterval number
---@field XPCallInterval number
---@field bEnableIrrationalPos boolean
local UCACRule_CheckAimFireInfo = {}

function UCACRule_CheckAimFireInfo:CollectShootingUIInfo() end

function UCACRule_CheckAimFireInfo:XPCallFireInfo() end

function UCACRule_CheckAimFireInfo:OnFireBtnRelease() end

---@param UploadData FUCACRule_UploadFireBtnPosRecordData
function UCACRule_CheckAimFireInfo:UploadFireBtnPosRecordData(UploadData) end

---@param FireDownCounter number
function UCACRule_CheckAimFireInfo:UploadFireDownRecordData(FireDownCounter) end
