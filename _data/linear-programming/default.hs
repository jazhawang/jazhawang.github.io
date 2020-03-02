import Numeric.LinearProgramming

-- maximize 4x_1 - 3x_2 + 2x_3
prob = Maximize [4, -3, 2]

constr1 = Sparse [ [2#1, 1#2] :<=: 10
                 , [1#2, 5#3] :<=: 20
                 ]

main = print $ simplex prob constr1 [] 