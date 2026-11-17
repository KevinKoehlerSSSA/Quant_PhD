library(haven)

setwd('/Users/kevin/SSSUP Dropbox/Kevin Koehler/Teaching/AY_26_27/PhD Quant/Data')

gh <- read_dta("data_2011-07-26.dta")
s <- subset(gh, keep == 1) 

# Variables as in the paper
s$opinion <- rowMeans(cbind(s$pos1 - s$neg1, s$pos2 - s$neg2,
                            s$pos3 - s$neg3) / 100, na.rm = TRUE)
s$democ <- s$pr + s$cl # Freedom House sum
s$afgh <- as.numeric(s$troops_afgh > 0) # Afghanistan: yes/no
s$iraq <- as.numeric(s$troops_iraq > 0) # Iraq: yes/no

# Model 2 as a straight line (LPM)
lpm <- lm(iraq ~ opinion + afgh + icc + s_lead + nato + aid_m + aid_e +
            lntrade + lngdppc + democ + muslimpct + europe, data = s)

# Predicted probability for each country, sorted
s$pred <- fitted(lpm)
s <- s[order(s$pred), ]

# Plot: black = sent troops, grey = did not
plot(s$pred, pch = 19, col = ifelse(s$iraq == 1, "black", "grey60"),
     xlab = "58 countries, sorted", ylab = "Predicted probability")
abline(h = c(0, 1), lty = 2)

s$country[s$pred < 0 | s$pred > 1] 
