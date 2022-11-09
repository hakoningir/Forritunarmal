{-
Notkun: listAll i n f
Fyrir:  i og n eru heiltölur, f er eitthvað fall. i <= n annars er skilað tómalista.
Gildi:  Skilar lista frá f(i),f(i+1),...,f(n)
-}
listAll :: Int -> Int -> (Int -> b) -> [b] 
listAll i n f = 
    if i > n 
        then []
    else f(i) : (listAll (i+1) n f)