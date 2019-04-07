library("wedge")
library("testthat")

test_that("Miscellaneous things", {

        dx <- as.kform(1)
        dy <- as.kform(2)
        dz <- as.kform(3)

        expect_true(is.empty(dx %^% dx))
        expect_true(is.empty(dy %^% dy))
        expect_true(is.empty(dz %^% dz))
      
        expect_true(dx %^% dy %^% dz == dy %^% dz %^% dx)
        expect_true(dx %^% dy %^% dz == dz %^% dx %^% dy)
        expect_true(is.empty(dx %^% dy %^% dz - dy %^% dz %^% dx))
        expect_true(is.empty(dx %^% dy %^% dz - dz %^% dx %^% dy))
        expect_true(is.empty(dx %^% dy %^% dz + dx %^% dz %^% dy))

        expect_true(is.empty(dx %^% dy %^% dz %^% dx))

        expect_true( (dx %^% dy) %^% dz == dx %^% (dy %^% dz))

        expect_true(dx %^% dy %^% dz + dx %^% dy %^% dx == dx %^% dy %^% dz)

        expect_true(nrow(index(kform_general(4,2))) == 6)
        expect_true(kform_general(4,2) + dx %^% dx == kform_general(4,2))

        expect_true(is.empty(grad(1:5) %^% grad(1:5)))
        expect_false(is.empty(grad(1:5) %^% grad(1:6)))

    
})