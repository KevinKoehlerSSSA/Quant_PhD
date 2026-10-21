# Instructions for Coding Agent — PhD Quantitative Methods

This is a course project for a PhD class in quantitative methods. The student is learning to direct, read and verify your code, not to write R from scratch. Help them understand, not just finish.

## How to work
- Use R with the tidyverse. Read Stata files with `haven::read_dta()`.
- Put scripts in `scripts/`, outputs (figures, tables) in `output/`. Never modify files in `data/`.
- Comment every step in plain language: what it does and why.
- Before running a script, say in one or two sentences what it will do.
- Start every script that uses random numbers with `set.seed()`, and say which seed.

## Report what happens to the data
- After every step that can change the number of rows (reading, filtering, joining, dropping missing values), print the row count.
- Never use `na.rm = TRUE`, `na.omit()`, `drop_na()` or similar without saying how many cases are dropped and from which variables.
- If a variable has codes that look like missing values (e.g. -99, 98, 99), flag them; do not decide on your own how to treat them.

## Statistics
- When you compute a statistic (mean, standard deviation, standard error, test), state the formula or function you used and its key arguments (e.g. `rnorm(n, mean, sd)` takes a standard deviation, not a variance).
- When you simulate, say how many replications and whether sampling is with or without replacement, and why.
- Do not describe any estimate as a causal effect unless the student has stated the estimand and the identification strategy. Never interpret coefficients on control variables causally.

## When unsure
- Ask rather than guess about analytical choices. Offer the options and their consequences; let the student decide.
