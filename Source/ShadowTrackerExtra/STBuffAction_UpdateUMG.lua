---@meta

---更新UMG 只要UserWidget派生类实现了函数BuffIsThisWidget就能被这个BuffAction更新 具体函数或事件的名字参见 const FName USTBuffAction_UpdateUMG::FuncName_IsThisWidget(TEXT("BuffIsThisWidget")); const FName USTBuffAction_UpdateUMG::FuncName_Update(TEXT("BuffUpdate")); const FName USTBuffAction_UpdateUMG::FuncName_OnEnter(TEXT("BuffOnEnter")); const FName USTBuffAction_UpdateUMG::FuncName_OnLeave(TEXT("BuffOnLeave"));
---@class FUMGUpdateParameter
---@field UMGClassPath FSoftClassPath
---@field Tag string
---@field CachedUMG ULuaArrayHelper<UUserWidget>
FUMGUpdateParameter = {}


---@class FSTBuffAction_UpdateUMG_Data
FSTBuffAction_UpdateUMG_Data = {}


---@class USTBuffAction_UpdateUMG: USTExtraBuffAction
---@field UpdateParameters ULuaArrayHelper<FUMGUpdateParameter>
local USTBuffAction_UpdateUMG = {}
