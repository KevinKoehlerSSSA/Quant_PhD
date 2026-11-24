# Lab A (Sessions 6-7): pooled, random and fixed effects
# Data: ajry_analysis.csv (Acemoglu, Johnson, Robinson & Yared 2008, "Income and Democracy",
# AER 98 (3): 808-42), prepared for the lab. Run it in the folder that contains the data.
library(plm)

d <- read.csv("ajry_analysis.csv")
nrow(d)                   # 945 rows
length(unique(d$code))    # 150 countries

# Share of the variance that is within countries
# (each row minus its country's average, compared with the total)
dem_mean <- ave(d$democracy, d$code)
inc_mean <- ave(d$income_lag, d$code)
var(d$democracy - dem_mean) / var(d$democracy)     # democracy: within share
var(d$income_lag - inc_mean) / var(d$income_lag)   # income: within share

# Three models of democracy on last period's income
pooled <- plm(democracy ~ income_lag, data = d, index = c("code", "year"), model = "pooling")
random <- plm(democracy ~ income_lag, data = d, index = c("code", "year"), model = "random")
fixed  <- plm(democracy ~ income_lag, data = d, index = c("code", "year"), model = "within")

# One table
results <- data.frame(
  model = c("Pooled", "Random effects", "Fixed effects"),
  income_lag = c(coef(pooled)["income_lag"], coef(random)["income_lag"], coef(fixed)["income_lag"])
)
print(results, digits = 3)
