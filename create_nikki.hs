import Data.Time (getCurrentTime, UTCTime (utctDay), defaultTimeLocale, formatTime, hoursToTimeZone, utcToLocalTime)
import System.Directory (createDirectoryIfMissing)

main :: IO ()
main = do
    now <- getCurrentTime
    let timeZone = hoursToTimeZone 9
        localTime = utcToLocalTime timeZone now
        todayFileName = formatTime defaultTimeLocale "%Y-%m-%d" localTime
        dirName = formatTime defaultTimeLocale "%Y%m" localTime
        filePath = dirName ++ "/" ++ todayFileName ++ ".md"
        fileContent = "# " ++ todayFileName
    
    -- directory create
    createDirectoryIfMissing True dirName
    -- file create
    writeFile filePath fileContent
    
    