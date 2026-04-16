---@meta

---@class UKismetStringLibrary: UBlueprintFunctionLibrary
local UKismetStringLibrary = {}

---Converts a float value to a string
---@param InFloat number
---@return string
function UKismetStringLibrary:Conv_FloatToString(InFloat) end

---Converts an integer value to a string
---@param InInt number
---@return string
function UKismetStringLibrary:Conv_IntToString(InInt) end

---Converts an integer64 value to a string
---@param InInt64 number
---@return string
function UKismetStringLibrary:Conv_Int64ToString(InInt64) end

---Converts an uinteger64 value to a string
---@param InUInt64 number
---@return string
function UKismetStringLibrary:Conv_UInt64ToString(InUInt64) end

---Converts a byte value to a string
---@param InByte number
---@return string
function UKismetStringLibrary:Conv_ByteToString(InByte) end

---Converts a boolean value to a string, either 'true' or 'false'
---@param InBool boolean
---@return string
function UKismetStringLibrary:Conv_BoolToString(InBool) end

---Converts a vector value to a string, in the form 'X= Y= Z='
---@param InVec FVector
---@return string
function UKismetStringLibrary:Conv_VectorToString(InVec) end

---Converts an IntVector value to a string, in the form 'X= Y= Z='
---@param InIntVec FIntVector
---@return string
function UKismetStringLibrary:Conv_IntVectorToString(InIntVec) end

---Converts a vector2d value to a string, in the form 'X= Y='
---@param InVec FVector2D
---@return string
function UKismetStringLibrary:Conv_Vector2dToString(InVec) end

---Converts a rotator value to a string, in the form 'P= Y= R='
---@param InRot FRotator
---@return string
function UKismetStringLibrary:Conv_RotatorToString(InRot) end

---Converts a transform value to a string, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='
---@param InTrans FTransform
---@return string
function UKismetStringLibrary:Conv_TransformToString(InTrans) end

---Converts a UObject value to a string by calling the object's GetName method
---@param InObj UObject
---@return string
function UKismetStringLibrary:Conv_ObjectToString(InObj) end

---Converts a linear color value to a string, in the form '(R=,G=,B=,A=)'
---@param InColor FLinearColor
---@return string
function UKismetStringLibrary:Conv_ColorToString(InColor) end

---Converts a date time value to a string, in the form '%Y.%m.%d-%H.%M.%S'
---@param InDateTime FDateTime
---@return string
function UKismetStringLibrary:Conv_DateTimeToString(InDateTime) end

---Converts a name value to a string
---@param InName string
---@return string
function UKismetStringLibrary:Conv_NameToString(InName) end

---Converts a string to a name value
---@param InString string
---@return string
function UKismetStringLibrary:Conv_StringToName(InString) end

---Converts a string to a int value
---@param InString string
---@return number
function UKismetStringLibrary:Conv_StringToInt(InString) end

---Converts a string to a int64 value
---@param InString string
---@return number
function UKismetStringLibrary:Conv_StringToInt64(InString) end

---Converts a string to a float value
---@param InString string
---@return number
function UKismetStringLibrary:Conv_StringToFloat(InString) end

---Convert String Back To Vector. IsValid indicates whether or not the string could be successfully converted.
---@param InString string
---@param OutConvertedVector FVector
---@param OutIsValid boolean
function UKismetStringLibrary:Conv_StringToVector(InString, OutConvertedVector, OutIsValid) end

---Convert String Back To Vector2D. IsValid indicates whether or not the string could be successfully converted.
---@param InString string
---@param OutConvertedVector2D FVector2D
---@param OutIsValid boolean
function UKismetStringLibrary:Conv_StringToVector2D(InString, OutConvertedVector2D, OutIsValid) end

---Convert String Back To Rotator. IsValid indicates whether or not the string could be successfully converted.
---@param InString string
---@param OutConvertedRotator FRotator
---@param OutIsValid boolean
function UKismetStringLibrary:Conv_StringToRotator(InString, OutConvertedRotator, OutIsValid) end

---Convert String Back To Color. IsValid indicates whether or not the string could be successfully converted.
---@param InString string
---@param OutConvertedColor FLinearColor
---@param OutIsValid boolean
function UKismetStringLibrary:Conv_StringToColor(InString, OutConvertedColor, OutIsValid) end

---Converts a float->string, create a new string in the form AppendTo+Prefix+InFloat+Suffix
---@param AppendTo string
---@param Prefix string
---@param InFloat number
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Float(AppendTo, Prefix, InFloat, Suffix) end

---Converts a int->string, creating a new string in the form AppendTo+Prefix+InInt+Suffix
---@param AppendTo string
---@param Prefix string
---@param InInt number
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Int(AppendTo, Prefix, InInt, Suffix) end

---Converts a int->string, creating a new string in the form AppendTo+Prefix+InInt+Suffix
---@param AppendTo string
---@param Prefix string
---@param InInt64 number
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Int64(AppendTo, Prefix, InInt64, Suffix) end

---Converts a boolean->string, creating a new string in the form AppendTo+Prefix+InBool+Suffix
---@param AppendTo string
---@param Prefix string
---@param InBool boolean
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Bool(AppendTo, Prefix, InBool, Suffix) end

---Converts a vector->string, creating a new string in the form AppendTo+Prefix+InVector+Suffix
---@param AppendTo string
---@param Prefix string
---@param InVector FVector
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Vector(AppendTo, Prefix, InVector, Suffix) end

---Converts an IntVector->string, creating a new string in the form AppendTo+Prefix+InIntVector+Suffix
---@param AppendTo string
---@param Prefix string
---@param InIntVector FIntVector
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_IntVector(AppendTo, Prefix, InIntVector, Suffix) end

---Converts a vector2d->string, creating a new string in the form AppendTo+Prefix+InVector2d+Suffix
---@param AppendTo string
---@param Prefix string
---@param InVector2d FVector2D
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Vector2d(AppendTo, Prefix, InVector2d, Suffix) end

---Converts a rotator->string, creating a new string in the form AppendTo+Prefix+InRot+Suffix
---@param AppendTo string
---@param Prefix string
---@param InRot FRotator
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Rotator(AppendTo, Prefix, InRot, Suffix) end

---Converts a object->string, creating a new string in the form AppendTo+Prefix+object name+Suffix
---@param AppendTo string
---@param Prefix string
---@param InObj UObject
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Object(AppendTo, Prefix, InObj, Suffix) end

---Converts a color->string, creating a new string in the form AppendTo+Prefix+InColor+Suffix
---@param AppendTo string
---@param Prefix string
---@param InColor FLinearColor
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Color(AppendTo, Prefix, InColor, Suffix) end

---Converts a color->string, creating a new string in the form AppendTo+Prefix+InName+Suffix
---@param AppendTo string
---@param Prefix string
---@param InName string
---@param Suffix string
---@return string
function UKismetStringLibrary:BuildString_Name(AppendTo, Prefix, InName, Suffix) end

---Concatenates two strings together to make a new string
---@param A string
---@param B string
---@return string
function UKismetStringLibrary:Concat_StrStr(A, B) end

---Test if the input strings are equal (A == B)
---@param A string
---@param B string
---@return boolean
function UKismetStringLibrary:EqualEqual_StrStr(A, B) end

---Test if the input strings are equal (A == B), ignoring case
---@param A string
---@param B string
---@return boolean
function UKismetStringLibrary:EqualEqual_StriStri(A, B) end

---Test if the input string are not equal (A != B)
---@param A string
---@param B string
---@return boolean
function UKismetStringLibrary:NotEqual_StrStr(A, B) end

---Test if the input string are not equal (A != B), ignoring case differences
---@param A string
---@param B string
---@return boolean
function UKismetStringLibrary:NotEqual_StriStri(A, B) end

---Returns the number of characters in the string
---@param S string
---@return number
function UKismetStringLibrary:Len(S) end

---Returns a substring from the string starting at the specified position
---@param SourceString string
---@param StartIndex number
---@param Length number
---@return string
function UKismetStringLibrary:GetSubstring(SourceString, StartIndex, Length) end

---Finds the starting index of a substring in the a specified string
---@param SearchIn string
---@param Substring string
---@param bUseCase boolean
---@param bSearchFromEnd boolean
---@param StartPosition number
---@return number
function UKismetStringLibrary:FindSubstring(SearchIn, Substring, bUseCase, bSearchFromEnd, StartPosition) end

---Returns whether this string contains the specified substring.
---@param SearchIn string
---@param Substring string
---@param bUseCase boolean
---@param bSearchFromEnd boolean
---@return boolean
function UKismetStringLibrary:Contains(SearchIn, Substring, bUseCase, bSearchFromEnd) end

---Gets a single character from the string (as an integer)
---@param SourceString string
---@param Index number
---@return number
function UKismetStringLibrary:GetCharacterAsNumber(SourceString, Index) end

---Gets an array of strings from a source string divided up by a separator and empty strings can optionally be culled.
---@param SourceString string
---@param Delimiter string
---@param CullEmptyStrings boolean
function UKismetStringLibrary:ParseIntoArray(SourceString, Delimiter, CullEmptyStrings) end

---Concatenates an array of strings into a single string.
---@param SourceArray ULuaArrayHelper<string>
---@param Separator string
---@return string
function UKismetStringLibrary:JoinStringArray(SourceArray, Separator) end

---Returns an array that contains one entry for each character in SourceString
---@param SourceString string
function UKismetStringLibrary:GetCharacterArrayFromString(SourceString) end

---Returns a string converted to Upper case
---@param SourceString string
---@return string
function UKismetStringLibrary:ToUpper(SourceString) end

---Returns a string converted to Lower case
---@param SourceString string
---@return string
function UKismetStringLibrary:ToLower(SourceString) end

---@param SourceString string
---@param ChCount number
---@return string
function UKismetStringLibrary:LeftPad(SourceString, ChCount) end

---@param SourceString string
---@param ChCount number
---@return string
function UKismetStringLibrary:RightPad(SourceString, ChCount) end

---@param SourceString string
---@return boolean
function UKismetStringLibrary:IsNumeric(SourceString) end

---Test whether this string starts with given string.
---@param SourceString string
---@param InPrefix string
---@param SearchCase ESearchCase
---@return boolean
function UKismetStringLibrary:StartsWith(SourceString, InPrefix, SearchCase) end

---Test whether this string ends with given string.
---@param SourceString string
---@param InSuffix string
---@param SearchCase ESearchCase
---@return boolean
function UKismetStringLibrary:EndsWith(SourceString, InSuffix, SearchCase) end

---Searches this string for a given wild card
---@param SourceString string
---@param Wildcard string
---@param SearchCase ESearchCase
---@return boolean
function UKismetStringLibrary:MatchesWildcard(SourceString, Wildcard, SearchCase) end

---Removes whitespace characters from the front of this string.
---@param SourceString string
---@return string
function UKismetStringLibrary:Trim(SourceString) end

---Removes trailing whitespace characters
---@param SourceString string
---@return string
function UKismetStringLibrary:TrimTrailing(SourceString) end

---Takes an array of strings and removes any zero length entries.
---@param SourceString string
---@param InArray ULuaArrayHelper<string>
---@return number
function UKismetStringLibrary:CullArray(SourceString, InArray) end

---Returns a copy of this string, with the characters in reverse order
---@param SourceString string
---@return string
function UKismetStringLibrary:Reverse(SourceString) end

---Replace all occurrences of a substring in this string
---@param SourceString string
---@param From string
---@param To string
---@param SearchCase ESearchCase
---@return string
function UKismetStringLibrary:Replace(SourceString, From, To, SearchCase) end

---Replace all occurrences of SearchText with ReplacementText in this string.
---@param SourceString string
---@param SearchText string
---@param ReplacementText string
---@param SearchCase ESearchCase
---@return number
function UKismetStringLibrary:ReplaceInline(SourceString, SearchText, ReplacementText, SearchCase) end

---Splits this string at given string position case sensitive.
---@param SourceString string
---@param InStr string
---@param LeftS string
---@param RightS string
---@param SearchCase ESearchCase
---@param SearchDir ESearchDir
---@return boolean
function UKismetStringLibrary:Split(SourceString, InStr, LeftS, RightS, SearchCase, SearchDir) end

---@param SourceString string
---@param Count number
---@return string
function UKismetStringLibrary:Left(SourceString, Count) end

---@param SourceString string
---@param Count number
---@return string
function UKismetStringLibrary:LeftChop(SourceString, Count) end

---@param SourceString string
---@param Count number
---@return string
function UKismetStringLibrary:Right(SourceString, Count) end

---@param SourceString string
---@param Count number
---@return string
function UKismetStringLibrary:RightChop(SourceString, Count) end

---@param SourceString string
---@param Start number
---@param Count number
---@return string
function UKismetStringLibrary:Mid(SourceString, Start, Count) end

---Convert a number of seconds into minutes:seconds.milliseconds format string
---@param InSeconds number
---@return string
function UKismetStringLibrary:TimeSecondsToString(InSeconds) end

---Convert a number of seconds into minutes:seconds
---@param InSeconds number
---@return string
function UKismetStringLibrary:TimeSecondsToStringSec(InSeconds) end
