


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
add5 <- function(a,b) {
  if(is.numeric(a) && is.numeric(b)) {
  a + b
  } else {
    warning("Looks like one of those two inputs is not a number!")
  }
}

