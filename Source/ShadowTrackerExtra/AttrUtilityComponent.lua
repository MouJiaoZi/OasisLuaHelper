---@meta

---@class FAttrRequestContext
---@field RequestAttrNameList ULuaArrayHelper<string>
FAttrRequestContext = {}


---@class FAttrRichTextRequestContext
---@field RequestRawData string
---@field ParsedTextData string
---@field RequestAttrList ULuaArrayHelper<string>
---@field AttrValueData ULuaMapHelper<string, number>
FAttrRichTextRequestContext = {}


---@class FOnAttrRequestDelegate : ULuaSingleDelegate
FOnAttrRequestDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, AttrNameList: ULuaArrayHelper<string>, CurValueList: ULuaArrayHelper<number>, AttrOwner: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAttrRequestDelegate:Bind(Callback, Obj) end

---执行委托
---@param AttrNameList ULuaArrayHelper<string>
---@param CurValueList ULuaArrayHelper<number>
---@param AttrOwner AActor
function FOnAttrRequestDelegate:Execute(AttrNameList, CurValueList, AttrOwner) end


---@class FOnAttrRichTextRequestDelegate : ULuaSingleDelegate
FOnAttrRichTextRequestDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, AttrRichTextString: string, AttrOwner: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAttrRichTextRequestDelegate:Bind(Callback, Obj) end

---执行委托
---@param AttrRichTextString string
---@param AttrOwner AActor
function FOnAttrRichTextRequestDelegate:Execute(AttrRichTextString, AttrOwner) end


---@class UAttrUtilityComponent: UActorComponent
---@field AttrRequestDelegates ULuaMapHelper<number, FAttrRequestContext>
---@field AttrRichTextRequestDelegates ULuaMapHelper<number, FAttrRichTextRequestContext>
local UAttrUtilityComponent = {}

---@param TargetCharacter ACharacter
---@param AttrMsgList ULuaArrayHelper<string>
---@param Delegate FOnAttrRequestDelegate
function UAttrUtilityComponent:RequestAttrValueAsync(TargetCharacter, AttrMsgList, Delegate) end

---@param TargetCharacter ACharacter
---@param AttrMsgSimpleList ULuaArrayHelper<FGameAttributeContainer>
---@param Delegate FOnAttrRequestDelegate
function UAttrUtilityComponent:RequestAttrValueAsyncBySimpleConfig(TargetCharacter, AttrMsgSimpleList, Delegate) end

---@param TargetCharacter ACharacter
---@param AttrMsgList ULuaArrayHelper<string>
---@param RequestID number
function UAttrUtilityComponent:RequestCharacterAttrValue(TargetCharacter, AttrMsgList, RequestID) end

---@param AttrValueList ULuaArrayHelper<number>
---@param RequestID number
function UAttrUtilityComponent:NotifyClientRequestData(AttrValueList, RequestID) end

---@param TargetCharacter ACharacter
---@param RequestRawData string
---@param Delegate FOnAttrRichTextRequestDelegate
function UAttrUtilityComponent:RequestAttrRichTextData(TargetCharacter, RequestRawData, Delegate) end

---@param Context FAttrRichTextRequestContext
---@return boolean
function UAttrUtilityComponent:ParseAttrRichTextData(Context) end

---@param Value number
---@param AttrName string
---@return string
function UAttrUtilityComponent:FormatAttrValue(Value, AttrName) end
