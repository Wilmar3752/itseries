#' Plot function
#' 
#' This function creates a line plot of x versus tn and adds two custom axes.
#' 
#' @param x A vector of x values.
#' @param tn A vector of tn values.
#' 
#' @examples
#' # Generate some data
#' x <- rnorm(100)
#' tn <- seq(1, 100)
#' # Use the function
#' plot.its(x, tn)
#' @export
plot_its <- function(x, tn) {
  plot(tn, x, pch = 20, type = "l", xaxt = "n",
       xlab = expression(t[n]), ylab = expression(X[t[n]]))
  axis(3, at = tn, col = "red", labels = FALSE)
  axis(1, at = seq(0, (max(tn) + 50), 50), col = "black")
}