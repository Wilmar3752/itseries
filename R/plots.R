plot.its <- function(x, tn) {
  plot(tn, x, pch = 20, type = "l", xaxt = "n",
       xlab = expression(t[n]), ylab = expression(X[t[n]]))
  axis(3, at = tn, col = "red", labels = FALSE)
  axis(1, at = seq(0, (max(tn) + 50), 50), col = "black")
}