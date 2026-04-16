---@meta

---Flags controlling [de]compression Make sure to update VerifyCompressionFlagsValid after changing these values.
---@class ECompressionLibraryFlags
---@field COMPRESS_None number @No compression
---@field COMPRESS_ZLIB number @Compress with ZLIB
---@field COMPRESS_GZIP number @Compress with GZIP
---@field COMPRESS_ZSTD number @Compress with ZSTD
---@field COMPRESS_ZSTD_DIC number @Compress with ZSTD Dictionary
---@field COMPRESS_BiasMemory number @Prefer compression that compresses smaller (ONLY VALID FOR COMPRESSION)
---@field COMPRESS_BiasSpeed number @Prefer compression that compresses faster (ONLY VALID FOR COMPRESSION)
---@field COMPRESS_LZ4 number @Compress with LZ4
---@field COMPRESS_LZ4HC number @Compress with LZ4HC
ECompressionLibraryFlags = {}


---@class UCompressionLibrary: UBlueprintFunctionLibrary
local UCompressionLibrary = {}

---@return number
function UCompressionLibrary:GetDefaultZlibBitWindow() end

---Thread-safe abstract compression routine to query memory requirements for a compression operation.
---@param Flags ECompressionLibraryFlags
---@param UncompressedSize number
---@param BitWindow number
---@return number
function UCompressionLibrary:CompressMemoryBound(Flags, UncompressedSize, BitWindow) end

---Thread-safe abstract compression routine. Compresses memory from uncompressed buffer and writes it to compressed buffer. Updates CompressedSize with size of compressed data. Compression controlled by the passed in flags.
---@param Flags ECompressionLibraryFlags
---@param BitWindow number
---@return boolean
function UCompressionLibrary:CompressMemory(Flags, BitWindow) end

---Thread-safe abstract decompression routine. Uncompresses memory from compressed buffer and writes it to uncompressed buffer. UncompressedSize is expected to be the exact size of the data after decompression.
---@param Flags ECompressionLibraryFlags
---@param BitWindow number
---@param UncompressedSize number
---@param bIsSourcePadded boolean
---@return boolean
function UCompressionLibrary:UncompressMemory(Flags, BitWindow, UncompressedSize, bIsSourcePadded) end
