# Lab prompts

All prompts for the labs so far, ready to paste into OpenCode. Every lab follows the same rhythm:

1. **Specify:** paste the prompt. Use *Plan* mode first (`Shift+Tab` in the terminal, `Tab` in the desktop app), read the plan, then switch to *Build*.
2. **Let the agent work:** read the script before you let it run.
3. **Verify:** answer the questions under each prompt yourself. Do not ask the agent: the point is to check its work against something independent (the help page, a hand calculation, a known value).

After each lab, add one line to your `log.md`: something the agent got wrong, or claimed to have done, and how you caught it.

The data for Modules I and II are in `data_2011-07-26.dta`, the replication data for Goldsmith & Horiuchi (2012).

---

## Session 1: Causal Identification and Inference

### Lab 1: getting set up

Open the **Terminal** tab in RStudio and type `opencode`. The free models work straight away. To use Claude, GPT or Gemini instead, type `/connect`. Then:

```text
List the files in this project and say what each one is for.
```

```text
Run Rscript -e "sessionInfo()" and tell me which version of R you found.
```

Then copy the course `AGENTS.md` into your project folder and create an empty `log.md`.

**Checkpoint:**

- [ ] R and RStudio installed and opening without errors
- [ ] A project folder for the course, with `getwd()` pointing at it
- [ ] OpenCode running, having listed your project files
- [ ] `AGENTS.md` and an empty `log.md` in the project
- [ ] `tidyverse`, `haven` and `broom` installed, and loaded by you with `library()`

### Lab 2: simulating distributions

```text
Write scripts/lab2.R. Draw 1,000 values from a bell curve centred on 50 with standard deviation 10; report their average, standard deviation and share within 10 of 50; plot a histogram. Then draw 20 values, three times, and report each average. Run it.
```

Then:

```text
Simulate how often 60 or more of 216 states would sign an agreement if each signs with a 28% chance.
```

**Verify, without asking the agent:**

1. Open the script. Which function draws the data? Check its arguments against `?rnorm`: did 10 go in as the standard deviation, or as something else?
2. Compare the share within 10 of 50 to the two thirds we expect. Why is it not exactly two thirds?
3. Why do the three averages from 20 values differ so much more than the average from 1,000?
4. Check the simulated share of "60 or more" against the exact value: `1 - pbinom(59, 216, 0.28)`.

### Lab 3: averages on real data

*Not reached in class. Covered by Lab A in Session 2.*

```text
Treat the observed values of unvoting in data_2011-07-26.dta as a population. Draw 2,000 random samples of 10 states, plot the averages of those samples, and report how spread out they are (standard deviation). Repeat with samples of 40. Run it.
```

**Verify:**

1. How many states have a value for `unvoting`? Did the agent drop the missing ones, and tell you?
2. Can the same state appear twice in one sample? Would it matter here?
3. Is there a `set.seed()`? Run it twice: same numbers?
4. Quadrupling the sample should halve the spread. Does it? Check the agent's numbers against `sd(gh$unvoting, na.rm = TRUE) / sqrt(10)` and `/ sqrt(40)`.

---

## Session 2: Confidence Intervals and Hypothesis Tests

### Lab 1: what did you find?

Review the script the agent wrote for Lab 2 of Session 1. Five questions:

1. **Did it do everything it was asked?** Compare the script, step by step, with the prompt. Anything missing, anything extra?
2. **Do the arguments mean what we meant?** Pick one function and check it against its help page (`?rnorm`).
3. **What happened to the rows?** Is any case dropped, filtered or ignored, and does the script say so?
4. **Is the randomness under control?** A `set.seed()`? How many draws? With or without replacement?
5. **Do the numbers pass a sanity check** against something you know independently?

### Lab A: standard errors two ways

```text
Write scripts/lab_se.R. Treat the observed values of unvoting in data_2011-07-26.dta as a population. Draw 2,000 samples of 10 states and 2,000 of 40; plot the averages and report their standard deviation. Compare with the formula sd/sqrt(n). Repeat for the share signing an Article 98 agreement (article98). Run it.
```

**Verify, without asking the agent:**

1. How many states have a value for `unvoting`? Did the agent say how many it dropped, and do you know *who* they are?
2. Is there a `set.seed()`? Are samples drawn with or without replacement?
3. Does four times the sample halve the spread? Compare with `sd(gh$unvoting, na.rm = TRUE) / sqrt(40)`. If they differ, explain why before calling it a bug.
4. Are the averages centred on the population average (34.6)?

### After the session: annotated scripts and a new AGENTS.md

**Annotated Lab A scripts.** Four of you sent in your Lab A scripts. Each one is annotated line by line: what every line does, points to check (red) and things done well (green). Click to read them in your browser (or download the `.html` files from this repository and open them locally):

- [lab_se_Ikram_annotated.html](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Ikram_annotated.html)
- [lab_se_Samuele_annotated.html](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Samuele_annotated.html)
- [lab_se_Ksenia_annotated.html](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Ksenia_annotated.html)
- [lab_se_Matilde_annotated.html](https://htmlpreview.github.io/?https://github.com/KevinKoehlerSSSA/Quant_PhD/blob/main/lab_se_Matilde_annotated.html)

Read them side by side: the same prompt produced four different scripts. Two drew states without replacement, two with replacement, and that is why their spreads at n = 40 differ from `sd/sqrt(n)` in different ways.

**New AGENTS.md.** The scripts were far more complicated than the task. The updated [AGENTS.md](AGENTS.md) tells the agent to write simple code: no functions of its own, no loops over variables or settings, no lists, one block per variable, plain output and short comments. It ends with two complete example scripts, one to imitate and one to avoid. Download it, replace the copy in your project folder, and type `/new` so OpenCode reads it.

---

## Sessions 6–7: Panel and Multilevel Data

Two prepared data files, in this repository (download them into your project's `Data/` folder): `ajry_analysis.csv` (Lab A: Acemoglu, Johnson, Robinson & Yared 2008, "Income and Democracy", 945 country-periods, ready to use) and `polls88.csv` (Lab B: the last CBS/New York Times poll before the 1988 US presidential election, 2,193 respondents in 49 states; Gelman & Hill 2007, ch. 14, data from Gelman's ARM website).

### Lab A: three models, one table

```text
Write scripts/lab_panel.R. Load Data/ajry_analysis.csv (Acemoglu et al. 2008): one row per country and five-year period; democracy is Freedom House political rights (0-1), income_lag is log GDP per capita in the previous period. Report how much of the variance of democracy and of income_lag lies between countries and how much within countries. Then regress democracy on income_lag three ways (pooled OLS, random effects and country fixed effects) and report the three coefficients in one table. Run it.
```

**Verify, without asking the agent:**

1. 945 rows, 150 countries? Within share: democracy 27%, income 9%.
2. Pooled 0.236, random effects 0.184, fixed effects 0.087?

**Explain, in your own words, one sentence each:**

3. What comparison does each model make? Why is RE between the other two, and closer to pooled?
4. Which number would you report to answer AJRY's question, and what does it mean in words?

### Lab B: three models, one poll (Gelman & Hill 2007, ch. 14)

```text
Write scripts/lab_multilevel.R. Load Data/polls88.csv (last CBS/NYT poll before the 1988 election; Gelman & Hill 2007, ch. 14): bush (1 Bush, 0 Dukakis, missing = undecided: drop), state, state_abbr, black, female. Report respondents, states, and the fewest and most per state. Fit three logistic regressions of bush on black and female: (1) complete pooling, no state information; (2) no pooling, with state dummies; (3) partial pooling, an intercept varying by state (lme4). One table: black and female with SEs for all three; the SD of the state intercepts in (3). For a non-black man, predicted P(Bush) in VT, UT, MD, NY and TN under each model, with each state's respondents. Run it.
```

**Replicate (model 3 against the book):**

1. 2,015 respondents, 49 states (2–190 each)?
2. Intercept 0.45 (0.10); black −1.74 (0.21); female −0.10 (0.10)?
3. SD of the state intercepts 0.41?

**Compare, in words:**

4. Why does the black coefficient change across the models?
5. Vermont (2 of 2) and Utah (11 of 11): what does no pooling predict? Look at its standard errors.
6. Which state estimates would you publish?
7. When is complete pooling enough?
