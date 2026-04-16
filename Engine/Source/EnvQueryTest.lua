---@meta

---@class EEQSNormalizationType
---@field Absolute number
---@field RelativeToScores number
EEQSNormalizationType = {}


---@class UEnvQueryTest: UEnvQueryNode
---@field TestOrder number @Number of test as defined in data asset
---@field TestPurpose EEnvTestPurpose @The purpose of this test.  Should it be used for filtering possible results, scoring them, or both?
---@field TestComment string @Optional comment or explanation about what this test is for.  Useful when the purpose of tests may not be clear, especially when there are multiple tests of the same type.
---@field MultipleContextFilterOp EEnvTestFilterOperator @Determines filtering operator when context returns multiple items
---@field MultipleContextScoreOp EEnvTestScoreOperator @Determines scoring operator when context returns multiple items
---@field FilterType EEnvTestFilterType @Does this test filter out results that are below a lower limit, above an upper limit, or both?  Or does it just look for a matching value?
---@field BoolValue FAIDataProviderBoolValue @Desired boolean value of the test for scoring to occur or filtering test to pass.
---@field FloatValueMin FAIDataProviderFloatValue @Minimum limit (inclusive) of valid values for the raw test value. Lower values will be discarded as invalid.
---@field FloatValueMax FAIDataProviderFloatValue @Maximum limit (inclusive) of valid values for the raw test value. Higher values will be discarded as invalid.
---@field ScoringEquation EEnvTestScoreEquation @The shape of the curve equation to apply to the normalized score before multiplying by factor.
---@field ClampMinType EEnvQueryTestClamping @How should the lower bound for normalization of the raw test value before applying the scoring formula be determined? Should it use the lowest value found (tested), the lower threshold for filtering, or a separate specified normalization minimum?
---@field ClampMaxType EEnvQueryTestClamping @How should the upper bound for normalization of the raw test value before applying the scoring formula be determined? Should it use the highest value found (tested), the upper threshold for filtering, or a separate specified normalization maximum?
---@field NormalizationType EEQSNormalizationType @Specifies how to determine value span used to normalize scores
---@field ScoreClampMin FAIDataProviderFloatValue @Minimum value to use to normalize the raw test value before applying scoring formula.
---@field ScoreClampMax FAIDataProviderFloatValue @Maximum value to use to normalize the raw test value before applying scoring formula.
---@field ScoringFactor FAIDataProviderFloatValue @The weight (factor) by which to multiply the normalized score after the scoring equation is applied.
---@field ReferenceValue FAIDataProviderFloatValue @When specified gets used to normalize test's results in such a way that the closer a value is to ReferenceValue the higher normalized result it will produce. Value farthest from ReferenceValue will be normalized to 0, and all the other values in between will get normalized linearly with the distance to ReferenceValue.
---@field bDefineReferenceValue boolean @When set to true enables usage of ReferenceValue. It's false by default
---@field bWorkOnFloatValues number @When set, test operates on float values (e.g. distance, with AtLeast, UpTo conditions), otherwise it will accept bool values (e.g. visibility, with Equals condition)
local UEnvQueryTest = {}
