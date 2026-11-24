# Sessions 6-7, Part 5: students in schools (invented data, simulated so that we know the truth)
# 40 schools, 606 students, 3,030 monthly tests. Better-equipped schools adopt the new
# maths method earlier AND score higher anyway. True average effect: about 2.2 points.
# Run it in the folder that contains schools.csv.
library(lme4)

d <- read.csv("schools.csv")
nrow(d)                         # 3030 tests
length(unique(d$school))        # 40 schools

# Complete pooling: one line for all (biased upward, about 6.2)
lm(score ~ treated, data = d)

# No pooling: one intercept per school, school fixed effects (about 2.2)
lm(score ~ treated + factor(school), data = d)

# Partial pooling: varying intercepts (about 2.3)
lmer(score ~ treated + (1 | school), data = d)

# Partial pooling: varying intercepts and slopes (average about 2.3, SD about 1.4)
lmer(score ~ treated + (1 + treated | school), data = d)

# Three levels: tests in students in schools
lmer(score ~ treated + (1 | school / student), data = d)
