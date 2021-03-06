actSeq = putChar 'A' >> putChar 'G' >> putChar 'H' >>  putChar '\n'

doActSeq = do
  putChar 'A'
  putChar 'G'
  putChar 'H'
  putChar '\n'

echo1 = getLine >>= putStrLn

doEcho1 = do
  line <- getLine
  putStrLn line

echo2 = getLine >>= \line -> putStrLn $ line ++ "!"

doEcho2 = do
  line <- getLine
  putStrLn $ line ++ "!"

  echo3 :: IO ()
echo3 =  getLine >>= \l1 -> getLine >>= \l2 -> putStrLn $ l1 ++ l2

dialog :: IO ()
dialog = putStr "What is your happy number? "
         >> getLine
         >>= \n -> let num = read n :: Int in
                   if num == 7
                   then putStrLn "Ah, lucky 7!"
                   else if odd num
                        then putStrLn "Odd number! That's most people's choice..."
                        else putStrLn "Hm, even number? Unusual!"

doEcho3 = do
    line1 <- getLine 
    line2 <- getLine 
    putStrLn $ line1 ++ line2


doDialog = do
    putStr "What is your happy number?"
    answer <- getLine
    let num = read answer :: Int 
    if num ==7 then putStrLn "Ah, lucky 7"
    else if (num `mod` 2)==1 then putStrLn "Odd number! That's most people's choice.."
    else putStrLn "Hm, even number? Unusual!"


noDoTwoQuestiones = putStr "What is your name? "
                    >> getLine 
                    >>= \name ->
                    putStr "How old are you? "
                    >> getLine
                    >>= \age ->
                    print (name,age)
                    

