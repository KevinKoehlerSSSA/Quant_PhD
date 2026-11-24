# Lab A (Sessions 6-7): pooled, random and fixed effects
# Data: ajry_analysis.csv (Acemoglu, Johnson, Robinson & Yared 2008, "Income and Democracy",
# AER 98 (3): 808-42), prepared for the lab. Run it in the folder that contains the data.
library(plm)
library(lmtest)

d <- read.csv("ajry_analysis.csv")
nrow(d)                   # 945 rows
length(unique(d$code))    # 150 countries

# Share of the variance that is within countries
# (each row minus its country's average, compared with the total)
dem_mean <- ave(d$democracy, d$code)
inc_mean <- ave(d$income_lag, d$code)
var(d$democracy - dem_mean) / var(d$democracy)     # democracy: within share
var(d$income_lag - inc_mean) / var(d$income_lag)   # income: within share

pdf <- pdata.frame(d, index = c("country", "year"))

# Models
pooled <- plm(democracy ~ income_lag, data = pdf, model = "pooling")
random <- plm(democracy ~ income_lag, data = pdf, model = "random")
fixed  <- plm(democracy ~ income_lag, data = pdf, model = "within")

# Estimate, SE, and p-value with SEs clustered by country
get_row <- function(m, term = "income_lag") {
  ct <- coeftest(m, vcov = vcovHC(m, method = "arellano",
                                  type = "HC1", cluster = "group"))
  ct[term, c(1, 2, 4)]
}

results <- data.frame(
  model = c("Pooled", "Random effects", "Fixed effects"),
  t(sapply(list(pooled, random, fixed), get_row))
)
names(results)[2:4] <- c("income_lag", "robust_se", "p_value")

print(results, digits = 3)
