{-
Notkun: powerList i j
Fyrir:  i og j eru heiltölur
Gildi:  Listi lista [x1, x2,..., xn] sem inniheldur alla undirlista lista
        allra heiltalna k þ.a. í vaxandi röð. Ef i <= j þá er útkoman allir
        undirlistar listans [i, i+1,..., j].
        Ef i > j þá er útkoman [[]].
-}
powerList :: Int -> Int -> [[Int]]
powerList i j =
    if i > j 
        then [[]]
    else (map (\x -> i:x) (powerList (i+1) j)) ++ (powerList (i+1) j)