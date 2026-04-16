---@meta

---@class UBarrageMgrComponent: UActorComponent
---@field DrawCanvasInHUD number
---@field Barrage_UseLateDraw number
---@field Barrage_UseBackGround number
---@field Barrage_DecodeEmoji number
---@field Barrage_NeedDecodeMsg number
---@field Barrage_UseFastFontSize number
---@field DynamicFontSize number
---@field ScreenSizeForDynamicFontSize number
---@field LegacyFontScale number
---@field ProcessCount number
---@field DefaultDepth number
---@field DefaultScale number
---@field DefaultTextureScale number
---@field FastFontSize number
---@field WidgetZorder number
---@field MaxBufferCount number
---@field MaxRecordLoadingCount number
---@field MaxRecordWaittingCount number
---@field MaxDrawcallCount number
---@field MaxVertexCountInOneDC number
---@field Barrage_RunSpeedUsePercent number
---@field Barrage_RunSpeedRange FVector2D
---@field Barrage_ScreenLimitUsePercent number
---@field Barrage_HeightRange FVector4
---@field DecodeStr string
---@field RootUserWidgetClass UUserWidget
---@field FontAssetPtr UFont
---@field BackGroundOutOffset FVector4
---@field BackGroundUV FVector4
---@field BackGroundTexPath UTexture2D
---@field EmojiSpriteSoftObjectList ULuaArrayHelper<UObject>
---@field EmojiSpriteObjectList ULuaArrayHelper<UObject>
---@field EmojiSpriteInfoList ULuaArrayHelper<FVector2D>
local UBarrageMgrComponent = {}

function UBarrageMgrComponent:OnLoadFontDone() end

---@param IsVisable boolean
function UBarrageMgrComponent:SetVisable(IsVisable) end

---@param IsPause boolean
function UBarrageMgrComponent:SetPause(IsPause) end

---@param NeedDecodeMsg boolean
function UBarrageMgrComponent:SetNeedDecodeMsg(NeedDecodeMsg) end

---@param InRecord string
---@param RunSpeed number
---@param InPositionH number
---@param InScale number
---@param InTexScale number
---@param InDepth number
---@param InColor FLinearColor
function UBarrageMgrComponent:AddCommentRecord(InRecord, RunSpeed, InPositionH, InScale, InTexScale, InDepth, InColor) end

---@param InEmojiIndex number
function UBarrageMgrComponent:OnEmojiCompleted(InEmojiIndex) end

---@return number
function UBarrageMgrComponent:GetTestBarrageInterval() end

---@return number
function UBarrageMgrComponent:GetTestBarrageCount() end
