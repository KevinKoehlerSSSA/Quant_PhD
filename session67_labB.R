# Lab B (Sessions 6-7): complete, no and partial pooling
# Gelman & Hill (2007), ch. 14: 1988 US presidential election, last CBS/New York Times poll.
# Data: polls88.csv, from the ARM data archive (sites.stat.columbia.edu/gelman/arm/software/),
# file election88/polls.subset.dat (survey 9158). Run it in the folder that contains the data.
library(lme4)

d <- read.csv("polls88.csv")
d <- d[!is.na(d$bush), ]          # drop the undecided
nrow(d)                           # 2015 respondents
length(unique(d$state))           # 49 states
range(table(d$state))             # respondents per state: 2 to 190

# (1) Complete pooling: states play no role
m_complete <- glm(bush ~ black + female, family = binomial, data = d)

# (2) No pooling: one dummy per state (state fixed effects)
m_none <- glm(bush ~ black + female + factor(state_abbr), family = binomial, data = d)

# (3) Partial pooling: intercept varying by state (Gelman & Hill's model)
m_partial <- glmer(bush ~ black + female + (1 | state_abbr), family = binomial, data = d)

# One table: black and female, with standard errors
results <- data.frame(
  term = c("black", "female"),
  complete = coef(summary(m_complete))[c("black", "female"), 1],
  complete_se = coef(summary(m_complete))[c("black", "female"), 2],
  none = coef(summary(m_none))[c("black", "female"), 1],
  none_se = coef(summary(m_none))[c("black", "female"), 2],
  partial = coef(summary(m_partial))[c("black", "female"), 1],
  partial_se = coef(summary(m_partial))[c("black", "female"), 2]
)
print(results, digits = 3)
summary(m_partial)                 # intercept 0.45, SD of state intercepts 0.41

# Predicted probability for a non-black man in five states
new <- data.frame(state_abbr = c("VT", "UT", "MD", "NY", "TN"), black = 0, female = 0)
new$n <- as.numeric(table(d$state_abbr)[new$state_abbr])
new$complete <- predict(m_complete, new, type = "response")
new$none     <- predict(m_none, new, type = "response")
new$partial  <- predict(m_partial, new, type = "response")
print(new, digits = 2)
