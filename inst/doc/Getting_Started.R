## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(coinmarketcapr)
get_valid_currencies()

## -----------------------------------------------------------------------------
library(coinmarketcapr)
coinmarketcapr::setup()
get_global_marketcap()

## -----------------------------------------------------------------------------
library(coinmarketcapr)
names(get_crypto_listings())

## ---- fig.cap='Plotting Top 5 Cryptocurrencies', fig.width=6, fig.height=6----
library(coinmarketcapr)
plot_top_currencies('USD',5)

## ---- fig.cap='Plot with Themes', fig.width=6, fig.height=6-------------------
library(ggthemes)
plot_top_currencies() + 
        theme_economist()

## ---- fig.cap='Cryptocurrencies Price in USD Histogram', fig.width=6, fig.height=6----
library(coinmarketcapr)
library(dplyr)
library(ggplot2)

get_crypto_listings() %>% 
        slice(1:30) %>% 
        mutate(price_usd = as.numeric(price_usd)) %>% 
        ggplot() + geom_histogram(aes(price_usd), binwidth = 100) +
        ggtitle('Cryptocurrencies Price in USD Histogram')

