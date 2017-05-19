
# DRY principle
# if you repeat the same few lines of code in a script
# make a function

# Keep a function small.

name_of_a_function <- function(inputs) {
  # do things
}


add <- function()
{

}

# ----------------

a <- 1


add2 <- function() {
z <- 15
a
list(a, z)
}


add2()

# passing arguments to functions

add3 <- function(a = 1, b = 2, resample = TRUE) {
   a + b
}

add3(4,5)

num_1 <- 15
num_2 <- 45

add3(num_1, num_2)


add4 <- function(a = 1, b =2, resample = FALSE ) {
  if(!resample) {
    a - b 
  } else {
    a + b 
  }
}

add4(resample = TRUE)





#' add5: Adds two numbers
#'
#' @param a An input integer
#' @param b Another input integer
#'
#' @return integer
#' @export
#'
#' @examples
#' add5(1,2)
add5 <- function(df, a,b) {
  data <- knitr::kable()
  if(is.numeric(a) && is.numeric(b)) {
    a + b
  } else {
    warning("Looks like one of those two inputs is not a number!")
  }
  
}

## How to read functions from one script into another


source("pathogen_project_functions.R")

df <- read_data("input.csv")
results <- karthik_model(df)
kr_plot(results)

add5()
expect_that(add5(1,3), 3)
expect_error(add5("a", "b"))

















