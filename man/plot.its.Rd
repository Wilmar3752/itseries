\name{plot.its}
\alias{plot.its}
\title{Plot ITS Data}
\description{
  Plots Irregularly Spaced Time Series data with specified parameters.
}
\usage{
  plot.its(x, tn)
}
\arguments{
  \item{x}{Vector of data values.}
  \item{tn}{Vector of time points.}
}
\details{
  The function plots the Irregular Time Series data using the specified parameters. It creates a scatter plot of the data points with connected lines, customizes the axes, and labels the x-axis and y-axis.
}
\examples{
  x <- c(1, 2, 3, 4, 5)
  tn <- c(0, 1, 2, 3, 4)
  plot.its(x, tn)
}
