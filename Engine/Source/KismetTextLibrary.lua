---@meta

---@class ERoundingMode
---@field HalfToEven number @Rounds to the nearest place, equidistant ties go to the value which is closest to an even value: 1.5 becomes 2, 0.5 becomes 0
---@field HalfFromZero number @Rounds to nearest place, equidistant ties go to the value which is further from zero: -0.5 becomes -1.0, 0.5 becomes 1.0
---@field HalfToZero number @Rounds to nearest place, equidistant ties go to the value which is closer to zero: -0.5 becomes 0, 0.5 becomes 0.
---@field FromZero number @Rounds to the value which is further from zero, "larger" in absolute value: 0.1 becomes 1, -0.1 becomes -1
---@field ToZero number @Rounds to the value which is closer to zero, "smaller" in absolute value: 0.1 becomes 0, -0.1 becomes 0
---@field ToNegativeInfinity number @Rounds to the value which is more negative: 0.1 becomes 0, -0.1 becomes -1
---@field ToPositiveInfinity number @Rounds to the value which is more positive: 0.1 becomes 1, -0.1 becomes 0
ERoundingMode = {}


---@class ETextGender
---@field Masculine number
---@field Feminine number
---@field Neuter number
ETextGender = {}


---@class FFormatArgumentData
---@field ArgumentName string
---@field ArgumentValueType EFormatArgumentType
---@field ArgumentValue string
---@field ArgumentValueInt number
---@field ArgumentValueFloat number
---@field ArgumentValueGender ETextGender
FFormatArgumentData = {}


---@class UKismetTextLibrary: UBlueprintFunctionLibrary
local UKismetTextLibrary = {}

---Converts a vector value to localized formatted text, in the form 'X= Y= Z='
---@param InVec FVector
---@return string
function UKismetTextLibrary:Conv_VectorToText(InVec) end

---Converts a vector2d value to localized formatted text, in the form 'X= Y='
---@param InVec FVector2D
---@return string
function UKismetTextLibrary:Conv_Vector2dToText(InVec) end

---Converts a rotator value to localized formatted text, in the form 'P= Y= R='
---@param InRot FRotator
---@return string
function UKismetTextLibrary:Conv_RotatorToText(InRot) end

---Converts a transform value to localized formatted text, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='
---@param InTrans FTransform
---@return string
function UKismetTextLibrary:Conv_TransformToText(InTrans) end

---Converts a UObject value to culture invariant text by calling the object's GetName method
---@param InObj UObject
---@return string
function UKismetTextLibrary:Conv_ObjectToText(InObj) end

---Converts a linear color value to localized formatted text, in the form '(R=,G=,B=,A=)'
---@param InColor FLinearColor
---@return string
function UKismetTextLibrary:Conv_ColorToText(InColor) end

---Converts localizable text to the string
---@param InText string
---@return string
function UKismetTextLibrary:Conv_TextToString(InText) end

---Converts string to culture invariant text. Use Format or Make Literal Text to create localizable text
---@param InString string
---@return string
function UKismetTextLibrary:Conv_StringToText(InString) end

---Converts Name to culture invariant text
---@param InName string
---@return string
function UKismetTextLibrary:Conv_NameToText(InName) end

---@param InText string
---@return boolean
function UKismetTextLibrary:TextIsEmpty(InText) end

---@param InText string
---@return boolean
function UKismetTextLibrary:TextIsTransient(InText) end

---@param InText string
---@return boolean
function UKismetTextLibrary:TextIsCultureInvariant(InText) end

---Transforms the text to lowercase in a culture correct way.
---@param InText string
---@return string
function UKismetTextLibrary:TextToLower(InText) end

---Transforms the text to uppercase in a culture correct way.
---@param InText string
---@return string
function UKismetTextLibrary:TextToUpper(InText) end

---@param InText string
---@return string
function UKismetTextLibrary:TextTrimPreceding(InText) end

---@param InText string
---@return string
function UKismetTextLibrary:TextTrimTrailing(InText) end

---@param InText string
---@return string
function UKismetTextLibrary:TextTrimPrecedingAndTrailing(InText) end

---@return string
function UKismetTextLibrary:GetEmptyText() end

---@param Namespace string
---@param Key string
---@param OutText string
---@return boolean
function UKismetTextLibrary:FindTextInLocalizationTable(Namespace, Key, OutText) end

---@param A string
---@param B string
---@return boolean
function UKismetTextLibrary:EqualEqual_TextText(A, B) end

---@param A string
---@param B string
---@return boolean
function UKismetTextLibrary:EqualEqual_IgnoreCase_TextText(A, B) end

---@param A string
---@param B string
---@return boolean
function UKismetTextLibrary:NotEqual_TextText(A, B) end

---@param A string
---@param B string
---@return boolean
function UKismetTextLibrary:NotEqual_IgnoreCase_TextText(A, B) end

---Converts a boolean value to formatted text, either 'true' or 'false'
---@param InBool boolean
---@return string
function UKismetTextLibrary:Conv_BoolToText(InBool) end

---Converts a byte value to formatted text
---@param Value number
---@return string
function UKismetTextLibrary:Conv_ByteToText(Value) end

---@param Value number
---@param bUseGrouping boolean
---@param MinimumIntegralDigits number
---@param MaximumIntegralDigits number
---@return string
function UKismetTextLibrary:Conv_IntToText(Value, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits) end

---@param Value number
---@param RoundingMode ERoundingMode
---@param bUseGrouping boolean
---@param MinimumIntegralDigits number
---@param MaximumIntegralDigits number
---@param MinimumFractionalDigits number
---@param MaximumFractionalDigits number
---@return string
function UKismetTextLibrary:Conv_FloatToText(Value, RoundingMode, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits) end

---Generate an FText that represents the passed number as currency in the current culture. BaseVal is specified in the smallest fractional value of the currency and will be converted for formatting according to the selected culture. Keep in mind the CurrencyCode is completely independent of the culture it's displayed in (and they do not imply one another). For example: FText::AsCurrencyBase(650, TEXT("EUR")); would return an FText of "<EUR>6.50" in most English cultures (en_US/en_UK) and "6,50<EUR>" in Spanish (es_ES) (where <EUR> is U+20AC)
---@param BaseValue number
---@param CurrencyCode string
---@return string
function UKismetTextLibrary:AsCurrencyBase(BaseValue, CurrencyCode) end

---@param Value number
---@param RoundingMode ERoundingMode
---@param bUseGrouping boolean
---@param MinimumIntegralDigits number
---@param MaximumIntegralDigits number
---@param MinimumFractionalDigits number
---@param MaximumFractionalDigits number
---@param CurrencyCode string
---@return string
function UKismetTextLibrary:AsCurrency_Integer(Value, RoundingMode, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits, CurrencyCode) end

---@param Value number
---@param RoundingMode ERoundingMode
---@param bUseGrouping boolean
---@param MinimumIntegralDigits number
---@param MaximumIntegralDigits number
---@param MinimumFractionalDigits number
---@param MaximumFractionalDigits number
---@param CurrencyCode string
---@return string
function UKismetTextLibrary:AsCurrency_Float(Value, RoundingMode, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits, CurrencyCode) end

---@param Value number
---@param RoundingMode ERoundingMode
---@param bUseGrouping boolean
---@param MinimumIntegralDigits number
---@param MaximumIntegralDigits number
---@param MinimumFractionalDigits number
---@param MaximumFractionalDigits number
---@return string
function UKismetTextLibrary:AsPercent_Float(Value, RoundingMode, bUseGrouping, MinimumIntegralDigits, MaximumIntegralDigits, MinimumFractionalDigits, MaximumFractionalDigits) end

---@param InDateTime FDateTime
---@return string
function UKismetTextLibrary:AsDate_DateTime(InDateTime) end

---@param InDateTime FDateTime
---@param InTimeZone string
---@return string
function UKismetTextLibrary:AsTimeZoneDate_DateTime(InDateTime, InTimeZone) end

---@param In FDateTime
---@return string
function UKismetTextLibrary:AsDateTime_DateTime(In) end

---@param InDateTime FDateTime
---@param InTimeZone string
---@return string
function UKismetTextLibrary:AsTimeZoneDateTime_DateTime(InDateTime, InTimeZone) end

---@param In FDateTime
---@return string
function UKismetTextLibrary:AsTime_DateTime(In) end

---@param InDateTime FDateTime
---@param InTimeZone string
---@return string
function UKismetTextLibrary:AsTimeZoneTime_DateTime(InDateTime, InTimeZone) end

---@param InTimespan FTimespan
---@return string
function UKismetTextLibrary:AsTimespan_Timespan(InTimespan) end

---@param InPattern string
---@param InArgs ULuaArrayHelper<FFormatArgumentData>
---@return string
function UKismetTextLibrary:Format(InPattern, InArgs) end

---Returns true if the given text is referencing a string table.
---@param Text string
---@return boolean
function UKismetTextLibrary:TextIsFromStringTable(Text) end

---Attempts to create a text instance from a string table ID and key.
---@param TableId string
---@param Key string
---@return string
function UKismetTextLibrary:TextFromStringTable(TableId, Key) end

---Attempts to find the String Table ID and key used by the given text.
---@param Text string
---@param OutTableId string
---@param OutKey string
---@return boolean
function UKismetTextLibrary:StringTableIdAndKeyFromText(Text, OutTableId, OutKey) end
