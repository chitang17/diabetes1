test_that("test if insulindose function is correct", {
  expect_equal(insulindose(170,60), 6)
}
)
test_that("test if insulindose function is correct", {
  expect_equal(insulindose(170,60), 9)
}
)

test_that("test if insulindose2 function is correct", {
  expect_equal(insulindose2(160,54,50), 7)
}
)
test_that("test if insulindose2 function is correct", {
  expect_equal(insulindose2(160,54,50), 10)
}
)