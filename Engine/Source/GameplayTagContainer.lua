---@meta

---@class EGameplayTagMatchType
---@field Explicit number
---@field IncludeParentTags number
EGameplayTagMatchType = {}


---@class EGameplayContainerMatchType
---@field Any number
---@field All number
EGameplayContainerMatchType = {}


---Enumerates the list of supported query expression types.
---@class EGameplayTagQueryExprType
---@field Undefined number
---@field AnyTagsMatch number
---@field AllTagsMatch number
---@field NoTagsMatch number
---@field AnyExprMatch number
---@field AllExprMatch number
---@field NoExprMatch number
EGameplayTagQueryExprType = {}


---@class EGameplayTagEventTypeNew
---@field NewOrRemoved number @Event only happens when tag is new or completely removed
---@field AnyCountChange number @Event happens any time tag "count" changes
EGameplayTagEventTypeNew = {}


---一个GameplayTag，由UGC项目设置GameplayTags中注册的"x.y.z"格式的分层名称
---@class FGameplayTag
---@field TagName string @GameplayTag的"x.y.z"格式的分层名称
---@field bUseSlowReplication boolean
FGameplayTag = {}


---一个容纳GameplayTag的集合，GameplayTag能够通过显式添加或者添加子标签隐式地包含进来
---@class FGameplayTagContainer
---@field GameplayTags ULuaArrayHelper<FGameplayTag> @包含GameplayTag的数组
---@field ParentTags ULuaArrayHelper<FGameplayTag> @除 GameplayTags 之外的父级GameplayTag的数组，用于加速父级搜索。 可能包含重复项。
FGameplayTagContainer = {}


---Helper struct for viewing tag references (assets that reference a tag). Drop this into a struct and set the OnGetgameplayStatName. A details customization will display a tree view of assets referencing the tag
---@class FGameplayTagReferenceHelper
FGameplayTagReferenceHelper = {}


---Helper struct: drop this in another struct to get an embedded create new tag widget.
---@class FGameplayTagCreationWidgetHelper
FGameplayTagCreationWidgetHelper = {}


---An FGameplayTagQuery is a logical query that can be run against an FGameplayTagContainer.  A query that succeeds is said to "match". Queries are logical expressions that can test the intersection properties of another tag container (all, any, or none), or the matching state of a set of sub-expressions (all, any, or none). This allows queries to be arbitrarily recursive and very expressive.  For instance, if you wanted to test if a given tag container contained tags ((A && B) || (C)) && (!D), you would construct your query in the form ALL( ANY( ALL(A,B), ALL(C) ), NONE(D) ) You can expose the query structs to Blueprints and edit them with a custom editor, or you can construct them natively in code. Example of how to build a query via code: FGameplayTagQuery Q; Q.BuildQuery( FGameplayTagQueryExpression() .AllTagsMatch() .AddTag(FGameplayTag::RequestGameplayTag(FName(TEXT("Animal.Mammal.Dog.Corgi")))) .AddTag(FGameplayTag::RequestGameplayTag(FName(TEXT("Plant.Tree.Spruce")))) ); Queries are internally represented as a byte stream that is memory-efficient and can be evaluated quickly at runtime. Note: these have an extensive details and graph pin customization for editing, so there is no need to expose the internals to Blueprints.
---@class FGameplayTagQuery
---@field TokenStreamVersion number @Versioning for future token stream protocol changes. See EGameplayTagQueryStreamVersion.
---@field TagDictionary ULuaArrayHelper<FGameplayTag> @List of tags referenced by this entire query. Token stream stored indices into this list.
---@field QueryTokenStream ULuaArrayHelper<number> @Stream representation of the actual hierarchical query
---@field UserDescription string @User-provided string describing the query
---@field AutoDescription string @Auto-generated string describing the query
FGameplayTagQuery = {}


---@class FOnGameplayEffectTagCountChanged : ULuaMulticastDelegate
FOnGameplayEffectTagCountChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FGameplayTag, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameplayEffectTagCountChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FGameplayTag
---@param Param2 number
function FOnGameplayEffectTagCountChanged:Broadcast(Param1, Param2) end


---This is an editor-only representation of a query, designed to be editable with a typical property window. To edit a query in the editor, an FGameplayTagQuery is converted to a set of UObjects and edited,  When finished, the query struct is rewritten and these UObjects are discarded. This query representation is not intended for runtime use.
---@class UEditableGameplayTagQuery: UObject
---@field UserDescription string @User-supplied description, shown in property details. Auto-generated description is shown if not supplied.
---@field TagQueryExportText_Helper FGameplayTagQuery @Property to hold a gameplay tag query so we can use the exporttext path to get a string representation.
local UEditableGameplayTagQuery = {}


---@class UEditableGameplayTagQueryExpression: UObject
local UEditableGameplayTagQueryExpression = {}


---@class UEditableGameplayTagQueryExpression_AnyTagsMatch: UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
local UEditableGameplayTagQueryExpression_AnyTagsMatch = {}


---@class UEditableGameplayTagQueryExpression_AllTagsMatch: UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
local UEditableGameplayTagQueryExpression_AllTagsMatch = {}


---@class UEditableGameplayTagQueryExpression_NoTagsMatch: UEditableGameplayTagQueryExpression
---@field Tags FGameplayTagContainer
local UEditableGameplayTagQueryExpression_NoTagsMatch = {}


---@class UEditableGameplayTagQueryExpression_AnyExprMatch: UEditableGameplayTagQueryExpression
---@field Expressions ULuaArrayHelper<UEditableGameplayTagQueryExpression>
local UEditableGameplayTagQueryExpression_AnyExprMatch = {}


---@class UEditableGameplayTagQueryExpression_AllExprMatch: UEditableGameplayTagQueryExpression
---@field Expressions ULuaArrayHelper<UEditableGameplayTagQueryExpression>
local UEditableGameplayTagQueryExpression_AllExprMatch = {}


---@class UEditableGameplayTagQueryExpression_NoExprMatch: UEditableGameplayTagQueryExpression
---@field Expressions ULuaArrayHelper<UEditableGameplayTagQueryExpression>
local UEditableGameplayTagQueryExpression_NoExprMatch = {}
