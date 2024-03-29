% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot_top_currencies}
\alias{plot_top_currencies}
\title{Plot The Price of the Largest Market Cap Cryptocurrencies (API Key required)}
\usage{
plot_top_currencies(currency = "USD", k = 5, bar_color = "grey")
}
\arguments{
\item{currency}{currency code (default is 'USD')}

\item{k}{the number of top cryptocurrencies to plot (default is 5)}

\item{bar_color}{a valid color name or hexadecimal color code (default is 'grey')}
}
\value{
A ggplot of top Cryptocurrencies based on their rank (Market Cap)
}
\description{
Plot The Price of the Largest Market Cap Cryptocurrencies (API Key required)
}
\examples{
\dontrun{
plot_top_currencies('EUR')
plot_top_currencies('GBP')
}
}
\concept{Plotting}
