main = print "Hello World"


test1 = (x,y,z)
  where
    x,y :: Bool
    x = True
    y = not x

    z :: Bool
    z = poi
      where
        poi :: Bool
        poi = f x
          where
            f :: Bool -> Bool
            f y = not y


test2 = ["1","2"]++["3"]

test3 = "1":"2":"3":[]


test4 = (f [3])
  where
    f :: [Int] -> String
    f (x:xs) = show x

test5 = (f [3], f ["a"])
  where
    f ::Show a => [a] -> String
    f (x:xs) = show x

test6 = (f 5, f(-2))
  where
    f :: Int -> Bool
    f x | x>=0 = True
        | otherwise = False

test7 = (f 5, f(-2))
  where
    f :: Int -> Bool
    f x = if x>=0 then True
          else False

test8 = (f 2,f 3)
  where
    f :: Int -> Bool
    f 2 = True
    f 3 = False
    f _ = False

test9 = (f (1,2,3))
  where
    f :: (Int,Int,Int) -> Int
    f (1,x,_) = x
    f _ = 0

test10 = (f [1,2,3,4,5], f [10,2,3,4,5,6,7,8,9,10])
  where
    f :: [Int] -> Int
    f [_,_] = 0
    f [x,_,_] = x
    f [_,x,_,_,_] = x
    f (x:_) = x

test11 = (\x -> x + x) 2

test12 = ((\y -> (\x -> y * x + x) 2) 3)

test13 = map (\x -> x * 2) [0..3]

test14 = map (+3) [0..3]

test15 = (
          head [1,2,3],
          tail [1,2,3],
          last [1,2,3],
          init [1,2,3]
          )

test16 = (
          drop 2 [1,2,3],
          null [],
          length [1,2,3],
          sum [1,2,3]
          )

test17 = (
          reverse [1,2,3],
          elem 2 [1,2,3],
          all (\x -> x > 2) [3,4,5],
          any (\x -> x > 2) [1,2,3],
          filter (\x -> x > 2) [1,2,3]
        )
test18 = (
          1 : [2,3],
          [1,2,3] !! 0,
          take 2 [1,2,3],
          [1,2] ++ [3,4],
          concat [[1,2],[3],[4,5]],
          zip [1,2] [3,4],
          zipWith (\x -> \y -> x * y) [1,2] [3,4]
          )

test19 = take 5 (repeat 3)

test20 = foldr (++) "0" ["1", "2", "3"]
test21 = foldl (++) "0" ["1", "2", "3"]

test22 = (
          [1..10],
          [1,5..10],
          take 3 [1..]
          )

test23 = (
          [x|x <- [1..3]],
          [(x,y)|x<-[1..3], y<-[1..3]],
          [x|x <- [1..10], odd x],
          [(x,y)|x <-[1..5], let y=1]
        )


{-

        f :: BOOL -> BOOL
        f x = not x
-}
