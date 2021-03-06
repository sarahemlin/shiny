# Use testthat just for expectations
library(testthat)

testServer('../..', {
  # Set the `size` slider and check the output
  session$setInputs(size = 6)
  expect_equal(output$sequence, "1 2 3 4 5 6")

  session$setInputs(size = 12)
  expect_equal(output$sequence, "1 2 3 4 5 6 7 8 9 10 11 12")
})
