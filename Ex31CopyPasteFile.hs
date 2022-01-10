import Data.List
import System.IO


returnstr = do
    f <- getLine
    return f

copyPaste = do 
    -- create src file
    file1 <- openFile "myFile.txt" WriteMode
    hPutStrLn file1 ("AAAAAAAAAAAAAAAAAAAAAA")
    hClose file1
    -- read src file
    file2 <- openFile "myFile.txt" ReadMode
    contents <- hGetContents file2
    putStrLn contents
    hClose file2
    -- create dest file and put contents of src file into it
    file3 <- openFile "testtest.txt" WriteMode
    hPutStrLn file3 contents
    hClose file3
    -- read dest file
    file4 <- openFile "testtest.txt" ReadMode
    contents4 <- hGetContents file4
    putStrLn contents4
    hClose file4




main = do 
    copyPaste