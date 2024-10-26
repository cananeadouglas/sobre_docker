soma :: Int -> Int -> Int
soma a b = a + b

subtracao :: Int -> Int -> Int
subtracao a b = if a >= b then a - b else b - a

multiplicacao :: Int -> Int -> Int
multiplicacao a b = a * b

divisao :: Float -> Float -> Float
divisao a b = if a >= b then a / b else b / a

main :: IO ()
main = do
    putStrLn "Digite o primeiro número:"
    input1 <- getLine
    let a = read input1 :: Int

    putStrLn "Digite o segundo número:"
    input2 <- getLine
    let b = read input2 :: Int

    putStrLn $ "Soma: " ++ show (soma a b)
    putStrLn $ "Subtração: " ++ show (subtracao a b)
    putStrLn $ "Multiplicação: " ++ show (multiplicacao a b)
    putStrLn $ "Divisão: " ++ show (divisao (fromIntegral a) (fromIntegral b))









