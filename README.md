# matrix_multiplier_v2
A fast hardware implementation of a 16-bit matrix multiplier that multiplies 4x4 and 4x1 matrices.

# How is it done?
Two optimization techniques were used for this matrix multiplier:
1. Loop unrolling
2. Operation chaining

## Loop unrolling
Instead of computing for each row in the resulting matrix for each clock cycle, all rows in the resulting matrix are computed within a clock cycle. 

## Operation chaining
Instead of doing multiplication for one clock cycle and then addition for another cycle, both operations can be combined into a single clock cycle.
