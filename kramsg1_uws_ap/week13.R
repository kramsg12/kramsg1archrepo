d <- read.csv("epiSEIHCRD_combAge.csv")
d$t <- as.Date(d$t, origin = "2020-03-01")
library("ggplot2")
library("tidyverse")
dJD <- d %>%  filter ((t >= "2020-7-01") & (t <= "2020-12-31"))
g <- ggplot(data = dJD) +
  geom_line(mapping = aes(x = t, y = H), colour = "red") + labs(x = "Date", y = "Number of beds needed", title = "Hospital beds needed in syd")

print(g)

