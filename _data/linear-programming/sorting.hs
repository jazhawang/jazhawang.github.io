import Numeric.LinearProgramming
import Data.List.Split (chunksOf)
import Data.List (transpose)

{- Performs sorting via Linear Programming -}
sortLP :: [Double] -> [Double]
sortLP arr = case simplex prob constr [] of
    Optimal (_, result) -> toList arr result
    _                   -> error "Yikes"
    where prob   = sortingProb arr
          constr = doublyStochasticConstraints dim
          dim    = length arr

{- Sparse constaints for doubly stochastic matrices -}
doublyStochasticConstraints :: Int -> Constraints    
doublyStochasticConstraints dim = 
    Sparse $ map (:==: 1) (mat ++ transpose mat)
    where mat = chunksOf dim $ map (1.0#) [1..dim*dim]

{- The sorting optimization problem  -}
sortingProb :: [Double] -> Optimization
sortingProb arr = 
    Maximize [(fromIntegral i) * j | i <- [1..length arr], j <- arr]

{- Converts the output of the LP solver to a sorted array.
   Basically dot product. -}
toList :: [Double] -> [Double] -> [Double]
toList arr result = dot (chunksOf (length arr) result) arr
    where dot m x = map (\row -> sum (zipWith (*) x row)) m

arr = [35.0, 1.0,22.0, 10.0, 33.0, 2.0, 1.0,3,02,44.4,233.0,65.5]
main = print $ sortLP arr