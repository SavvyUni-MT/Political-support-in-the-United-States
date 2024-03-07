#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
library(testthat)
# [...UPDATE THIS...]

#### Test data ####
simulated_data <- read_csv("data/simulated_data/simulated_data.csv")

test_that("Check class",{
  expect_type(simulated_data$education, "character")
  expect_type(simulated_data$gender, "character")
  expect_type(simulated_data$supports_biden,"character")
})


test_that("Check number of observations is correct", {
  expect_equal(nrow(simulated_data), 1000)
})

test_that("Check categories", {
  expect_contains(simulated_data$gender, c("Male","Female"))
})
